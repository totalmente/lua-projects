grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.__namecall
grm.__namecall = newcclosure(function(self, ...)
	local args = {...}
	if tostring(args[1]) == "TeleportDetect" then
		return
	elseif tostring(args[1]) == "CHECKER_1" then
		return
	elseif tostring(args[1]) == "CHECKER" then
		return
	elseif tostring(args[1]) == "GUI_CHECK" then
		return
	elseif tostring(args[1]) == "OneMoreTime" then
		return
	elseif tostring(args[1]) == "checkingSPEED" then
		return
	elseif tostring(args[1]) == "BANREMOTE" then
		return
	elseif tostring(args[1]) == "PERMAIDBAN" then
		return
	elseif tostring(args[1]) == "KICKREMOTE" then
		return
	elseif tostring(args[1]) == "BR_KICKPC" then
		return
	elseif tostring(args[1]) == "BR_KICKMOBILE" then
		return
	end
	return old(self, ...)
end)
function Fly()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Tool0 = Instance.new("Tool")
	LocalScript1 = Instance.new("LocalScript")
	Sound2 = Instance.new("Sound")
	Sound3 = Instance.new("Sound")
	Animation4 = Instance.new("Animation")
	RemoteEvent5 = Instance.new("RemoteEvent")
	Animation6 = Instance.new("Animation")
	Tool0.Name = "Fly"
	Tool0.Parent = mas
	Tool0.CanBeDropped = false
	Tool0.RequiresHandle = false
	LocalScript1.Name = "local"
	LocalScript1.Parent = Tool0
	table.insert(cors,sandbox(LocalScript1,function()
		wait();
		local l__LocalPlayer__1 = game.Players.LocalPlayer;
		while true do
			wait();
			if l__LocalPlayer__1.Character then
				break;
			end;
		end;
		local l__Character__2 = l__LocalPlayer__1.Character;
		local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
		local l__Parent__4 = script.Parent;
		local u1 = false;
		local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
		local u3 = nil;
		local u4 = nil;
		local u5 = false;
		local u6 = false;
		local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
		l__Parent__4.Equipped:connect(function(p1)
			Sound3:Play()
			p1.TargetFilter = workspace;
			u1 = true;
			u2:Play();
			u3 = Instance.new("BodyGyro");
			u3.Name = "NA";
			u3.Parent = l__Character__2.HumanoidRootPart;
			u3.MaxTorque = Vector3.new(30000, 0, 30000);
			u3.P = u3.P * 5;
			u3.CFrame = CFrame.new(0, 0, 0);
			u4 = Instance.new("BodyPosition");
			u4.Name = "NA";
			u4.Parent = l__Character__2.HumanoidRootPart;
			u4.MaxForce = Vector3.new(60000, 60000, 60000);
			u4.Position = l__Character__2.HumanoidRootPart.Position;
			p1.Button1Down:connect(function()
				Sound2:Play()
				if u5 then
					return;
				end;
				u5 = true;
				u6 = true;
				u7:Play();
				local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
				v5.MaxForce = Vector3.new(50000, 50000, 50000);
				v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
				u3.MaxTorque = Vector3.new(30000, 30000, 30000);
				u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
				u4.Parent = nil;
				l__Humanoid__3.AutoRotate = false;
				if u2.IsPlaying then
					u2:Stop();
				end;
				while u6 do
					v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
					u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
					game:GetService("RunService").Heartbeat:wait();		
				end;
				l__Humanoid__3.AutoRotate = true;
				v5:Destroy();
				if u4 ~= nil then
					u4.Position = l__Character__2.HumanoidRootPart.Position;
					u4.Parent = l__Character__2.HumanoidRootPart;
				end;
				if u3 ~= nil then
					u3.MaxTorque = Vector3.new(30000, 0, 30000);
					u3.CFrame = CFrame.new(0, 0, 0);
				end;
				u6 = false;
				if u1 then
					u2:Play();
				end;
				u7:Stop();
				wait(0.3);
				u5 = false;
			end);
			p1.Button1Up:connect(function()
			    Sound2:Stop()
				Sound3:Play()
				u6 = false;
			end);
		end);
		l__Parent__4.Unequipped:connect(function()
		    Sound2:Stop()
			Sound3:Play()
			u1 = false;
			u6 = false;
			u3:Destroy();
			u3 = nil;
			u4:Destroy();
			u4 = nil;
			if u2.IsPlaying then
				u2:Stop();
			end;
		end);
	end))
	Sound2.Name = "Flapping"
	Sound2.Parent = LocalScript1
	Sound2.Looped = true
	Sound2.MaxDistance = 100
	Sound2.Pitch = 1.5
	Sound2.PlaybackSpeed = 1.5
	Sound2.SoundId = "rbxassetid://1462718291"
	Sound3.Name = "Activation"
	Sound3.Parent = LocalScript1
	Sound3.MaxDistance = 100
	Sound3.SoundId = "rbxassetid://2952274135"
	Sound3.Volume = 0.69999998807907
	Animation4.Name = "Hover"
	Animation4.Parent = LocalScript1
	Animation4.AnimationId = "rbxassetid://3541114300"
	RemoteEvent5.Name = "re"
	RemoteEvent5.Parent = LocalScript1
	Animation6.Name = "Fly"
	Animation6.Parent = LocalScript1
	Animation6.AnimationId = "rbxassetid://3541044388"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end
game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
wait(1)
Fly()
game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
	wait(1)
	Fly()
end)
