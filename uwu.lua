local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local autoshooter = false

game:GetService("RunService").Heartbeat:Connect(function()
    if autoshooter == true then
        if LocalPlayer.Character:FindFirstChildOfClass('Tool') then
            LocalPlayer.Character:FindFirstChildOfClass('Tool'):Activate()
        end
    end
end)

local autoshoot = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
autoshoot.Name = "sen qt"
autoshoot.Parent = game.CoreGui
autoshoot.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = autoshoot
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.133798108, 0, 0.20107238, 0)
Frame.Size = UDim2.new(0, 202, 0, 70)
Frame.Active = true
Frame.Draggable = true
Frame.Position = UDim2.new(0.5, -Frame.AbsoluteSize.X / 2, 0, -Frame.AbsoluteSize.Y / 2)
Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(TopContainer)
UICorner.Parent = Frame
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 5.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0792079195, 0, 0.18571429, 0)
TextButton.Size = UDim2.new(0, 170, 0, 44)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Toggle AutoShoot"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 11.000
TextButton.TextWrapped = true
local state = true
TextButton.MouseButton1Click:Connect(function()
    state = not state
    if not state then
        TextButton.Text = "autoshoot on"
        autoshooter = true
    else
        TextButton.Text = "autoshoot off"
        autoshooter = false
    end
end)
UICorner_2.Parent = TextButton
