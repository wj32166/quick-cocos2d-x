
require("config")
require("framework.init")
require("framework.client.init")

-- define global module
game = {}

function game.startup()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")

    game.enterMainScene()
end

function game.exit()
    CCDirector:sharedDirector():endToLua()
end

function game.enterMainScene()
    display.replaceScene(require("scenes.MainScene").new(), "fade", 0.6, display.COLOR_WHITE)
end
