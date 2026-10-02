-- // would use wax (lune (Rokit + rojo) plugin or wtv) but im too bothered to set it up here
local games: string = "https://raw.githubusercontent.com/xxpwnxxx420lord/kudus-mini/main/games/"

-- // i kinda lied with the variable name but its fineeeeeeeeeeeeee
local gameID: number = game.PlaceId

local req = (http and http.request) or http_request or request

-- // cool loader stuff now
local res = req({
    Url = games .. tostring(gameID),
    Method = "GET"
})

if not res.Success then
    setclipboard('https://discord.gg/rqstYEdjJy')
    game.Players.LocalPlayer:Kick("There seemed to be some sort of error? If you keep getting trouble please do a ticket in the kudus discord server which was copied to your clipboard!")
end

loadstring(res.Body)()