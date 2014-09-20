-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local screenW, screenH = display.contentWidth, display.contentHeight

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

group = display.newGroup()

local paint = {
    type = "gradient",
    color1 = { 0.5, 0.5, 0.5 },
    color2 = { 1, 0, 0, 0 },
    direction = "down"
}


local bg = display.newRect( screenW*0.5, screenH*0.5, screenW, screenH)
bg:setFillColor( paint )
group:insert(bg)

local rain = require("rain")

local config = 	{	
		snow = true,
		speed = .5,
		floor = 0,
		length = 45,
		width = 2,
		radius = 4,
		alpha = 0.15,
		color = 1,
		angle = 80,
		count = 1000,
		silent = true }

rain.new(group, config)

-- Pause rain:
--rain.pause()

-- Resume rain:
rain.resume()