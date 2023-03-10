-- New example script written by wally
-- You can suggest changes with a pull request or something

--1

getgenv().versioncode = '#5b'
getgenv().azfake_version = 'v3 '..getgenv().versioncode

-- 1234


-- could make it so when on tp it does getgenv().premiumWhitelist = true


local dungeon_quest_games = {
    ["Dungeon Quest!"]=2414851778;
    ["Desert Temple"]=2606294912;
    ["Winter Outpost"]=2743806150;
    ["Trading Post"]=2779073290;
    ["testingArea"]=2886606697;
    ["Pirate Island"]=2988891534;
    ["King's Castle"]=3041739550;
    ["The Underworld"]=3119903031;
    ["Lobby 2"]=3220968688;
    ["Wave Defence"]=3220974599;
    ["Samurai Palace"]=3277965370;
    ["The Canals"]=3488584454;
    ["Ghastly Harbor"]=3737465474;
    ["Tutorial"]=3896361983;
    ["Steampunk Sewers"]=4113459044;
    ["raids"]=4286254333;
    ["Orbital Outpost"]=4628698373;
    ["EI hehe"]=4865331948;
    ["Volcanic"]=5281215714;
    ["Data Recovery Center"]=5829413559;
    ["Asset Holder"]=5990944244;
    ["Aquatic Temple"]=6216785535;
    ["Enchanted Forest"]=6878973814;
    ["vCaffy's Place Number: 227"]=7852284392;
    ["Halloween Boss"]=7852317824;
    ["Northern Lands"]=8376888496;
    ["Gilded Skies"]=11663047386;
    ["Krampus"]=11926349271;
}

-- getgenv().TableOfFunctions = {}


-- table to return a table


local azfake = {}

azfake.fireproximitypromt = function(prompt)
    if not prompt then 
        return error('Argument 1 is nil')
    elseif not prompt:IsA('ProximityPrompt') then 
        return error('Argument 1 Is not a Proximity Prompt')
    end
    prompt:InputHoldBegin()
end
azfake.find = function(dir,properties) -- big table containing dir
    local hasfound = false;
    local amountofproperties = #properties
    local propertiesfound = 0

    for _,v in next, dir do 
        if table.find(properties,v.Name) then 
            propertiesfound += 1
        end
    end
    if propertiesfound == amountofproperties then 
        hasfound = true 
    end
    return hasfound
end

azfake.asub = function(x,r,rs)
    local xs = x
    if x:find(r) then xs = string.gsub(x,r,rs) end
    return xs
end
azfake.qsub = function(x,r,rs)
    local xs = x
    -- if x:find(r) then xs = string.gsub(x,r,rs) end
    for i,v in next, r do 
        if x:find('{'..i..'}') then 
            xs = string.gsub(x,'{'..i..'}',v)
        end
    end
    return xs
end
azfake.findintable_v = function(table,i) -- it checks if the table content v s equal to i
    local found = false ;

    return found
end
azfake.findintable_i = function(table,i)
    local found = false ;
    for _,v in next, table do 
        if _ == i then 
            found = true;
        end
    end
    return found
end
-- print(azfake.qsub('holo is a {b} while yolo is a {r}',{val=b,val2})) -- theres already a roblox func for this
-- could metatable hook this call so putting b wouldnt need a string




-- azfake.repstring = {}
-- local function oncall(_,v)

-- end
-- setmetatable(azfake.repstring, {
--     __call = oncall
--  })


-- string.gsub takes paramater 1 2 and then 3 4 5 are all optional
-- so if 3 is a boolean, 4 is a table and you want to put arg 4 without 3 you can put the the arg4 first

-- azfake.repstring"{val}""

function azfakenotify(text, time)
    task.spawn(function()
        local function find(x) r = nil; pcall(function() r=x.Parent:FindFirstChild(x.Name) end); return r end

        -- local notification = Instance.new("ScreenGui")
        -- local MainFrame = Instance.new("Frame")
        -- local UIListLayout = Instance.new("UIListLayout")
        -- local MessageFrame = Instance.new("Frame")
        -- local TextButton = Instance.new("TextButton")
        -- local MessageLine = Instance.new("Frame")


        local notification = find(game.CoreGui:FindFirstChild('notification')) or Instance.new("ScreenGui")
        local MainFrame = find(notification:FindFirstChild('MainFrame')) or Instance.new("Frame",notification)
        local UIListLayout = find(MainFrame:FindFirstChild('UIListLayout')) or Instance.new('UIListLayout',MainFrame)
        local MessageFrame =  Instance.new("Frame", MainFrame) -- 
        local TextButton = Instance.new("TextButton", MessageFrame); 
        local MessageLine =  Instance.new("Frame", MessageFrame); 


        notification.Name = "notification"
        notification.Parent = game.CoreGui
        notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        MainFrame.Name = "MainFrame"
        MainFrame.Parent = notification
        MainFrame.AnchorPoint = Vector2.new(9.99999975e-05, 0)
        MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFrame.BorderSizePixel = 0
        MainFrame.Position = UDim2.new(0.779199064, 0, 0.925575197, 0)
        MainFrame.Size = UDim2.new(0.209408224, 0, 0.0514905155, 0)
        MainFrame.BackgroundTransparency = 1

        UIListLayout.Parent = MainFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
        UIListLayout.Padding = UDim.new(0.200000003, 0)

        MessageFrame.Name = "MessageFrame"
        MessageFrame.Parent = MainFrame
        MessageFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        MessageFrame.BorderSizePixel = 0
        MessageFrame.Position = UDim2.new(4.47058773, 0, 17.9736843, 0)
        MessageFrame.Size = UDim2.new(0.999999881, 0, 1.02631581, 0)

        -- TextButton.Visible = false;
        TextButton.Parent = MessageFrame
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.0336134471, 0, 0, 0)
        TextButton.Size = UDim2.new(0.966386497, 0, 1, 0)
        TextButton.Font = Enum.Font.Roboto
        TextButton.LineHeight = 0.800
        TextButton.Text = text
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 21.000
        TextButton.TextWrapped = true

        MessageLine.Name = "MessageLine"
        MessageLine.Parent = MessageFrame
        MessageLine.BackgroundColor3 = Color3.fromRGB(11, 157, 255)
        MessageLine.BorderSizePixel = 0
        MessageLine.Size = UDim2.new(0.0336134434, 0, 1, 0)

        -- Frame.Parent = notification
        -- Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        -- Frame.BackgroundTransparency = 1.000
        -- Frame.BorderSizePixel = 0
        -- Frame.Position = UDim2.new(0.988619149, 0, 0.924220204, 0)
        -- Frame.Size = UDim2.new(0, 0, 0, 29)
        TextButton.Visible =true
        TextButton.Text = text
        local situtated = time
        if situtated == 'untilClick' then 
            situtated = 'ifConnect'
        end
        task.wait(0.1)
        --Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
        local TitleBarWait = false
        if situtated == 'ifConnect' then 
            TextButton.MouseButton1Down:Connect(function()
                TitleBarWait = true
            end)
        else
            wait(situtated)
            TitleBarWait = true
        end
        TextButton.MouseButton1Down:Connect(function()
            TitleBarWait = true
        end)
        repeat task.wait() until TitleBarWait == true
        local bunda = Instance.new('Frame'); bunda.BackgroundTransparency = 1 bunda.Position = MainFrame.Position;bunda.Parent = notification;
        bunda.Size = UDim2.new(0, 200, 0, -150)
        MessageFrame.Parent = bunda
        MessageFrame:TweenPosition(UDim2.new(0,2000,0,0), "Out", "Sine", 1)
        task.wait(1.1)
        MessageFrame:Destroy()
        bunda:Destroy()
    end)
end


function Notify(titletxt, text, time)
    azfakenotify(text,time)
    local useold = false 
    if useold == true then 
        task.spawn(function()
            local function find(x) r = nil; pcall(function() r=x.Parent:FindFirstChild(x.Name) end); return r end
            local GUI = find(game.CoreGui:FindFirstChild('Notis')) or Instance.new("ScreenGui")
            local MainHolder = find(GUI:FindFirstChild('MainHolder')) or Instance.new("Frame",GUI)
            local Main =  Instance.new("Frame", MainHolder) -- 
            local title = Instance.new("TextButton", Main); title.Name = 'Title'
            local message =  Instance.new("TextButton", Main); message.Name = 'msg'
            local list = find(MainHolder:FindFirstChild('UIListLayout')) or Instance.new('UIListLayout',MainHolder)
    
            local coolFrame = Instance.new('Frame',Main);
            coolFrame.Size = UDim2.new(0, 5, 0, 75)
            coolFrame.BackgroundColor3 = Color3.fromRGB(0, 130, 255) --
            coolFrame.BorderSizePixel = 0
    
            MainHolder.BackgroundTransparency = 1;
            MainHolder.Name = 'MainHolder';
            MainHolder.Position = UDim2.new(0, 1580, 0, 980)
    
            list.SortOrder = Enum.SortOrder.LayoutOrder
            list.VerticalAlignment = Enum.VerticalAlignment.Bottom
    
            GUI.Name = "Notis"
            GUI.Parent = game.CoreGui
            Main.Name = "MainFrame"
            Main.BackgroundColor3 = Color3.fromRGB(0,0,0) --Color3.new(0.156863, 0.156863, 0.156863)
            Main.BorderSizePixel = 0
            Main.Position = UDim2.new(1, 5, 0, 50)
            Main.Size = UDim2.new(0, 330, 0, 75)
    
    
            title.BackgroundColor3 = Color3.new(0, 0, 0)
            title.BackgroundTransparency = 1
            title.Size = UDim2.new(1, 0, 0, 30)
            title.Font = Enum.Font.SourceSansSemibold
            title.Text = ''--titletxt
            title.TextColor3 = Color3.new(1, 1, 1)
            title.TextSize = 17
            
            message.BackgroundColor3 = Color3.new(0, 0, 0)
            message.BackgroundTransparency = 1
            --message.Position = UDim2.new(0, 0, 0, 30)
            message.Size = UDim2.new(1, 0, 1, -30)
            message.Font = Enum.Font.SourceSans
            message.Text = text
            message.TextColor3 = Color3.new(1, 1, 1)
            message.TextSize = 16
    
            local situtated = time
            if situtated == 'untilClick' then 
                situtated = 'ifConnect'
            end
            wait(0.1)
            --Main:TweenPosition(UDim2.new(1, -330, 0, 50), "Out", "Sine", 0.5)
            local TitleBarWait = false
            if situtated == 'ifConnect' then 
                message.MouseButton1Down:Connect(function()
                    TitleBarWait = true
                end)
            else
                wait(situtated)
                TitleBarWait = true
            end
            message.MouseButton1Down:Connect(function()
                TitleBarWait = true
            end)
            title.MouseButton1Down:Connect(function()
                TitleBarWait = true
            end)
            repeat task.wait() until TitleBarWait == true
            local bunda = Instance.new('Frame'); bunda.BackgroundTransparency = 1 bunda.Position = MainHolder.Position;bunda.Parent = GUI;
            bunda.Size = UDim2.new(0, 200, 0, -150)
            Main.Parent = bunda
            Main:TweenPosition(UDim2.new(0,2000,0,0), "Out", "Sine", 1)
            wait(1.1)
            message:Destroy();
            title:Destroy();
            Main:Destroy()
            bunda:Destroy()
        end)
    end
end






-- local function find(x) r = nil; pcall(function() r=x.Parent:FindFirstChild(x.Name) end); return r end
-- local AZFAKEPLAYER = find(game.Players:FindFirstChild('AZFAKE-PLAYER')) or Instance.new('Player',game.Players); AZFAKEPLAYER.Name = 'AZFAKE-PLAYER'
-- local AZFAKESERVER = find(game.Players:FindFirstChild('AZFAKE-SERVER')) or Instance.new('Player',game.Players); AZFAKESERVER.Name = 'AZFAKE-SERVER'
--first, get the class.
-- if syn then 

-- end
local loading = 0
local loadstop = false
getgenv()['IrisAd'] = true
task.spawn(function()
    while task.wait(0.01) do 
        if loadstop == false then 
            loading += 0.01
        else
            Notify('','Script loaded in '..tostring(loading):sub(1,3)..' seconds',5)
            break
        end
    end
end)
-- the time of reckoning has come, azfake, RISE!
-- could put games in a table and have functions for loading a game load('bloodlines')
-- check all games in table check if game using split -- table.split(v,'~')[2] 1 is id 2 is load, load([2])




local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
local KEYSAVE = loadstring(game:HttpGet('https://raw.githubusercontent.com/hairlinebrockeb/mandem/main/keys.lua'))()
function enc(data) -- This is base64, uncrackable security to make sure data do not get leaked
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
 end
 

function dec(data) -- This is base64, uncrackable security to make sure data do not get leaked
    --data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

repeat task.wait(); until game:IsLoaded()
--// Verification System
getgenv().loopsUnload = true

--if getgenv().loopsUnload == false then getgenv().loopsUnload = true end
-- 249, 2, 165 hot pink
local buasx  = {
    'ml_xy';
    'pallsbolls';
    'RulnIes';
    'kaunniii';
    'Vovka_Chan';
    'DumbLines';
    'UhY0uKnowUniql0';
    'LAYSWUKONG';
    'DlggaG';
    '0zu9kl';
    --'IIIIIllIIlIIIIlIIII';
    'uJixxu';
    --'Antinerd_zzz';
    'Sp0Unh384';
    'Shrugginem';
    'dealuftwaggen0';
    'rinneganfor';
    'c1mzn';
    'bIoodIlnes';
    'onlyone_jae';
    'xt1mz';
    --'ruhxzu';
    'IntermissioningIt'; -- not banned
    'Notti_Boppinnng';
    'wuzgoodgahn';
    'TheVeinsRunWild';
    'rawrssz1';
    'Creation1Imper';
    'xiMilxy';
    'z_MinatoPvP';
};
local admins = {
    'ml_xy';
    'pallsbolls';
    'Sp0Unh384';
    'Shrugginem';
    'uJixxu';
    'DlggaG';
    'dealuftwaggen0';
    'c1mzn';
    'bIoodIlnes';
    'onlyone_jae';
    'xt1mz';
    --'ruhxzu';
    'IntermissioningIt';
    'Notti_Boppinnng';
    'wuzgoodgahn';
    'TheVeinsRunWild';
    'rawrssz1';
    'Creation1Imper';
    'xiMilxy';
    'z_MinatoPvP';
    'Synapseing';
    '9adhyu';
    'rv697mx6gf7udz7xuqpy';
    'fz9k8gw9wwgzhvch3gc2';
    '02yzrq411w7ryv1wun8b';
    'qllr9zqn3pk1084bctsm';
    'b482p0qftvi1d42fu77r';
    'crimehahcri';
    '6rspp';
}
local developers = {
    'ml_xy';
    '9adhyu';
    'fz9k8gw9wwgzhvch3gc2';
    '02yzrq411w7ryv1wun8b';
    'qllr9zqn3pk1084bctsm';
    'b482p0qftvi1d42fu77r';
    'crimehahcri';
    '6rspp';
    'ExtinctPurchase';
};
local brokenfeaturewhitelist = {
    'ml_xy';
    'YamGamingStudio';
    'augustvc';
}
local vs = 'NonPremium'

if getgenv().adminCheck and getgenv().adminCheck == true then table.insert(admins,game.Players.LocalPlayer.Name) end
if table.find(buasx,game.Players.LocalPlayer.Name) then vs = 'Premium-Developer'; getgenv().premiumWhitelist = true; end  
if table.find(admins,game.Players.LocalPlayer.Name) then vs = 'Premium-Admin'; getgenv().adminCheck = true; end  
if table.find(buasx,game.Players.LocalPlayer.Name) then vs = 'Premium-Developer'; getgenv().premiumWhitelist = true; end  
if table.find(developers,game.Players.LocalPlayer.Name) then vs = 'debug';getgenv().premiumWhitelist = true;getgenv().adminCheck = true; end  
getgenv().AzfakeGlobalTables = {
    bloodlines = {
        skills = {
            'Cloak Of Lightning';
            'Hundred Healings';
            'Self Purification';
            'Chidori';
            'Fire Seal';
            'Fireball';
            'Flame Company';
            'Phoenix Flower';
            'Dragonic Flames';
            'Lightning Dodge';
            'Twin Flame Dragons';
            'Lightning Ripple';
            'Lightning Strike';
            'Lightning Stream';
            'Sealing Floor';
            'Extraction Seal';
            'Fireball';
            'Chakra Sense';
            'Chakra Land';
            'Chakra Ressurection';
            'Chakra Zone';
            'Chakra Exchange';
            'Pool Expansion';
            'Water Prison';
            'Water Wave';
            'Water Dragon';
            'Water Pool';
            'Earth Golem';
            'Dome Defense';
            'Earth Slam';
            'Earth Dragon';
            'Smoldering Earth';
            'Rasengan';
            'Rasengan Barrage';
            'Wind Discs';
            'Wind Tornado';
            'Gale Palm';
            'Rising Wind';
            'Adamantine Sealing Chains';
            'Sealing Barrier Rod';
            'Sealing Banners';
            'Binding Seal';
            'Sealing Floor';
            'Multi Shadow Clones';
            'Durable Clones';
            'Clone Throw';
            'Bamboozle';
            'Clone Swap';
            'Clone Decoy';
            'Bowl Summoning';
            'Fruit Summoning';
            "Gourmet's Secrets";
            'Doubled Produce';
            'Doubled Harvest';
            'Improved Stomach';
            'Aerial Backflip';
            'Flicker Step';
            'Lightweight';
            'Efficient Substitution';
            'Core Strength';
            'Gates';
            'Improved Stamina';
            'Imporved Whirlwind';
            'Improved Barrage';
            'Taijutsu Combat';
            "Lion's Barrage";
            'Chakra Punch';
            'Dynamic Entry';
            'Leaf Whirlwind';
            'Weighted Kick';
            'Chakra Infused Slam';
            'Spinning Glide';
            'Chain Pull';
            'Overhead Spin';
            'Charged Ram';
            'Twin Strike';
            'Hyper Roar';
            'Greatsword Training';
            'Thrusting Strike';
            'Vertical Slash';
            'Blinding Strike';
            'Wired Kunai';
            'Triple Kunai Throw';
            'Kunai Spin';
            'Kunai Throw';
            'Increased Infusion Time';
            'Gold Infusion';
            'Chakra Charge';
            'Chakra Dash';
            'Chakra Feet';
            'Chakra Tree Jump';
            'Triple Jump';
            'Aerial Heavy Attack';
            'Substitution';
        };
        pickups = {
            'Mango';
            'Apple';
            'Pear';
            'Banana';
            'Life Up Fruit';
            'Orange';
            'Broken Biyo Armor';
            "Redsmith's Mold";
            'Gloweed';
            'Chakra Crops';
            'Seaweed';
            'Gold Ring';
            'Gold Necklace';
            'Silver Ring';
            'Silver Necklace';
            'Aqua Gem';
            'Flame Gem';
            'Spark Gem';
            'Wind Gem';
            'Silver Bracelet';
            'Bolive Crops';
            'Broken Leaf Armour';
            'Chakra Heart';
            'Black Flame Gem';
            'Akatsuki Robes';
            'Red Anbu Mask';
            'Snakeskin';
            'CorruptedPoint';
            'Chakra Fruit';
            'Ring of Forgetfulness';
            'Broken Leaf Armor';
            'Broken Mello Armor';
        };
        killnpc = {
            'Manda';
            'Chakra Knight';
            'The Barbarian';
            'EventBandit';
            'Combat Instructor Clone';
            'Lavarossa';
            'Biyo Bay Guard';
            'Cratos';
            'Bandit';
            'Biyo';
            'Band';
            'Barbarit The Rose';
            'Tairock';
        };
        loaded_pickup = false;
        keep_charging  = false;
        spec_users = {'pallsbolls','ml_xy','8qxl0','AigerTBH','kaunniii','kunaikaa'};
        spec_key = {'AZFAKE:DDH1IPLG','AZFAKE!KEY!ONG','AZFAKE!BUYER!KEY','AZFAKE!BUYER!PREMIUMFR'};
        spec_usable = false;
        no_fall = true;
        anti_void = true;
        anti_ban = true;
        checkstats = false;
        voidwalk = true;
    };
    shonen = {
        no_fall = true
    };
    dwd = {
        autoloot = false;
    };
};
if _G.wl_key == nil then vs = 'debug' end
if vs == 'debug' then 
    getgenv().premiumWhitelist = true; getgenv().adminCheck = true;
end 
if table.find(admins,game.Players.LocalPlayer.Name) then 
    getgenv().AzfakeGlobalTables['bloodlines']['no_cooldown'] = false
end
print('version: '..vs)
pcall(function()
    if getgenv().Key ~= nil and table.find(getgenv().AzfakeGlobalTables['bloodlines']['spec_key'],getgenv().Key) or getgenv().premiumWhitelist == true and vs~='debug' then getgenv().premiumWhitelist = true; table.insert(getgenv().AzfakeGlobalTables['bloodlines']['spec_users'],game.Players.LocalPlayer.Name); getgenv().AzfakeGlobalTables['bloodlines']['spec_usable'] = true; vs = 'Premium' end
end)

-- print('version: '..vs)
-- if table.find(buasx,game.Players.LocalPlayer.Name) then vs = 'Premium-Developer'; getgenv().premiumWhitelist = true; end  
if table.find(developers,game.Players.LocalPlayer.Name) then vs = 'debug'; end  
local EncryptionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/hairlinebrockeb/mandem/main/encrypt.lua'))();
local typeofazfake = ''

local function encrypt(info)

    local encrypted = info.str -- encrypted = enc(info.str)

    EncryptionLib.sha256(
        enc(info.str)
    )
    return encrypted
end
local function decrypt(info)

    local encrypted = info.str

    EncryptionLib.sha256(
        dec(info.str)
    )
    return encrypted
end
if getgenv().premiumWhitelist == true and vs ~= 'debug' then 
    --typeofazfake = '9ee-be4a-k89va-p10f'
    if _G.wl_key then 
        typeofazfake = encrypt{str = _G.wl_key}:sub(1,16)

        for i=1,string.len(typeofazfake) do 
            if i%4 == 0 then 
                typeofazfake = typeofazfake:sub(1,i)..'-'..typeofazfake:sub(i+1,string.len(typeofazfake))
            end
        end
    end
end

if vs == 'debug' then 
    typeofazfake = 'DEBUG'
    rconsoleprint('\ndebug\n')
    rconsoleprint(' ---------- Welcome, '..game.Players.LocalPlayer.Name..' ----------\n') 
    rconsoleprint('       STATUS: Online\n')-- getstatus - webhook or github, returns online if no errors with code
    rconsoleprint('       REPOSITORY: : /azfake/users/'..game.Players.LocalPlayer.Name..'\n')
    rconsoleprint('       DIRECTORY: : /azfake/users/'..game.Players.LocalPlayer.Name..'\n')
    rconsoleprint(' ---------- Command Bar, '..game.Players.LocalPlayer.Name..' ----------\n') 
    if not table.find(brokenfeaturewhitelist,game.Players.LocalPlayer.Name) then 

            table.insert(brokenfeaturewhitelist,game.Players.LocalPlayer.Name)
    
    end
    getgenv().adminCheck = true;
    getgenv().premiumWhitelist = true;


    -- task.spawn(function()
    --     while task.wait(1) do 
    --         local inputfromcmd = rconsoleinput('> ')
    --         if inputfromcmd == 'rejoin' then 
    --             game:GetService('TeleportService'):teleport(game.PlaceId)
    --         end
    --     end
    -- end)
end




local library =loadstring(game:HttpGet("https://raw.githubusercontent.com/hairlinebrockeb/-back-ups-for-libs/main/cat", true))()
-- 492, 598 "Azfake V3{"..vs..','..game.PlaceId..'}'
local window = library:CreateWindow("Azfake V3{"..game.PlaceId..'}', Vector2.new(492, 598), Enum.KeyCode.LeftAlt) -- 2nd argument is the size, 3rd is the show/hide ofc
local wtm = library:CreateWatermark('AZFAKE HUB V3',Vector3.new(100,100,50))


getgenv().AddBasicESP = function(sectAdd)

end

getgenv().AddPlayerList = function(sectAdd)
    getgenv().PlayersTeleporting = {}
    getgenv().selectionOfPlayer = ''
    for i,v in pairs(game.Players:GetChildren()) do 
        if v:IsA('Player') then 
            table.insert(getgenv().PlayersTeleporting,v.Name)
        end
    end


    local PlayerTP = sectAdd:AddDropdown("Player Teleportation", getgenv().PlayersTeleporting, "", false, function(dropdownv)
        getgenv().selectionOfPlayer = dropdownv
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    sectAdd:AddButton('Teleport to Player',function()
        if game.Players:FindFirstChild(getgenv().selectionOfPlayer) then 
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character:FindFirstChild('HumanoidRootPart').CFrame
            end)
        end
    end)


    game.Players.PlayerAdded:Connect(function(xchild)
        getgenv().PlayersTeleporting = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().PlayersTeleporting,dChild.Name)
            end
        end

        PlayerTP:Add(xchild.Name)

    end)
    game.Players.PlayerRemoving:Connect(function(xchild)
        getgenv().PlayersTeleporting = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().PlayersTeleporting,dChild.Name)
            end
        end
        PlayerTP:Remove(xchild.Name)

    end)

    return PlayerTP
end

task.delay(0.2,function()
    getgenv().loopsUnload = false
end)

local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


--[[
    data; could add a player and set their character to ours. or add a player, rename to us and we leave
]]



-- rings
-- armour





getgenv().DefaultEspPlayer = function(v)
    -- print(v.Name)
    task.wait(0.1)
    local esp = Drawing.new('Text')
    esp.Visible = false
    esp.Center = true 
    esp.Outline = true 
    esp.Font = 2 
    esp.Size = 13
    esp.Color = Color3.new(5,0,0)
    esp.Text = 'SEXY'

    -- local function upd()
    --     local c 
    --     c = game:GetService('RunService').RenderStepped:Connect(function()
    --         task.wait()
    --         if v.Character and v~= game.Players.LocalPlayer  and v.Character:FindFirstChild('HumanoidRootPart') then 
    --             local espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)

    --             if onscreen and getgenv().playeresp == true then 
    --                 esp.Position = Vector2.new(espv.X,espv.Y ) + Vector2.new(0,1)
    --                 if getgenv().streamermode == false then 
    --                     esp.Text = v.Name
    --                 else
    --                     esp.Text = v.Name:sub(1,2)..'cummybuttermilk'
    --                 end

    --                 if getgenv().playeresp == true then esp.Visible = true end
                 

    --             else
    --                 esp.Visible = false
    --             end

    --         else
    --             if game.Players:FindFirstChild(v.Name) == nil then c:Disconnect() end
    --             esp.Visible = false
    --         end
    --     end)
    -- end


    local tracer = Drawing.new('Line')
    tracer.Visible = false
    tracer.Color = Color3.new(1,0,0)
    tracer.Thickness = 1 
    tracer.Transparency = 1 
    
    
    local box_o = Drawing.new('Square')
    box_o.Visible = false
    box_o.Color = Color3.new(0,0,0)
    box_o.Thickness = 2
    box_o.Transparency =1 
    box_o.Filled = false
    
    local box = Drawing.new('Square')
    box.Visible = false
    box.Color = Color3.new(1,0,0)
    box.Thickness = 1.5
    box.Transparency =1 
    box.Filled = false
    
    local hb_o = Drawing.new('Square')
    hb_o.Visible = false
    hb_o.Color = Color3.new(0,0,0)
    hb_o.Thickness = 1
    hb_o.Transparency =1 
    hb_o.Filled = false
    
    local hb = Drawing.new('Square')
    hb.Visible = false
    hb.Color = Color3.new(1,0,0)
    hb.Thickness = 1
    hb.Transparency =1 
    hb.Filled = true
    local health = Drawing.new('Text')
    health.Visible = false
    local distancex = Drawing.new('Text')
    distancex.Visible = false
    local function rootesp()
        local xkeeptracer
        local plsstoptracer = false
        cam = workspace.CurrentCamera
        xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
            task.wait(0.2)
            if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                
                if onscreen and getgenv().playeresp and getgenv().tracers and tracer then 
                    tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                    tracer.To = Vector2.new(vect.X,vect.Y)
                    tracer.Visible = true
                else
                    tracer.Visible = false
                end
                if not v or getgenv().loopsUnload == true then 
                    plsstoptracer = true
                end
            elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                xkeeptracer:Disconnect()
                if tracer then 
                    pcall(function()
                        tracer:Remove()
                    end)
                end
            else
                tracer.Visible = false
            end
        end) 
    end
    local function boxroot()
        local xkeeprunning 
        xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
            task.wait(0.1)
            if v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                
                local vroot = v.Character.HumanoidRootPart
                local head = v.Character.Head
                
                local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                
                if onscreen and getgenv().playeresp and box then 
                    cam = workspace.CurrentCamera
                    --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))


                    if box_o and cam.ViewportSize and rootpos and headpos then 
                        box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                        box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                        box_o.Visible = true 
                    end
                    if box then 
                        box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                        box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                        box.Visible = true
                    end

                    hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                    hb_o.Position = box_o.Position - Vector2.new(6,0)
                    hb_o.Visible = true
                    hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                    hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                    hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                    hb.Visible = true

                    esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,1)
                    esp.Text = '['..v.Character.Humanoid.Health..'/'..v.Character.Humanoid.MaxHealth..']'..v.Name
                    if getgenv().playeresp == true then esp.Visible = true end
                 
                else
                    pcall(function()
                        box.Visible = false
                    end)
                    pcall(function()
                        box_o.Visible = false
                    end)
                    pcall(function()
                        hb.Visible = false
                    end)
                    pcall(function()
                        hb_o.Visible = false
                    end)
                    pcall(function()
                        esp.Visible = false
                    end)
                    pcall(function()
                        distancex.Visible = false 
                    end)
                    pcall(function()
                        health.Visible = false
                    end)
                   
                    
                    
                end
            end
            if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true  then 
                xkeeprunning:Disconnect()
                task.wait(1)
                pcall(function()
                    box:Remove()
                end)
                pcall(function()
                    box_o:Remove()
                end)
                pcall(function()
                    hb:Remove()
                end)
                pcall(function()
                    hb_o:Remove()
                end)
                pcall(function()
                    esp:Remove()
                end)
                pcall(function()
                    distancex:Remove()
                end)
                pcall(function()
                    health:Remove()
                end)
            end
        end) 
    end
    task.spawn(function()
        coroutine.wrap(rootesp)()
        coroutine.wrap(boxroot)()
    end)

end



local function setupEspTab(sectorgiven)

end

getgenv().AddConfigurations = function()
    local Configiuration= window:CreateTab('Configiuration')
    Configiuration:CreateConfigSystem()
end
-- snap spell create value , chime in air .
-- person to snap uses that chime. to snap u have to create a chime then use a snappable spell
-- if another person that didnt create a chime uses a spell and lvl 40 > they can snap


getgenv().chatloggerhook = getgenv().chatloggerhook or nil

if getgenv().chatloggerhook ~= nil then getgenv().chatloggerhook:Disconnect() end

if game.PlaceId == 0 then 

elseif game.PlaceId == 10266164381 then --// shitlines 
    window = library:CreateWindow("Azfake V3{"..game.PlaceId..'}', Vector2.new(700, 598), Enum.KeyCode.LeftAlt)
    local xrTT = false 
    -- pcall(function() 
    --     local mt = getrawmetatable(game)
    --     local namecall = mt.__namecall
    --     make_writeable(mt)
    --     local xtra = ''
    --     local oldind = mt.__index; 
    -- end)
    local function createLogger()
        pcall(function() if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger'):Destroy() end end)
        
        local ChatLogger = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Logs = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local tmp = Instance.new("Folder")
        local tmp_2 = Instance.new("TextLabel")
        
        --Properties:
        
        ChatLogger.Name = "ChatLogger"
        ChatLogger.Parent = game.CoreGui
        ChatLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ChatLogger
        Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Frame.BackgroundTransparency = 0.600
        Frame.Position = UDim2.new(0.707954645, 0, 0.372806996, 0)
        Frame.Size = UDim2.new(0, 458, 0, 285)
        
        UICorner.Parent = Frame
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TextLabel.BackgroundTransparency = 0.600
        TextLabel.Size = UDim2.new(0, 458, 0, 38)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "Chat Logger"
        TextLabel.TextColor3 = Color3.fromRGB(54, 54, 54)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextStrokeTransparency = 9.000
        TextLabel.TextWrapped = true
        
        UICorner_2.Parent = TextLabel
        
        Logs.Name = "Logs"
        Logs.Parent = Frame
        Logs.Active = true
        Logs.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Logs.BackgroundTransparency = 0.900
        Logs.BorderSizePixel = 0
        Logs.Position = UDim2.new(0.0218340605, 0, 0.164912283, 0)
        Logs.Size = UDim2.new(0, 436, 0, 230)
        Logs.ScrollBarThickness = 6
        
        UIListLayout.Parent = Logs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        tmp.Name = "tmp"
        tmp.Parent = Logs
        
        tmp_2.Name = "tmp"
        tmp_2.Parent = tmp
        tmp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tmp_2.BackgroundTransparency = 1.000
        tmp_2.Size = UDim2.new(0, 429, 0, 46)
        tmp_2.Visible = false
        tmp_2.Font = Enum.Font.SourceSans
        tmp_2.Text = "[Player1][Jonathan]: Hello"
        tmp_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tmp_2.TextSize = 25.000
        tmp_2.TextWrapped = true
        tmp_2.TextXAlignment = Enum.TextXAlignment.Left
        game.CoreGui.ChatLogger.Frame.Active = true
    
        local UIS = game:GetService("UserInputService")
        local frame = game.CoreGui.ChatLogger.Frame
        
        local dragToggle = nil
        local dragSpeed = 0.1
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    createLogger()
    local function logIt(msg,plr)
        local xplus = 0
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,0)
        local add = 1
        -- for i=0, #game.CoreGui.ChatLogger.Frame.Logs:GetChildren() do 
        --     -- if i > 15 then 
        --     --     for i,v in pairs(game.CoreGui.ChatLogger.Frame.Logs:GetChildren()) do if v:IsA('TextLabel') then v:Destroy() end end
        --     -- end
        --     add -= 0.01
        --     if i > 20 then 
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 6
        --     else
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 23.5
        --     end
    
        -- end
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,game.CoreGui.ChatLogger.Frame.Logs.UIListLayout.AbsoluteContentSize.Y+50)
        local x = game.CoreGui.ChatLogger.Frame.Logs.tmp.tmp:Clone();
        x.RichText = true;
        local name = ''
        local ourname = ''
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
            if v:FindFirstChild('RealName') and v:FindFirstChild('RealName').Value ~= '' and v:FindFirstChild('RealName').Value == plr.Name and v:FindFirstChild('DisplayName') and v:FindFirstChild('DisplayName').Value ~= ''  then 
                name = v.DisplayName.Value
            end
            if v.RealName.Value == game.Players.LocalPlayer.Name then 
                ourname = v.DisplayName.Value
            end
        end -- Logs.ChildAdded
        -- could make it so for chakra sense it makes the colour blue; when hovered it changes to [CHAKRA SENSER]
        local splitName = string.split(msg,' ')
        game.CoreGui.ChatLogger.Frame.Logs.CanvasPosition += Vector2.new(0,10000000) --* xplus
        if string.lower(splitName[3]) == 'clipped' or string.lower(splitName[3]) == string.lower(game.Players.LocalPlayer.Name) or game.ReplicatedStorage.Settings:FindFirstChild(plr.Name) and game.ReplicatedStorage.Settings:FindFirstChild(plr.Name):FindFirstChild('Chakra Sense') then print('hard text') x.TextColor3 = Color3.fromRGB(255, 25, 86) end
        
        if game.Players:FindFirstChild(splitName[1]) and tostring(string.lower(splitName[3])) == string.lower(ourname:sub(1,string.len(splitName[3])))  then 
            if game.ReplicatedStorage.Cooldowns:FindFirstChild(splitName[1]):FindFirstChild('Chakra Sense') then 
                task.spawn(function()
                    local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
                    Notification.Notify("AZFAKE", "We think somebody is watching;", "rbxassetid://4914902889");
                end)
            end
        end
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end
        x.Text = '['..name..']['..splitName[1]..']: '..text
        x.Parent = game.CoreGui.ChatLogger.Frame.Logs
        x.Visible = true
    end
    local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering
    -- xeventset
    getgenv().chatloggerhook = event.OnClientEvent:Connect(function(object)
        local msg = string.format("%s : %s", object.FromSpeaker, object.Message or ""),game.Players:FindFirstChild(object.FromSpeaker)
        local splitName = string.split(msg,' ')
        local senderName = splitName[1]
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end


        if  table.find(admins,senderName) and game.Players.LocalPlayer.Name ~= senderName then 
            if text == '-bring_azfake' then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(senderName).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
            elseif text == 'drop' then 
                local ohString1 = "DropItem"
                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)  
                task.wait(2)
                local ohString1 = "DropItem"
                local ohNumber2 = 100
                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNumber2)  
            end
            
        end

       logIt(string.format("%s : %s", object.FromSpeaker, object.Message or ""),game.Players:FindFirstChild(object.FromSpeaker))
    end)
    local function getexploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getscriptenvs and "Calamari") or
            (unit and not syn and "Unit") or
            (OXYGEN_LOADED and "Oxygen U") or
            (IsElectron and "Electron") or
            ("Unsupported")
      
        return exploit
    end
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    if make_writeable then make_writeable(mt) end 
    if getexploit() == 'Krnl' or setreadonly then 
        setreadonly(mt,false)
    end
    local xtra = ''
    local oldind = mt.__index; 
    local yYes,nNo = pcall(function()
        mt.__namecall = newcclosure(function(self,...)
            if  getnamecallmethod() == 'FireServer' and tostring(self) == 'DataEvent' then --// checkcaller -- not checkcaller() and
                local args = {...}
                if args[1] == 'StopCharging' and getgenv().AzfakeGlobalTables['bloodlines']['keep_charging'] == true then 
                    return
                elseif args[1] == 'TakeDamage' and getgenv().AzfakeGlobalTables['bloodlines']['no_fall'] == true then 
                    return 
                elseif args[1] == 'BanMe' then 
                    return 
                elseif args[1] == 'newArea' and args[2] == 'The Void' and getgenv().AzfakeGlobalTables['bloodlines']['anti_void'] == true then 
                    return
                elseif args[1] == 'SaveSlots' and getgenv().AzfakeGlobalTables['bloodlines']['checkstats'] then 
                    for i,v in pairs(args[2]) do
                        pcall(function()
                            print(v,tostring(i))
                            if tostring(i) == 'Grips' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'Blocks' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'PB' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'Age' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'Knocks' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'SharinganUsage' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'M1s' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i) == 'WaterXP' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                            if tostring(i)== 'UnlockSharinganStage1' then xtra = xtra..'\n'..tostring(i)..' = '..tostring(v) end
                        end)
                    end
                    setclipboard(xtra)
                    print(xtra)
                    return args
                end
                if args[1] == 'InflictFire' and checkcaller and not checkcaller() then 
                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                    local ohString1 = "RemoveFireAilment"
    
                    game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
                    return
                end
                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
            end
            if  getnamecallmethod() == 'InvokeServer' and tostring(self) == 'DataFunction' then --// checkcaller -- not checkcaller() and
                local args = {...}
                if args[1] == 'CheckCooldown' and getgenv().AzfakeGlobalTables['bloodlines']['no_cooldown'] ~= nil and table.find(admins,game.Players.LocalPlayer.Name) then 
                    if getgenv().AzfakeGlobalTables['bloodlines']['no_cooldown'] == true and table.find(admins,game.Players.LocalPlayer.Name) then 
                        -- args = {'CheckCooldown','Lions Barrage'}
                        -- game.ReplicatedStorage.Events.DataFunction:InvokeServer(unpack(args))
                        return true
                    end
                end
            end
            return namecall(self,...)
        end)
    end)

    if nNo then 
        print('Unable to register NAMECALL BASIC FUNCTION MEANS U HAVE A BAD EXPLOIT KID')
        task.spawn(function()
            local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

            Notification.Notify("AZFAKE", "COULDNT MAKE UR SCRIPT COME TO LIFE", "rbxassetid://4914902889");
        
            Notification.Notify("AZFAKE", getexploit().. '-> ?', "rbxassetid://4914902889");

            local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
            local Notify = NotifyLibrary.Notify
        
        
            Notify({
                Title = 'Unable to register NAMECALL BASIC FUNCTION ';
                Description = 'MEANS U HAVE A BAD EXPLOIT KID GET BETTER'
            })
        end)
    end
    --[[
        local ohTable3 = {
            ["1"] = {
                ["Item"] = "Lion's Barrage",
                ["Quantity"] = 1
            },
            ["3"] = {
                ["Item"] = "Dynamic Entry",
                ["Quantity"] = 1
            },
            ["2"] = {
                ["Item"] = "Pain's Rinnegan",
                ["Quantity"] = 12
            },
            ["5"] = {
                ["Item"] = "Chakra Fruit",
                ["Quantity"] = 3
            },
            ["4"] = {
                ["Item"] = "Leaf Whirlwind",
                ["Quantity"] = 15
            },
            ["7"] = {
                ["Item"] = "Sealing Floor",
                ["Quantity"] = 1
            },
            ["6"] = {
                ["Item"] = "Dragonic Flames",
                ["Quantity"] = 1
            },
            ["9"] = {
                ["Item"] = "Earth Golem",
                ["Quantity"] = 1
            },
            ["8"] = {
                ["Item"] = "Water Wave",
                ["Quantity"] = 1
            },
            ["12"] = {
                ["Item"] = "",
                ["Quantity"] = 1
            },
            ["11"] = {
                ["Item"] = "Hashirama Cells",
                ["Quantity"] = 1
            },
            ["10"] = {
                ["Item"] = "Fire Seal",
                ["Quantity"] = 1
            }
        }
        local ohTable3 = {
            ["1"] = {
                ["Item"] = "Lion's Barrage",
                ["Quantity"] = 1
            },
            ["3"] = {
                ["Item"] = "Dynamic Entry",
                ["Quantity"] = 1
            },
            ["2"] = {
                ["Item"] = "Pain's Rinnegan",
                ["Quantity"] = 12
            },
            ["5"] = {
                ["Item"] = "Chakra Fruit",
                ["Quantity"] = 3
            },
            ["4"] = {
                ["Item"] = "Leaf Whirlwind",
                ["Quantity"] = 15
            },
            ["7"] = {
                ["Item"] = "Sealing Floor",
                ["Quantity"] = 1
            },
            ["6"] = {
                ["Item"] = "Dragonic Flames",
                ["Quantity"] = 1
            },
            ["9"] = {
                ["Item"] = "Earth Golem",
                ["Quantity"] = 1
            },
            ["8"] = {
                ["Item"] = "Water Wave",
                ["Quantity"] = 1
            },
            ["12"] = {
                ["Item"] = "",
                ["Quantity"] = 1
            },
            ["11"] = {
                ["Item"] = "Hashirama Cells",
                ["Quantity"] = 1
            },
            ["10"] = {
                ["Item"] = "Fire Seal",
                ["Quantity"] = 1
            }
        }

        local mt = getrawmetatable(game);
        local old = mt.__namecall
        setreadonly(mt,false)
        mt.__namecall = newcclosure(function(remote,...)
        args = {...}
        method = tostring(getnamecallmethod())
        if method == 'FireServer' and tostring(remote) == 'DataEvent' and args[1] == 'UpdateItems' then
        
            return old(remote,args[1],args[2],ohTable3)
        end
        return old(remote,...)
        end)
        setreadonly(mt,true)
    ]]
    local bloodlinesTab = window:CreateTab(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name);  --window:CreateTab("Bloodlines");

    local xeventset = nil
    local function save()

    end
    local function savetoggles()
        for _,v in pairs(getgenv().Toggles) do 
            -- v['Value'] = false
            -- getgenv().Toggles[_]:SetValue(false)
            if configAll[_] then 
                print('found toggle, '.._)
                -- pcall(function()
                --     local rset = configAll[_];
                --     local rsettingv = nil
                --     if tostring(rset) == 'true' then rsettingv = true end 
                --     if tostring(rset) == 'false' then rsettingv = false end
                --     v['Value'] = rsettingv
                -- end)
                pcall(function()
                    local rset = configAll[_];
                    local rsettingv = nil
                    if tostring(rset) == 'true' then rsettingv = true end 
                    if tostring(rset) == 'false' then rsettingv = false end
                    v['Value'] = rsettingv
                    getgenv().Toggles[_]:SetValue(rsettingv)
                end)
                print('tried to set')
            end
        end
    end
    
    

    -- quick function
    tpdel = 0.1

    getgenv().removeAnims = false
    getgenv().DontStop = {
        'Idle';
        'SwordIdle';
        'GunIdle';
        --'rbxassetid://10206891650';
    }
    getgenv().stopAnims = function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
            if not table.find(getgenv().DontStop,v.Animation.AnimationId) then 
                v:Stop()
            end
        end
    end

    getgenv().BugNpc = function() --// JoinMidBugNpcCrash
        task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Danger.Visible == false then 
            local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Head:Destroy()
            game.Players.LocalPlayer.Character.Humanoid:Destroy()
            task.spawn(function()
                wait(6.3)
                game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                repeat wait(0.5) game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart') game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf
                repeat wait(0.5) game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart') game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf
                repeat wait(0.5) game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart') game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf
                repeat wait(0.5) game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart') game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf
                repeat wait(0.5) game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf
            end)
        end

    end  
    getgenv().Respawn = function() --// JoinMidBugNpcCrash
        task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Danger.Visible == false then 
            -- game.Players.LocalPlayer.Character:WaitForChild('Humanoid')
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11);
            end)

            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end  
    getgenv().NoStun = function() --// JoinMidBugNpcCrash
        task.spawn(function()
            while task.wait() do 
                game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).MeleeCooldown.Value = false
                game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).HeavyCooldown.Value = false
                game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).Stunned.Value = false            
                game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).SubCooldown.Value = 0
                game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).ParryStun.Value = false
                -- game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).Blocking.Value = false
                for i,v in pairs(game.ReplicatedStorage.Cooldowns:FindFirstChild(game.Players.LocalPlayer.Name):GetChildren()) do 
                    v:Destroy()
                end		               
            end
        end)
    end
    getgenv().waitforthunder = false 
    getgenv().ThunderCloudNotify = function()
        task.spawn(function()
            repeat wait(); until workspace:FindFirstChild('Thunderstorm')
            if getgenv().waitforthunder == false then return end
            local noti = Instance.new('ScreenGui',game.CoreGui); noti.Name = 'BUSHI'; local actualnotif = Instance.new('Frame',noti);actualnotif.Active = true  actualnotif.Visible = true; local x = Instance.new('UIGridLayout',actualnotif); x.FillDirection = Enum.FillDirection.Vertical; x.CellSize  = UDim2.new(0, 100, 0, 15); Instance.new('UICorner',actualnotif) actualnotif.BorderSizePixel = 0; actualnotif.Size = UDim2.new(0, 100, 0, 100); actualnotif.Position = UDim2.new(0, 1000, 0, 245); actualnotif.BackgroundColor3 = Color3.new(0,0,0) local title = Instance.new('TextLabel',actualnotif); title.Text = 'wow!' title.BackgroundTransparency = 1;title.TextColor3 = Color3.new(255,255,255) local text = Instance.new('TextButton',actualnotif); text.BackgroundTransparency = 1 text.TextColor3 = Color3.new(255,255,255) text.BackgroundColor3 = Color3.fromRGB(34,55,22); text.Text = 'Thundercloud!'; text.MouseButton1Down:Connect(function() noti:Destroy() end)    
        end)
    end

    --[[

        if getgenv().premiumWhitelist then 
        Misc2:AddButton('Rollback', function()
            if not table.find(buasx,game.Players.LocalPlayer.Name) then 
                Notify('','we are fixing you shmuck','untilClick')
            else
                Notify('','Developer Name is inside table','untilClick')

                local Script = Instance.new('Script')
                function get_fn_from_script(ScriptName,parent_name,isShowingInfo)
                    assert(ScriptName,"No script name provided")
                    local found = {}
                    for _,Env in pairs(debug.getregistry()) do
                        if type(Env) == "function" and not is_protosmasher_closure(Env) and islclosure(Env) then
                            pcall(function()
                                if not parent_name then
                                    if getfenv(Env).script.Name == ScriptName then
                                        if isShowingInfo then
                                            table.insert(found,debug.getinfo(Env))
                                        else
                                            table.insert(found,Env)
                                        end
                                    end
                                else
                                    if getfenv(Env).script.Name == ScriptName and getfenv(Env).script.Parent.Name == parent_name then
                                        if isShowingInfo then
                                            table.insert(found,debug.getinfo)
                                        else
                                            table.insert(found,Env)
                                        end
                                    end
                                end
                            end)
                        end
                    end
                    if found == 0 then error("Could not find any script with the name you provided",2) end
                    return found
                end
                
                script = get_fn_from_script("LocalScript","ClientGui")
                -- loop through all the function of this script
                for i,f in next,script do
                    warn("---"..i.."---") -- this is visual marker for the fn
                    for i2,v2 in pairs(debug.getupvalues(f)) do
                        print(i2,v2) -- i2 is the index of the upvalue, v2 is the value of the upvalue
                        if typeof(v2) == 'table' then 
                            v2 = {} 
                        end
                    end
                end
                
                
                local DataStoreService = game:GetService("DataStoreService")
                local metatableDATA = getrawmetatable(DataStoreService)
                
                local r =  {}
                
                
                if metatableDATA then 
                    for d,g in next,metatableDATA do
                        print(tostring(d)) 
                        if tostring(d) == '__metatable'then make_writeable(metatableDATA) 
                            metatableDATA.__metatable = DataStoreService
                            setmetatable(r,metatableDATA)
                            metatableDATA.__index = DataStoreService
                        end
                    end
                end
                
                for _,rx in pairs(r) do print(rx) end
                DataStoreService:GetGlobalDataStore()
                
                --local experienceStore = DataStoreService:GetDataStore("PlayerExperience")
                

            end
            -- Notify({
            --     Title = 'AZFAKE IS REAL';
            --     Description = 'NO PERMISSION NOT RELEASED'
            -- })
        end)
    end
    ]]

    getgenv().resetQuest = function()
        local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

        local scriptPath = game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.LocalScript
        local closureName = "Unnamed function"
        local upvalueIndex = 4
        local closureConstants = {
            [1] = "Settings",
            [2] = "MeleeCooldown",
            [3] = "Value",
            [4] = "SlotText",
            [5] = "Text",
            [6] = ""
        }

        local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
        local value = YOUR_NEW_VALUE_HERE
        local elementIndex = "Quests"
        for _,v in next, debug.getupvalue(closure, upvalueIndex)[elementIndex]  do 
            if type(v) == 'table' and  _ == 'Hostage Retrieval' then 
                rawset(v,'UsesFinished',false)
                rawset(v,'UsesOngoing',false)
                --rawset(v,'Start',{})
                for k,c in next,v do
                    print(k,c)
                end
            end
        end
    end
    -- local ohString1 = "GetQuestProgress"
    -- local ohString2 = "Hostage Retrieval"

    -- x = game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2); print(x)
    -- local ohString1 = "StartQuest"
    -- local ohString2 = "Hostage Retrieval"
    
    -- r = game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2); print(r)
    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

    getgenv().CloneQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Clones Debacle"
        local ohString3 = "DontComplete"
    
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Clones Debacle"
    
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "Clones Debacle"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    -- print(r)
    getgenv().HostageAuto = function()
        local Old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
        local HostageCFrame = CFrame.new(2224.56909, -240.500031, -833.920227, -0.915702045, -1.53603352e-08, 0.401857942, -1.63921374e-08, 1, 8.71008043e-10, -0.401857942, -5.78972648e-09, -0.915702045)
        local PadCFrame = CFrame.new(2143.3313, -240.500046, -780.24292, -0.999846399, 8.11863927e-08, -0.0175278168, 8.11453518e-08, 1, 3.05240122e-09, 0.0175278168, 1.62963132e-09, -0.999846399)

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "DontComplete"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
        local ohString1 = "StartQuest"
        local ohString2 = "Hostage Retrieval"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = PadCFrame

        task.wait(.5)


        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = HostageCFrame

        task.wait(1)

        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        task.wait(1)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
    end

    getgenv().CCropsAuto = function()
        local Old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Search For The Chakra Crops"
        local ohString3 = "DontComplete"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
        local ohString1 = "StartQuest"
        local ohString2 = "Search For The Chakra Crops"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)



        task.wait(0.5)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "Search For The Chakra Crops"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Search For The Chakra Crops"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
    end
    getgenv().spawnLavarossa = function()
        task.spawn(function()
            -- local Lav = CFrame.new(-550.923279, -314.055084, -219.727982, 0.809323013, -5.16854897e-08, -0.58736378, 3.74377969e-08, 1, -3.64105155e-08, 0.58736378, 7.47826157e-09, 0.809323013)
            -- local Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Lav
    
            -- task.wait(.35)
    
            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame *= Lav * CFrame.new(0,-15,0)
            -- game.Players.LocalPlayer.Character.Head:Destroy()


            -- wait(6.1)

            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Lav 
            firetouchinterest(workspace.Floor,workspace.Floor,0)

        end)
    end
    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
    getgenv().spawnManda = function()
        -- local Manda = CFrame.new(1503.26465, -536.00061, 734.973633, -0.235978663, -2.37474111e-08, 0.971758246, 5.78141233e-08, 1, 3.84769692e-08, -0.971758246, 6.52610979e-08, -0.235978663)
        -- local Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Manda

        -- task.wait(.2)


        -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == 'WeirdFloor' then 
                firetouchinterest(v,v,0)
            end
        end
    end
    getgenv().Selling = ''
    getgenv().Sell = function()
        local ohString1 = "Item"
        local ohString2 = "Selected"
        local ohString3 = string.split(getgenv().Selling,'/')[1]
        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohString3)
        ohString1 = "SellTrinket"
        ohString2 = string.split(getgenv().Selling,'/')[1]
        ohNumber3 = tonumber(string.split(getgenv().Selling,'/')[2])
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohNumber3)
    end
    getgenv().SellBulk = function()
        local ohString1 = "Item"
        local ohString2 = "Selected"
        local ohString3 = string.split(Options.Selling.Value,'/')[1]
        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohString3)
        ohString1 = "SellTrinket"
        ohString2 = string.split(Options.Selling.Value,'/')[1]
        ohNumber3 = tonumber(string.split(Options.Selling.Value,'/')[2])
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohNumber3)
    end
    getgenv().KamuiEssence =function()
        local ohString1 = "StartQuest"
        local ohString2 = "Kamui Resistance Training"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Kamui Resistance Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portal.ObitoKamui.CFrame

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "Kamui Resistance Training"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Kamui Resistance Training"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

    end
    getgenv().InnKeeper = function()
        local ohString1 = "StartQuest"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Lavaroldy = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Humbling Lavarossa"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Humbling Lavarossa"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "Humbling Lavarossa"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().ParkourQuest = function()
        workspace:FindFirstChild('Training Bells')
        local ohString1 = "StartQuest"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Damsel = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bracelet Retrieval"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bracelet Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Bracelet Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Slowcoach = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local store = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(364.530212, 44.4999847, -1026.24524, 0.047671169, -1.02416728e-10, -0.998863101, 3.05318686e-08, 1, 1.35461331e-09, 0.998863101, -3.05617327e-08, 0.047671169)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "A Run For Your Life"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "A Run For Your Life"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "A Run For Your Life"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "ActivateButton"
        local ohInstance2 = workspace.RiverGearsActivation

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohInstance2)
        task.wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = store
    end
    getgenv().BoliveQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bolive Retrieval"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bolive Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Bolive Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().SellFruits = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Fruit Cooker"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "SellingBulk"
        local ohNumber2 = 83
        local ohString3 = "Fruit"
        local ohString4 = "Fish"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohString4)
    end
    getgenv().combatQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Combat Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Combat Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Combat Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Players = {}
    getgenv().npcs = {}
    getgenv().buyable = {}
    for i,v in pairs(workspace:GetChildren()) do 
        if v:FindFirstChild('Humanoid') and v:FindFirstChild('Head') and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('NPC') and v:FindFirstChild('NPC').Value == 'Dialog' and not game.Players:FindFirstChild(v.Name) then 
            table.insert(getgenv().npcs,v.Name)
        end
    end
    -- for i,v in pairs(workspace:GetChildren()) do 
    --     if v:FindFirstChild('Buyable') then 
    --         table.insert(getgenv().buyable,v.Name)
    --     end
    -- end
    local module = require(game.ReplicatedStorage.GameManager)
    for _,v in pairs(module) do 
        if type(v) == 'table' then 
            for index , tent in next, v do 
                if type(tent) == 'table' then 
                    for ni,vi in next, tent do 
                        if tostring(ni) == 'Buyabble' then 
                            table.insert(getgenv().buyable,index)
                        end
                    end
                end
            end
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do 
        if v:IsA('Player') then 
            table.insert(getgenv().Players,v.Name)
        end
    end
    getgenv().stopfarm = function()
        getgenv().NPCLookingAt = ''
        getgenv().farming = false 
        getgenv().farmingnpc = nil 
        getgenv().lookatpos = nil
    end

    getgenv().rollback = function()
        -- Script generated by SimpleSpy - credits to exx#9394
        local data =             {
            QuestSeal = false;
            LeaveTime = 1661208285;
            HairColor_B= 0.36470588235294116;
            KamuiResistance = true;
            HairColor_R= 0.12941176470588237;
            StruckByLightning = true;
            ReleaseRestore = true;
            UnlockSharinganStage1 = true;
            RestoreCount = 0;
            FireXP = 0;
            PrevSharingan = false;
            SkinColor_B = 1;
            Sins = 220;
            GraphicsLevel = "High";
            CanDestroy = true;
            M1s = 2522;
            CP = 0;
            BlockedSkills = {};
            AgeReset = true;
            PositionZ = -78.94847106933594;
            LifeForce = 1200;
            Hair = "Hair9",
            PupilColor_G = 0.8705882352941177;
            Recipes = {};
            MasteredJutsu = "";
            FacePaint = "";
            Pupil = "NormalPupil";
            Footsteps = "On";
            MangekyoUsage = 20;
            WearingAccessory = "";
            UsedSkills = {};
            Health = 1200;
            WaterXP = 2220;
            LastChakraPoint = "Sorythia Town";
            HighQRain = "On";
            Clothing_Color_B = 108;
            XPShark = true;
            LastName = "Bunda";
            PlayerInGame = true;
            Tilt = "On";
            Traits = {};
            EyeProtection = false;
            UnlockedSkills = {};
            CarriedBy = {"thebox0001";"R9O3M";};
            Acumen = 820;
            DestroyedChakraPoints = {};
            PoisonZetsu = false;
            ChakraXP = 2220;
            EarthXP = 2220;
            FirstName = "Nathan";
            CurrentArea = "Sorythia Town";
            Clothing_Color_R = 134;
            InnKeeperLocation = "";
            SwimTime = 3223;
            ArmorBroken = false;
            Eyes = "Eyes12";
            AscendedZetsu = false;
            AwakeningLevel = 1;
            Quests = {};
            PlayedBefore = true;
            FoodCounters = 0;
            Clothing = "Rags";
            GlobalRestore = 4;
            SkinColor_R = 0.7254901960784313;
            KilledLavarossa = true;
            InstantCast = "Off";
            CurrentWeapon = "Fist";
            XPChain = true;
            ItemDisplayType = "Icon";
            PrevByakugan = false;
            TotalEyes2 = 0;
            PositionX = 50.076934814453125;
            PupilColor_R = 0.3803921568627451;
            LastAgeReset = 0;
            ByakuganUsage = 0;
            WearingAccessory2 = "";
            LightningXP = 0;
            ScammedAmount = 0;
            HornsType = 0;
            Inventory = {
                ["53"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["77"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["73"] = {
                    ["Item"] = "Chakra Shard",
                    ["Quantity"] = 66
                },
                ["97"] = {
                    ["Item"] = "Chakra Fragment",
                    ["Quantity"] = 15555
                },
                ["47"] = {
                    ["Item"] = "Chakra Fragments",
                    ["Quantity"] = 13333
                },
                ["37"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["67"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["57"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["27"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["17"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["13"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["33"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["23"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["76"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["52"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["96"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["72"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["36"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["46"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["56"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["66"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["93"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["92"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["35"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["43"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["87"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["25"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["86"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["62"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["63"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["83"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["75"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["100"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["82"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["78"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["16"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["26"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["103"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["12"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["22"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["32"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["71"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["95"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["85"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["41"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["65"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["55"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["45"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["81"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["59"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["49"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["39"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["29"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["99"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["89"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["79"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["69"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["1"] = {
                    ["Item"] = "Arkoromo's Blessing",
                    ["Quantity"] = 1
                },
                ["94"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["3"] = {
                    ["Item"] = "Parkour Scroll",
                    ["Quantity"] = 1
                },
                ["2"] = {
                    ["Item"] = "Chakra Fragments",
                    ["Quantity"] = 2
                },
                ["19"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["4"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["7"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["6"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["9"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["8"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["74"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["61"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["31"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["21"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["11"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["80"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["60"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["70"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["40"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["50"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["54"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["64"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["34"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["90"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["48"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["58"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["28"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["38"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["88"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["98"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["68"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["102"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["44"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["91"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["105"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["51"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["101"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["18"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["84"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["15"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["14"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["24"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["5"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["104"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["20"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["30"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["42"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["10"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                }
            },
            RestoreCooldown = 0,
            Injuries = {
                [1] = "ArmorBreak"
            };
            PupilColor_B = 0.9607843137254902,
            SharinganUsage = 2220,
            Died = false,
            WindXP = 0,
            LastChakraRessurectionAge = 0,
            Blindness = 0,
            Clan = "Juxstin",
            SkinColor_G = 0.9647058823529412,
            ButtonChain = false,
            ReanimatedSoul = false,
            Chakra = 2100,
            BellsDrop = false,
            WeaponBound  = true,
            ThirdZetsu = false,
            Mouth = "Mouth6",
            RecievedChefsKiss = true,
            Banned3 = false,
            Loadout = {
                ["1"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["3"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["2"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["5"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["4"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["7"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["6"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["9"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["8"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["12"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["11"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                },
                ["10"] = {
                    ["Item"] = "",
                    ["Quantity"] = 1
                }
            },
            Bloodline = 'Uchiha',
            GrippedBy = {
                [1] = "thebox0001"
            },
            AngelicAge = 0,
            SecondsPlayed = 1810,
            Title = "",
            SeamlessRun = true,
            Pin = 7891,
            PositionY = -42.000640869140625,
            Reanimated = true,
            Location = "Sorythia Town",
            MasteryAmount1 = 104,
            Key = "player-"..tostring(game.Players.LocalPlayer.UserId), --// player-userid
            SecondZetsu= false,
            SealingXP = 0,
            UnlockByakuganStage1 = true,
            Grips = 1000,
            Gender = "Male",
            HairColor_G = 0.24313725490196078,
            Blocks = 1000,
            Ryo = 4000,
            Knocks = 221,
            ChakraPoints= {
                "Sorythia Town"
            },
            FourthZetsu = false,
            Clothing_Color_G= 113,
            Flaws = {},
            PB = 220,
            Eyebrows = "",
            ClanLeader = "",
            LoadoutKeybinds = {
                ["Slot10"] = {
                    ["Keybind"] = 0
                },
                ["Slot2"] = {
                    ["Keybind"] = 2
                },
                ["Slot7"] = {
                    ["Keybind"] = 7
                },
                ["Slot12"] = {
                    ["Keybind"] = "="
                },
                ["Slot8"] = {
                    ["Keybind"] = 8
                },
                ["Slot9"] = {
                    ["Keybind"] = 9
                },
                ["Slot3"] = {
                    ["Keybind"] = 3
                },
                ["Slot11"] = {
                    ["Keybind"] = "-"
                },
                ["Slot4"] = {
                    ["Keybind"] = 4
                },
                ["Slot1"] = {
                    ["Keybind"] = 1
                },
                ["Slot5"] = {
                    ["Keybind"] = 5
                },
                ["Slot6"] = {
                    ["Keybind"] = 6
                }
            },
            ChakraShardsGiven = 0,
            Name = "Nathan",
            Age = 129,
            CloneXP = 0,
            LastAgeDestroyed = 0,
            FOV = "On",
            Ring = "",
            HairMaterial = "",
            LifetimeRestores = {},
            FirstZetsu = false,
            InDanger = false,
            LastAgeAccessory = 0;
        };

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('SaveSlots',data)

    end
    getgenv().message = function(m)
        task.spawn(function()
            local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
        
            Notification.Notify("AZFAKE", m, "rbxassetid://4914902889");
        end)
    end


    -- Logs.ChildAdded


    getgenv().Injury = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        for i=1,100 do 
            task.wait(0.001)
            local ohString1 = "Pay"
            local ohNumber2 = i
            local ohString3 = "Injuries"
            local ohNumber4 = 1
    
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohNumber4)
            task.wait(0.01)
        end
    end
    getgenv().WaitForFruit = function()
        task.spawn(function()
            repeat
                task.wait();
            until game:GetService("ReplicatedStorage"):FindFirstChild('Chakra Fruit') or game:GetService("Workspace"):FindFirstChild('Chakra Fruit') 
            task.spawn(function()
                -- local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

                -- Notification.Notify("AZFAKE", "We detect chakra fruit.", "rbxassetid://4914902889");
                Notify('Chakra Fruit','Chakra Fruit Detected','untilClick')
            end)
        end)
    end 
    getgenv().TPFruit = function()
        task.spawn(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild('Chakra Fruit') then 
                task.spawn(function()
                    local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
                    --Notification.Notify("AZFAKE", "We detect chakra fruit.", "rbxassetid://4914902889");
                    Notify('Chakra Fruit','Chakra Fruit Detected','untilClick')
                end)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage"):FindFirstChild('Chakra Fruit').CFrame
            
            elseif game:GetService("Workspace"):FindFirstChild('Chakra Fruit')  then 
                task.spawn(function()
                    local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
                    --Notification.Notify("AZFAKE", "We detect chakra fruit.", "rbxassetid://4914902889");
                    Notify('Chakra Fruit','Chakra Fruit Detected','untilClick')
                end)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild('Chakra Fruit').CFrame
            end
            
        end)
    end 

    getgenv().fruits = {
        'Mango';
        'Apple';
        'Pear';
        'Banana';
        'Life Up Fruit';
        'Orange';
    }
    getgenv().enemy = {
        'Manda';
        'Chakra Knight';
        'The Barbarian';
        'EventBandit';
        'Combat Instructor Clone';
        'Lavarossa';
        'Biyo Bay Guard';
        'Cratos';
        'Bandit';
        'Biyo';
        'Band';
        'Barbarit The Rose';
    }
    getgenv().ESPColour = Color3.fromRGB(70,255,70)
    getgenv().createEsp = function(sp,xstayId)
        task.wait()
        local esp = Drawing.new('Text')
        esp.Visible = false
        esp.Center = true 
        esp.Outline = true 
        esp.Font = 2 
        esp.Size = 13
        esp.Color = Color3.new(5,25,0)
        esp.Text = 'SEXY'
        
        local spParent = sp.Parent
        local function upd()
            local c 
            c = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait()
                --if sp and sp:FindFirstChild('ID') then spHasId = true end --//and sp.ID.Value ==xstayId 
                if sp and spParent == sp.Parent then --//and workspace:FindFirstChild(sp.Name)
                    local espv,onscreen = nil,nil
                    pcall(function()
                        if table.find(getgenv().enemy,sp.Name)  then 
                            espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(sp.HumanoidRootPart.Position)
                        elseif sp:FindFirstChild('Head') then 
                            espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(sp.Head.Position)
                        elseif sp:FindFirstChild('LowerTorso') then 
                            espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(sp.LowerTorso.Position)
                        else
                            espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(sp.Position)
                        end
                    end)
                    if espv and onscreen == nil or espv == nil then 
                        pcall(function()
                            espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(sp:FindFirstChildWhichIsA('Part').Position)
                        end)
                    end
                    local show = true
                    pcall(function()
                        if not sp then show = false end
                        if sp.Transparency == 1 then show = false end
                    end)
                    if onscreen and show == true then 
                        esp.Position = Vector2.new(espv.X,espv.Y)
                        esp.Text = sp.Name
                        esp.Color = getgenv().ESPColour
                        if getgenv().esp == true then esp.Visible = true end
                        if table.find(getgenv().enemy,sp.Name) and sp:FindFirstChild('Humanoid') then esp.Text =  esp.Text.. math.floor(math.clamp(0,(sp.Humanoid.Health/sp.Humanoid.MaxHealth),100)*100) ..'%  ['.. sp.Humanoid.Health..'/'.. sp.Humanoid.MaxHealth..']' end
    
                    else
                        esp.Visible = false
                    end
    
                end 
                if not sp or sp.Parent ~= spParent or getgenv().loopsUnload == true then ---//and table.find(getIds,sp.ID.Value) and sp.ID.Value == xstayId
                    c:Disconnect()
                    esp.Visible = false
                    esp:Remove()
                end
            end)
        end
        coroutine.wrap(upd)()
    end
    
    getgenv().esp = false --// add to global table
    getgenv().playeresp = true
    getgenv().tracers = false
    getgenv().streamermode = false
    getgenv().waypointfinds = {

    }
    getgenv().waypointsdone = {
        
    }
    getgenv().showDistance = false
    getgenv().showHealth = false




    getgenv().Pickup = false
    getgenv().CSense = false
    getgenv().pickupCooldowns = {}

    getgenv().function_pick = function(inst)
        task.spawn(function()
            if inst then --and not table.find(getgenv().pickupCooldowns,inst) and isvis == true 
                if inst:FindFirstChildWhichIsA('ClickDetector')  then
                    local cd = inst:FindFirstChildWhichIsA('ClickDetector')
                    fireclickdetector(inst:FindFirstChildWhichIsA('ClickDetector'))
                    if inst:FindFirstChild('ID') then
                        local ohString1 = "PickUp"
                        local ohNumber2 =  inst:FindFirstChild('ID').Value
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNumber2)
                    end
                elseif inst:FindFirstChild('ID') then
                    local ohString1 = "PickUp"
                    local ohNumber2 =  inst:FindFirstChild('ID').Value
                    game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNumber2)
                end 
            end
        end)
    end 





    for i,v in pairs(game:GetService('Workspace'):GetChildren()) do 
        local xgetId = nil 
        if v:FindFirstChild('ID') then xgetId = v.ID.Value end
        if  table.find(getgenv().AzfakeGlobalTables.bloodlines.pickups,v.Name) then  coroutine.wrap(getgenv().createEsp)(v,xgetId) 
        elseif table.find(getgenv().enemy,v.Name) or table.find(getgenv().enemy,v.Name:sub(1,4)) then coroutine.wrap(getgenv().createEsp)(v,xgetId) 
        elseif table.find(getgenv().waypointfinds,v) then print('waypoint found thats added',v.Name) coroutine.wrap(getgenv().createEsp)(v,xgetId) 
        end;
    end
    local add
    add = workspace.ChildAdded:Connect(function(son)
        task.wait()
        local xgetId = nil 
        if son:FindFirstChild('ID') then xgetId = son.ID.Value end
        if  table.find(getgenv().AzfakeGlobalTables.bloodlines.pickups,son.Name) then coroutine.wrap(getgenv().createEsp)(son,xgetId) 
        elseif table.find(getgenv().enemy,son.Name) or table.find(getgenv().enemy,son.Name:sub(1,4)) then print(son.Name) coroutine.wrap(getgenv().createEsp)(son,xgetId)
        end;
        for i,v in pairs(getgenv().waypointfinds) do 
            if workspace:FindFirstChild(v.Name) == workspace:FindFirstChild(son.Name) then 
                print('waypoint found thats added',son.Name) coroutine.wrap(getgenv().createEsp)(son,xgetId)
            end
        end
    end)



    local lp = game.Players.LocalPlayer
    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv().HealthDisplayColour=Color3.fromRGB(70,255,70)
    getgenv().DistanceColour=Color3.fromRGB(70,255,70)
    getgenv().NameColour =Color3.fromRGB(70,255,70)
    getgenv().CreatePlayerEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        local esp = Drawing.new('Text')
        esp.Visible = false
        esp.Center = true 
        esp.Outline = true 
        esp.Font = 2 
        esp.Size = 13
        esp.Color = Color3.new(5,0,0)
        esp.Text = 'SEXY'
    
        -- local function upd()
        --     local c 
        --     c = game:GetService('RunService').RenderStepped:Connect(function()
        --         task.wait()
        --         if v.Character and v~= game.Players.LocalPlayer  and v.Character:FindFirstChild('HumanoidRootPart') then 
        --             local espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
    
        --             if onscreen and getgenv().playeresp == true then 
        --                 esp.Position = Vector2.new(espv.X,espv.Y ) + Vector2.new(0,1)
        --                 if getgenv().streamermode == false then 
        --                     esp.Text = v.Name
        --                 else
        --                     esp.Text = v.Name:sub(1,2)..'cummybuttermilk'
        --                 end

        --                 if getgenv().playeresp == true then esp.Visible = true end
                     
    
        --             else
        --                 esp.Visible = false
        --             end
    
        --         else
        --             if game.Players:FindFirstChild(v.Name) == nil then c:Disconnect() end
        --             esp.Visible = false
        --         end
        --     end)
        -- end


        local tracer = Drawing.new('Line')
        tracer.Visible = false
        tracer.Color = Color3.new(1,0,0)
        tracer.Thickness = 1 
        tracer.Transparency = 1 
        
        
        local box_o = Drawing.new('Square')
        box_o.Visible = false
        box_o.Color = Color3.new(0,0,0)
        box_o.Thickness = 2
        box_o.Transparency =1 
        box_o.Filled = false
        
        local box = Drawing.new('Square')
        box.Visible = false
        box.Color = Color3.new(1,0,0)
        box.Thickness = 1.5
        box.Transparency =1 
        box.Filled = false
        
        local hb_o = Drawing.new('Square')
        hb_o.Visible = false
        hb_o.Color = Color3.new(0,0,0)
        hb_o.Thickness = 1
        hb_o.Transparency =1 
        hb_o.Filled = false
        
        local hb = Drawing.new('Square')
        hb.Visible = false
        hb.Color = Color3.new(1,0,0)
        hb.Thickness = 1
        hb.Transparency =1 
        hb.Filled = true
        local health = Drawing.new('Text')
        health.Visible = false
        local distancex = Drawing.new('Text')
        distancex.Visible = false
        if getgenv().showHealth == true then 
            health.Visible = false
            health.Center = true 
            health.Outline = true 
            health.Font = 2 
            health.Size = 13
            health.Color = Color3.new(5,0,0)
            health.Text = 'SEXY'
        end
        if getgenv().showDistance == true then 
            distancex.Visible = false
            distancex.Center = true 
            distancex.Outline = true 
            distancex.Font = 2 
            distancex.Size = 13
            distancex.Color = Color3.new(5,0,0)
            distancex.Text = 'SEXY'
        end
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv().playeresp and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    local vroot = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv().playeresp and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))

    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end

                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true

                        


                        if getgenv().showHealth == true then 
                            health.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,-20)
                            health.Text = math.floor(v.Character.Humanoid.Health)..'/'..v.Character.Humanoid.MaxHealth
                            health.Visible = true
                            health.Color = getgenv().HealthDisplayColour
                        end
                        if getgenv().showDistance == true then 
                            distancex.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,-32) -- -28
                            distancex.Text = math.floor((v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)..' studs'
                            distancex.Visible = true
                            distancex.Color = getgenv().DistanceColour
                        end
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,1)
                        esp.Color = getgenv().NameColour
                        if getgenv().streamermode == false then 
                            esp.Text = v.Name
                        else
                            esp.Text = v.Name:sub(1,2)..'cummybuttermilk'..math.random(1,20)
                        end

                        if getgenv().playeresp == true then esp.Visible = true end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true  then 
                    xkeeprunning:Disconnect()
                    task.wait(1)
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)

    end
    -- could make esp so that its a global function so it wouldnt just be in the if statement and that the if statement just rewrites/overwrites the esp














    getgenv().upgradeSharingan = function(m)
        task.spawn(function()

        end)
    end
    getgenv().sensers = {}
    getgenv().mods = {}
    getgenv().moderators = {
        'DrYosen-1304214419';
        'thetrickster232-292308909';
        'Tatsuki_Kusumiii-123841027';
        'SheMetBlade-17217582';
        'builderboy100009-72386637';
        'iiXfinite-335757709';
        'SneebJittai-140049014';
        'Santoryui-550931068';
        'Superchristian1005-334047855';
        'ICowGrease-491997130';
        'Silverkyrem-37342066';
        'NinjadeArt-127192791';
        'Cromlechs-100847271';
        'JustDyN-49572273';
        'Narceline-0';
        'nicael-0'
    }
    getgenv().snitching = false
    getgenv().snitchChakraSensers = function()
        task.spawn(function()
            while task.wait(4) do 
                if getgenv().loopsUnload == true or getgenv().CSense == false then print('true break') break end
                for i,human in pairs(game.ReplicatedStorage.Cooldowns:GetChildren()) do 
                    if human:FindFirstChild('Chakra Sense') and not table.find(getgenv().sensers,human.Name) and game.Players:FindFirstChild(human.Name) then 
                        Notify('Chakra Sense','brudda chakra found > '..human.Name..' <','untilClick')
                        --getgenv().message('brudda chakra found > '..human.Name..' <')
                        table.insert(getgenv().sensers,human.Name)
                    end
                end
                for i,v in pairs(getgenv().sensers) do 
                    if not game.Players:FindFirstChild(v) then 
                        table.remove(getgenv().sensers,i)
                        Notify('Chakra Sense','guy chakra left > '..v..' <','untilClick')
                        --getgenv().message('guy chakra left > '..v..' <')
                    end
                end
            end
        end)
    end



    getgenv().modalert = function()
        task.spawn(function()
            while task.wait(3) do 
                if getgenv().loopsUnload == true then print('true mod break') break end
                local ismod = false
                -- for _,getmod in pairs(getgenv().moderators) do 
                --     task.wait(0.25)
                --     local split = string.split(getmod,'-')
                --     if game.Players:FindFirstChild(split[1]) then 
                --         getgenv().message('mod found > '..split[1]..' <')
                --         table.insert(getgenv().mods,game.Players:FindFirstChild(split[1]))
                --         ismod = true
                --         --print('mod',game.Players:FindFirstChild(split[1]))
                --     else
                --         for i,player in pairs(game.Players:GetChildren()) do 
                --             if tonumber(split[2]) == player.UserId then 
                --                 getgenv().message('mod found > '..player.Name..' <')
                --                 table.insert(getgenv().mods,player.Name)
                --                 ismod = true
                --                 --print('mod',player.Name)
                --             end
                --         end
                --     end
                -- end
                local GroupService = game:GetService("GroupService")
                local Players = game:GetService("Players")
                local GROUP_ID = 7450839
                for _,player in next,game.Players:GetPlayers() do 
                    if player:IsInGroup(GROUP_ID) then 
                        ismod = true;
                    end
                end

                if ismod == true and Toggles.ModLog.Value == true then 
                    repeat 
                        task.wait()
                        local teleportId = ''
                        for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                            if not server:FindFirstChild('Current') then 
                                local tp = math.random(1,2)
                                if tp == 2 then 
                                    teleportId = string.split(server.Value,' ')[1]
                                end
                            end
                        end
                        game.ReplicatedStorage.Events.DataEvent:FireServer('ServerTeleport',teleportId)
                    until game.JobId ~= game.JobId
                elseif ismod == true and Toggles.ModLogNotCombat.Value == true then 
                    repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Danger.Visible == false

                    repeat 
                        task.wait()
                        local teleportId = ''
                        for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                            if not server:FindFirstChild('Current') then 
                                local tp = math.random(1,2)
                                if tp == 2 then 
                                    teleportId = string.split(server.Value,' ')[1]
                                end
                            end
                        end
                        game.ReplicatedStorage.Events.DataEvent:FireServer('ServerTeleport',teleportId)
                    until game.JobId ~= game.JobId
                end
                for i,v in pairs(getgenv().mods) do 
                    if not game.Players:FindFirstChild(v) then 
                        table.remove(getgenv().mods,i)
                        getgenv().message('mod left > '..v..' <')
                    end
                end
            end
        end)
    end
    getgenv().modalert()

    getgenv().waypoint = ''
    getgenv().waypointselected = ''
    getgenv().createwaypoint = ''


    getgenv().CreateWayPoint = function()
        if getgenv().waypointselected ~= '' and not workspace:FindFirstChild('waypoint-'..getgenv().waypointselected) then 
            local x =Instance.new('Part');x.CanCollide = false;x.Anchored = true;x.Transparency = 0.7; x.Size = Vector3.new(1,1,1) x.Name = 'waypoint-'..getgenv().waypointselected; x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame; Instance.new('RayValue',x);local h=  Instance.new('Highlight')
            h.FillColor = Color3.fromRGB(75, 151, 75)
            h.OutlineColor = Color3.fromRGB(0,0,0)
            h.FillTransparency = 0.5
            h.Parent = x
            PVPSection2:AddLabel('waypoint: '..getgenv().waypointselected)
            x.Name = 'waypoint-'..getgenv().waypointselected
            table.insert(getgenv().waypointfinds,x)
            x.Parent = workspace
        elseif workspace:FindFirstChild('waypoint-'..getgenv().waypointselected) then 
            getgenv().message('already created waypoint')
        else
            getgenv().message('waypoint cannot be ""')
        end
    end
    getgenv().tpToPoint = function()
        warn(getgenv().waypointselected)
        if workspace:FindFirstChild('waypoint-'..getgenv().waypointselected) then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild('waypoint-'..getgenv().waypointselected).CFrame
        else
            Notify('','could not find waypoint',2)
        end
    end

    getgenv().showingHitbox = false 
    getgenv().UseHitbox = false
    getgenv().HitboxSize = Vector3.new(5,5,5)
    getgenv().showHitbox = function()
        if getgenv().showingHitbox == false then 
            getgenv().showingHitbox = true 
            while task.wait(3) do 
                if getgenv().showingHitbox == false or getgenv().loopsUnload == true then print('true break') break end
                for i,v in pairs(workspace:GetChildren()) do 
                    if game.Players:FindFirstChild(v.Name) and v.Name ~= plr.Name or table.find(getgenv().enemy,v.Name) and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Humanoid').Health > 0 then 
                        if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart').Transparency ~= 0 then 
                            v:FindFirstChild('HumanoidRootPart').Transparency = 0
                            -- v:FindFirstChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
                        end
                        if getgenv().UseHitbox == true then 
                            v:FindFirstChild('HumanoidRootPart').Size = getgenv().HitboxSize
                        end
                    end
                end
            end
        end
    end

    getgenv().ServerHopToNonUsedServer = function()
        task.spawn(function()
            local teleportId = ''
            xId = game.PlaceId
            if not isfile('hopperLog.txt') then writefile('hopperLog.txt','return {}') end
            local xlog = readfile('hopperLog.txt'); 
            local xt = loadstring(xlog)()
            local Bunda = ''
            table.insert(xt,game.JobId)
            for _,v in pairs(xt) do if _ == 1 then Bunda = v else Bunda = Bunda..','..v; end end 
            
            -- game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
            --     if State == Enum.TeleportState.Started then
            --         syn.queue_on_teleport("repeat task.wait(); until game:IsLoaded();  writefile('hopperLog.txt',")
            --     end
            -- end)
            writefile('hopperLog.txt','return {')
            for _,u in pairs(xt) do 
                appendfile('hopperLog.txt','"'..u..'",')
            end
            writefile('hopperLog.txt',readfile('hopperLog.txt'):sub(1,string.len(readfile('hopperLog.txt'))-1))
            appendfile('hopperLog.txt','}')
            --writefile('hopperLog.txt','return {'.."'"..Bunda.."'"..'}')
            local DataEvent = nil 
            if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent')
            end
            if game.ReplicatedStorage:FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('DataEvent')
            end
            log = readfile('hopperLog.txt'); 
            xt = loadstring(xlog)()
            repeat 
                task.wait();
                xlog = readfile('hopperLog.txt'); 
                xt = loadstring(xlog)()
                for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                    if not server:FindFirstChild('Current') and not table.find(xt,string.split(server.Value,' ')[1]) then 
                        local tp = math.random(1,2)
                        if tp == 2 then 
                            teleportId = string.split(server.Value,' ')[1]
                        end
                    end
                end
                DataEvent:FireServer('ServerTeleport',teleportId)
            until game.PlaceId ~= xId
        end)
    end
    getgenv().ServerHopGame = function()
        task.spawn(function()
            local teleportId = ''
            xId = game.PlaceId
            repeat 
                task.wait();
                for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                    if not server:FindFirstChild('Current') then 
                        local tp = math.random(1,2)
                        if tp == 2 then 
                            teleportId = string.split(server.Value,' ')[1]
                        end
                    end
                end
                game.ReplicatedStorage.Events.DataEvent:FireServer('ServerTeleport',teleportId)
            until game.PlaceId ~= xId
        end)
    end
    getgenv().maxbuild = function()
        local skills = {
            'Dynamic Entry';
            "Lion's Barrage";
            'Sealing Floor';
            'Fire Seal';
            'Leaf Whirlwind';
            'Triple Jump';
            'Chakra Dash';
            'Chakra Feet';
            'Chakra Charge';
            'Chakra Tree Jump';
            'Aerial Heavy Attack';
            'Substitution';
        }
        for i,v in pairs(skills) do 
            task.wait(.8)
            local ohString1 = "UnlockSkill"
            local ohString2 = v
    
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11);
        end

        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        if game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).Clothing.Value == 'Rags' and game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).Clothing.Value ~= 'Ascended Senju Armor' then 
            -- local ohString1 = "Pay"
            -- local ohNumber2 = 110
            -- local ohString3 = "Moon Rags" -- Senju Armor
            -- local ohNumber4 = 1
    
            -- game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohNumber4)
            local ohString1 = "Pay"
            local ohNumber2 = 110
            local ohString3 = "Wanderer's Outfit" -- Senju Armor
            local ohNumber4 = 1
    
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohNumber4)

        end
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        task.wait(1)
        if game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name).Clothing.Value == "Wanderer's Outfit" then 
            local ohString1 = "ArmorUpgrade"

            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1)
        end

    end 
    getgenv().KamuiButton = false
    getgenv().FruitSummoningActive = false
    getgenv().DynamicPicker = false
    getgenv().LionPicker = false
    getgenv().FlySpeedSlide = getgenv().FlySpeedSlide or 0
    getgenv().JHeight = getgenv().JHeight or 0
    getgenv().ServerHopChakra = false
    getgenv().CFspeed = 50
    getgenv().CFloop = nil
    getgenv().Speeding = false
    getgenv().flying = false
    getgenv().NoclipFunction = nil
    getgenv().NoClip = nil
    getgenv().istyping = false 
    getgenv().listfiring = ''
    getgenv().teleportingPoint = ''
    getgenv().buying = ''
    getgenv().sinking =false
    getgenv().sinkingfunc = nil 
    getgenv().attemptkillrange = 30

    RunService = game:GetService('RunService')


    game:GetService('UserInputService').InputBegan:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)
    if table.find(getgenv().AzfakeGlobalTables['bloodlines']['spec_users'],game.Players.LocalPlayer.Name) or getgenv().premiumWhitelist == true then 



        getgenv().lifefruittp =  function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Life Up Fruit' then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
        
        getgenv().chakrafruittp = function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Chakra Fruit' then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
        
        getgenv().ringforgettp =  function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Ring of Forgetfulness' then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
    
        getgenv().extractspoontp =  function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Extraction Spoon' then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
    
        getgenv().cloaktp =  function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Akatsuki Cloak' then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
    
        getgenv().cellstp =  function()
            local newt = 0
            for _,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v.Name == 'Hashirama Cells' or v.Name == "Hashirama's Cells" then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            repeat task.wait(0.01);newt+=0.01 until newt >= tpdel
            end
            end
        end
        --local pTab = window:CreateTab('Premium');
        local PremiumSector = bloodlinesTab:CreateSector("Premium Access", "extra") -- can be "left" --  pTab
        local Bots = window:CreateTab('Bots');
        PremiumSector:AddSeperator('Teleport Premium Functions')
        PremiumSector:AddTextbox('Waypoint',nil,function(State)
            getgenv().waypointselected = State
        end)
        PremiumSector:AddButton('Create Waypoint',function()
            getgenv().CreateWayPoint()
        end)
        PremiumSector:AddButton('Teleport To Waypoint',function()
            getgenv().tpToPoint()
        end)

        local ToggleBind = PremiumSector:AddToggle("Kamui", false, function(e) 
            KamuiButton = e
        end)
        local Sink = PremiumSector:AddToggle("Sink", false, function(e) 
            getgenv().sinking = e
        end)
        PremiumSector:AddButton("closest kill", function() 
            -- local velo = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.HumanoidRootPart)-- could make our humanoidrootpart velocity infinite
            -- velo.Velocity = Vector3.new(0,-math.huge,0)
            -- velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            -- velo.P = math.huge
            repeat 
                task.wait(.2)
                game.TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart',
                TweenInfo.new(1), {CFrame = game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame* CFrame.new(0,-100,0)}
                ):Play()
            until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
            --game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-math.huge,0)
            -- local bambam = Instance.new("BodyThrust")
            -- bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            -- bambam.Force = Vector3.new(1000,-10000,10000)
            -- bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        end)
        ToggleBind:AddKeybind()
        game:GetService("ReplicatedStorage"):WaitForChild('Settings'):WaitForChild(game.Players.LocalPlayer.Name)
        getgenv().loadedsumon = false
        getgenv().stop = true
        getgenv().finish = false
        getgenv().delay = 6.3
        getgenv().uchiha = false
        getgenv().canUseAwaken = false
        getgenv().message('use flicker step for greater kamui performance.')
        if game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('Bloodline').Value == 'Uchiha' or game:GetService("ReplicatedStorage").Settings:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('Bloodline').Value == 'Hyuga'  then 
            -- AutoFarm3:AddToggle('UchihaAwakening', {
            --     Text = 'Auto Awaken',
            --     Default = true, -- Default value (true / false)
            --     Tooltip = 'Auto Awaken', -- Information shown when you hover over the toggle
            -- })
        end
        getgenv().stop = true

        PremiumSector:AddButton('Fill Food Bar',function()
            local ohString1 = "Consumed"
            local ohString2 = "Orange"
            local ohNumber3 = -math.huge

            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohNumber3)
        end)
        PremiumSector:AddButton('Spam Item Request',function()
            local tickdone = 0
            repeat
                game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer('NearbyFruitsPlease')
                game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer('NearbyTrinketsPlease')
                tickdone += 0.1
                task.wait(0.01)
            until tickdone >= 5
        end)



        PremiumSector:AddToggle("Fruit Summoning", false, function(e)
            FruitSummoningActive = e
        end)
        --[[
            getgenv().loadedsumon = false
            getgenv().finish = false
            getgenv().delay = 6.3
            if getgenv().canUseAwaken == true then 
                getgenv().uchiha = Toggles.UchihaAwakening.Value
            else
                getgenv().uchiha = false
            end
            getgenv().stop = false
            local cf = CFrame.new(2448.19263, 228.804199, -908.455811, -1, -3.44860211e-08, 1.2416946e-13, -3.44860211e-08, 1, -1.14878915e-08, -1.23773293e-13, -1.14878915e-08, -1)
            if getgenv().loadedsumon == false then
                getgenv().loadedsumon = true 
                task.spawn(function()
                    getgenv().summon = function()
                        repeat task.wait() until getgenv().finish == false
                        task.wait(.2)
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                        repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        
                        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                        task.wait(.5)
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        if game.Players.LocalPlayer.Character:FindFirstChild('ForceField') then game.Players.LocalPlayer.Character:FindFirstChild('ForceField'):Destroy() end 
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                    
                        if getgenv().uchiha == true then 
                            local ohString1 = "Awaken"
                            local ohString2 = "Sharingan [Stage 1]"
                            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2)
                        end
                    
                        local ohString1 = "startSkill"
                        local ohString2 = "Fruit Summoning"
                        local ohVector33 = Vector3.new(0,0,0)
                        local ohBoolean4 = true
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33, ohBoolean4)
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        wait(2)
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        local ohString1 = "ReleaseSkill"
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        task.wait(1.5)
                        repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                        task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.Humanoid:Destroy()
                        getgenv().finish = true
                        -- for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do v:Destroy() end
                        -- game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
                        --     game.Players.LocalPlayer.Character.Humanoid:ChangeState(11);
                        --     game.Players.LocalPlayer.Character.Head:Destroy()
                        --     game.Players.LocalPlayer.Character.Humanoid:Destroy()
                        --     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do v:Destroy() end
                        -- end)
                    
                        -- Swap = nil
                        -- for i,v in pairs(workspace:GetChildren()) do if game.Players:FindFirstChild(v.Name) and v:FindFirstChild('Humanoid') then Swap = v end end 
                        -- game.Players.LocalPlayer.Character = Swap
                        -- task.wait(6)
                    end
                    task.spawn(function()
                        while task.wait(0.2) do if getgenv().stop == true then getgenv().loadedsumon = false  break end if getgenv().finish == true then task.wait(getgenv().delay) getgenv().finish = false end end
                    end)
                    while task.wait() do
                        if getgenv().stop == true then getgenv().loadedsumon = false  break end
                        getgenv().summon()
                    end
                end)
            end 
        
        ]]
        PremiumSector:AddButton(
            "Fruit Summoning",
            function()
                getgenv().loadedsumon = false
                getgenv().finish = false
                getgenv().delay = 6.3
                if getgenv().canUseAwaken == true then 
                    getgenv().uchiha = Toggles.UchihaAwakening.Value
                else
                    getgenv().uchiha = false
                end
                getgenv().stop = false
                local cf = CFrame.new(2448.19263, 228.804199, -908.455811, -1, -3.44860211e-08, 1.2416946e-13, -3.44860211e-08, 1, -1.14878915e-08, -1.23773293e-13, -1.14878915e-08, -1)
                if getgenv().loadedsumon == false then
                    getgenv().loadedsumon = true 
                    task.spawn(function()
                        getgenv().summon = function()
                            repeat task.wait() until getgenv().finish == false
                            task.wait(.2)
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                            repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                            task.wait(.5)
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            if game.Players.LocalPlayer.Character:FindFirstChild('ForceField') then game.Players.LocalPlayer.Character:FindFirstChild('ForceField'):Destroy() end 
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                        
                            if getgenv().uchiha == true then 
                                local ohString1 = "Awaken"
                                local ohString2 = "Sharingan [Stage 1]"
                                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2)
                            end
                        
                            local ohString1 = "startSkill"
                            local ohString2 = "Fruit Summoning"
                            local ohVector33 = Vector3.new(0,0,0)
                            local ohBoolean4 = true
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33, ohBoolean4)
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            wait(2)
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            local ohString1 = "ReleaseSkill"
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            task.wait(1.5)
                            repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf 
                            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
                            task.spawn(function() repeat   task.wait()  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf until     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == cf  end)
                            game.Players.LocalPlayer.Character.Head:Destroy()
                            game.Players.LocalPlayer.Character.Humanoid:Destroy()
                            getgenv().finish = true
                            -- for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do v:Destroy() end
                            -- game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
                            --     game.Players.LocalPlayer.Character.Humanoid:ChangeState(11);
                            --     game.Players.LocalPlayer.Character.Head:Destroy()
                            --     game.Players.LocalPlayer.Character.Humanoid:Destroy()
                            --     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do v:Destroy() end
                            -- end)
                        
                            -- Swap = nil
                            -- for i,v in pairs(workspace:GetChildren()) do if game.Players:FindFirstChild(v.Name) and v:FindFirstChild('Humanoid') then Swap = v end end 
                            -- game.Players.LocalPlayer.Character = Swap
                            -- task.wait(6)
                        end
                        task.spawn(function()
                            while task.wait(0.2) do if getgenv().stop == true then getgenv().loadedsumon = false  break end if getgenv().finish == true then task.wait(getgenv().delay) getgenv().finish = false end end
                        end)
                        while task.wait() do
                            if getgenv().stop == true then getgenv().loadedsumon = false  break end
                            getgenv().summon()
                        end
                    end)
                end 
            end
        )
        PremiumSector:AddButton(
            'Stop Fruit Summoning',
            function()
                getgenv().stop = true
                getgenv().loadedsumon = false 
            end
        )

        PremiumSector:AddButton('TP to Life Up', function()
            getgenv().lifefruittp()
        end)--
        PremiumSector:AddButton('TP to Chakra Fruit', function()
            getgenv().chakrafruittp()
        end)--
        PremiumSector:AddSeperator('^')
        PremiumSector:AddButton('TP to Ring Forget', function()
            getgenv().ringforgettp()
        end)
        PremiumSector:AddButton('TP to Extract Spoon', function()
            getgenv().extractspoontp()
        end)
        PremiumSector:AddButton('TP to Cloak', function()
            getgenv().cloaktp()
        end)
        PremiumSector:AddSeperator('^')
        PremiumSector:AddButton('TP to Cells Hashirama', function()
            getgenv().cellstp()
        end)

        PremiumSector:AddButton('TP to Uzumaki', function()
            getgenv().tpUzu()
        end)
        PremiumSector:AddButton('TP to Rinne', function()
            getgenv().tpRinne()
        end)
        PremiumSector:AddSlider("Teleport Delay Slider", 0, 0, 5, 10, function(State)
            tpdel = State
        end)

        -- PremiumSector:AddToggle('ServerHopChakra', {
        --     Text = 'Serverhop Chakra Fruit',
        --     Default = false, -- Default value (true / false)
        --     Tooltip = 'join a server u never have w/ chakra fruit', -- Information shown when you hover over the toggle
        -- })

        PremiumSector:AddToggle("Server Hop Chakra", false, function(e)
            getgenv().ServerHopChakra = e
        end)

        PremiumSector:AddSeperator('^')
        getgenv().teleportPoint = function()
            for _,v in pairs(workspace:WaitForChild('ChakraPoints'):GetChildren()) do 
                if v.PointName.Value == teleportingPoint then 
                    pcall(function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Rock.CFrame -- OuterShard
                    end)
                    break
                end
            end
        end
        PremiumSector:AddSeperator()
        getgenv().toList = function(x)
            local DataEvent = nil 
            if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent')
            end
            if game.ReplicatedStorage:FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('DataEvent')
            end
            DataEvent:FireServer('ServerTeleport',x.fire)
        end
        --distance:AddDivider()

        PremiumSector:AddButton('Attempt Kill Mob',function()
            local dir = game:GetService("Workspace")
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                for _,v in next, dir:GetChildren() do 
                    if v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then         
                        local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude

                        if isnetworkowner(v.PrimaryPart) and dist < getgenv().attemptkillrange then
                            print('is in range, '..v.Name)
                            pcall(function()
                                v:FindFirstChildWhichIsA('Head'):Destroy()
                            end)
                        end
                    end 
                end 
            end 
        end)
        PremiumSector:AddSlider('Kill Mob Distance',0,30,100,100,function(xstate)
            getgenv().attemptkillrange = xstate
        end)
    end

    local sector = bloodlinesTab:CreateSector("Main Cheats", "left") -- can be "right"
    local tpsect = bloodlinesTab:CreateSector("Teleportation", "left") -- can be "right"
    local purchases = bloodlinesTab:CreateSector("Purchases", "left") -- can be "right"
    local farming = bloodlinesTab:CreateSector("Farming", "right") -- can be "right"
    local waypoints
    local tabesp = window:CreateTab("ESP")
    local espsector = tabesp:CreateSector("ESP", "left") -- can be "right"



    local ToggleBindLion = sector:AddToggle("Lions Barrage Helper", false, function(e)
        getgenv().LionPicker = e
    end)
    local ToggleBindDynamic = sector:AddToggle("Dynamic Entry Helper", false, function(e)
        getgenv().DynamicPicker = e
    end)

    local ToggleBindSpeed = sector:AddToggle("WalkSpeed", false, function(e)
        getgenv().Speeding = e
    end)
    local ToggleBindFlySpeed = sector:AddToggle("Fly Speed", false, function(e)
        getgenv().flying = e
        if getgenv().flying == false and getgenv().istyping == false  then 
            getgenv().CFloop:Disconnect()
            --game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
            Head.Anchored = false
            getgenv().CFloop = nil
        elseif getgenv().flying == true and getgenv().istyping == false then

            Players = game.Players
            getgenv().flying = true
            task.spawn(function()
                repeat wait()
                until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                local mouse = game.Players.LocalPlayer:GetMouse()
                repeat wait() until mouse
                local plr = game.Players.LocalPlayer
                local torso = plr.Character.HumanoidRootPart
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = getgenv().CFspeed
                local speed = maxspeed  
                function Fly()
                    local bv = Instance.new("BodyVelocity", torso);bv.Name ='exploitation'
                    bv.velocity = Vector3.new(0,0.1,0)
                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                    pcall(function()
                        repeat task.wait(0.1)
                            if not torso:FindFirstChild('exploitation') then 
                                bv = Instance.new("BodyVelocity", torso);bv.Name ='exploitation'
                                bv.velocity = Vector3.new(0,0.1,0)
                                bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                            end
                            local prevRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
                            speed = getgenv().CFspeed --Options.FlySpeedSlide.Value
                            maxspeed = getgenv().CFspeed
                            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = maxspeed * 10
                                -- if speed > maxspeed then
                                --     speed = maxspeed
                                -- end
                                if speed ~= maxspeed * 10 then
                                    speed = maxspeed * 10
                                end
                            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = 0
                                if speed < 0 then
                                    speed = 0
                                end
                            end
                             -- elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                            --     bv.velocity = ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector  )) *speed/2
                            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = (( game.Workspace.CurrentCamera.CoordinateFrame.lookVector  *  (ctrl.f+ctrl.b)  )) * speed -- ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p))
                                -- lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                if (ctrl.r) ~= 0  then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.r = ctrl.r - ctrl.l
                                    bv.velocity += (( game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector  )) --* speed
                                end
                                if (ctrl.l) ~= 0 then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.l = ctrl.l - ctrl.r
                                    bv.velocity += (( game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector    )) -- * speed
                                end
    
                            else
                                bv.velocity = Vector3.new(0,0.1,0)
                            end
                             --* CFrame.new((ctrl.l+ctrl.r),0,0) -- *50*speed/maxspeed * Vector3.new(0,0,0) --  
                        until getgenv().flying == false
                    end)

                    ctrl = {f = 0, b = 0, l = 0, r = 0}
                    lastctrl = {f = 0, b = 0, l = 0, r = 0}
                    speed = 0
                    bv:Destroy()
                    plr.Character:WaitForChild('Humanoid').PlatformStand = false
                end
                mouse.KeyDown:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 1
                    elseif key:lower() == "s" then
                        ctrl.b = -1
                    elseif key:lower() == "a" then
                        ctrl.l = -1
                    elseif key:lower() == "d" then
                        ctrl.r = 1
                    end
                end)
                mouse.KeyUp:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 0
                        speed = 0
                    elseif key:lower() == "s" then
                        ctrl.b = 0
                    elseif key:lower() == "a" then
                        ctrl.l = 0
                    elseif key:lower() == "d" then
                        ctrl.r = 0
                    end
                end)
                Fly()  
            end)
        end
    end)
    local ToggleBindNoclip= sector:AddToggle("Noclip", false, function(e)
        getgenv().NoClip = e 
        if getgenv().NoClip ==false and getgenv().istyping == false then
            getgenv().NoclipFunction:Disconnect()
        elseif getgenv().NoClip == true and getgenv().istyping == false then --  
            task.wait(0.1)
            local function NoclipLoop()
                pcall(function()
                    if getgenv().NoClip == true and game.Players.LocalPlayer.Character  and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >= 0 then
                        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(function()
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end)
                        end
                    else
                        getgenv().NoClip = false
                        ToggleBindNoclip:Set(false)
                    end
                end)
            end
            getgenv().NoclipFunction = RunService.Stepped:Connect(NoclipLoop)
        end
    end)

    sector:AddSlider("Speed", 0, 0, 200, 1, function(State)
        getgenv().Speed = State
    end)
    sector:AddSlider("Fly Speed", 0, 200, 300, 1, function(State)
        getgenv().FlySpeedSlide = State
        getgenv().CFspeed = State
    end)
    sector:AddSlider("Jump Height", 0, 0, 100, 1, function(State)
        getgenv().JHeight = State
    end)
    ToggleBindLion:AddKeybind()
    ToggleBindDynamic:AddKeybind()
    ToggleBindSpeed:AddKeybind()
    ToggleBindFlySpeed:AddKeybind()

    getgenv().selectedPlayer = ''

    local PlayerTP = sector:AddDropdown("Player Teleportation", getgenv().Players, "", false, function(dropdownv)
        getgenv().selectedPlayer = dropdownv
        PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    sector:AddButton('Teleport to Player',function()
        if game.Players:FindFirstChild(selectedPlayer) then 
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character:FindFirstChild('HumanoidRootPart').CFrame
            end)
        end
    end)
    sector:AddSeperator()

    game.Players.PlayerAdded:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        --Options.PlayerTP.Values = getgenv().Players 
        --PlayerTP:Set(getgenv().Players )
        PlayerTP:Add(xchild.Name)
        --PlayerTP:updateText(getgenv().selectedPlayer)
        --PlayerTP:Set(getgenv().Players)
        getgenv().CreatePlayerEsp(xchild)
    end)
    game.Players.PlayerRemoving:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        PlayerTP:Remove(xchild.Name)
    end)





    getgenv().Pickup = true
    sector:AddToggle("Auto Pickup", true, function(e)
        getgenv().Pickup = e
    end)
    sector:AddToggle("Chakra Sense", true, function(e)
        getgenv().CSense = e
        if e == true then 
            getgenv().snitchChakraSensers()
        end
    end)

    




    sector:AddButton('Respawn',function()
        getgenv().Respawn()
    end)

    sector:AddButton('Bug Npc',function()
        getgenv().BugNpc()
    end)
    sector:AddSeperator('Misc')
    sector:AddButton('Give Forcefield',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.ChakraPoints.ChakraPoint.OuterShard.CFrame
        task.wait(.2)
        local ohString1 = "ChakraPointSit"
        local ohInstance2 = workspace.ChakraPoints.ChakraPoint
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.ChakraPoints.ChakraPoint.OuterShard.CFrame
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohInstance2)
        task.wait(.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end)
    getgenv().antiwipemode =false
    sector:AddToggle('Anti Wipe Mode', false, function(xstate)
        getgenv().antiwipemode = xstate--xtstae
    end)
    sector:AddButton('Remove Forcefield',function()

        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        if getgenv().antiwipemode == false then 

            if game.Players.LocalPlayer.Character:FindFirstChild('ForceField') then 
                game.Players.LocalPlayer.Character:FindFirstChild('ForceField'):Destroy()
            end
            pcall(function()  if game.Players.LocalPlayer.Character:FindFirstChild('ForceField') then 
                game.Players.LocalPlayer.Character:FindFirstChild('ForceField'):Destroy()
            end end)
        else

            local AntiCF =CFrame.new(46.1274986, -42.0000076, -77.7578125, 0.79226476, 1.28260407e-08, 0.610177457, -2.96585174e-08, 1, 1.74889419e-08, -0.610177457, -3.19528297e-08, 0.79226476)
        
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = AntiCF
            task.wait(.2)
            local ohString1 = "ChakraPointStand"
            local ohInstance2 = workspace.ChakraPoints.ChakraPoint
    
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohInstance2)
        end

    end)
    sector:AddSeperator()
    sector:AddButton('Notify All Uchiha',function()
        for i,v in pairs(game.ReplicatedStorage.Settings:GetChildren()) do 
            if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild('Bloodline') and game.Players:FindFirstChild(v.Name) then 
                if v.Bloodline.Value == 'Uchiha' then 
                    getgenv().message(v.Name..' Is an Uchiha')
                end
            end
        end
    end)
    getgenv().safeinfinitechakra = false
    getgenv().justrefilled =false
    getgenv().justrefilledamount =0
    getgenv().chakrarefilltime = 0
    getgenv().chakrafill = 0
    getgenv().connectiontochakra = getgenv().connectiontochakra or nil
    if getgenv().connectiontochakra then getgenv().connectiontochakra:Disconnect() end
    getgenv().chakrasettings = false
    getgenv().UseMaxChakraSet = false
    getgenv().MaxChakraSet = 0
    getgenv().savedchakra = 0
    getgenv().savedmaxchakra = 0
    sector:AddSeperator('Chakra Functions')
    sector:AddToggle('Safe Infinite Chakra',false,function(statex)
        getgenv().safeinfinitechakra = statex
    end)
    sector:AddToggle('Use Settings for Chakra',false,function(statex)
        getgenv().chakrasettings = statex
    end)
    sector:AddSlider("Refill Time", 0, 0, 10, 100, function(State)
        getgenv().chakrarefilltime = State
    end)
    sector:AddSlider("Refill Amount", 0, 0, 10, 10, function(State)
        getgenv().chakrafill = State
    end)
    sector:AddButton('Set Inf Chakra Charge Amount',function()
        task.wait(.5)
        getgenv().MaxChakraSet = game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild('maxChakra').Value
    end)
    sector:AddToggle('Use Inf Chakra Charge Amount',false,function(statex)
        getgenv().UseMaxChakraSet = statex
    end)
    local function findglobal(name) 
        --getgenv().UseMaxChakraSet for _,v in next, getgenv() do 
    end
    sector:AddButton('Infinite Chakra',function()
        if getgenv().safeinfinitechakra == true then 
            task.spawn(function()
                -- local AzfakeChakraHudBackground = game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Loadout.HUD.ChakraTop:FindFirstChild('azfake')
                -- if not game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Loadout.HUD.ChakraTop:FindFirstChild('azfake') then 
                --     local ChakraCopy = game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Loadout.HUD.ChakraTop.ChakraAmount:Clone()
                --     ChakraCopy.Name = 'azfake'; ChakraCopy.Parent = game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Loadout.HUD.ChakraTop
                --     --AzfakeHudBackground = 
                --     AzfakeChakraHudBackground = ChakraCopy
                --     AzfakeChakraHudBackground.Visible =true
                -- end
                local function tposchakra()
                    -- AzfakeChakraHudBackground.Visible = true
                    game:GetService("Players").LocalPlayer.PlayerGui.ClientGui.Mainframe.Loadout.HUD.ChakraTop.ChakraAmount.Text = tostring(getgenv().savedchakra)
                end

                
                -- while task.wait() do 
                --     if getgenv().loopsUnload == true then print('safe chakra loop break end ') break end 

                --     if chakra then 
                --         if chakra.Value < maxchakra.Value   then -- and getgenv().justrefilled == false
                --             local needChakra = (chakra.Value - maxchakra.Value)
                --             if getgenv().justrefilledamount~=needChakra.Value then 
                --                 game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', needChakra)
                --                 game:GetService("ReplicatedStorage").Events.DataEvent:FireServer("Dash", "Chakra", Vector3.new(0,0,0))
                --             end

                --             -- task.wait(3) justrefilled = false
                            
                --         end
                --     end
                    
                -- end
                local chakra = game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild('chakra')
                local maxchakra = game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild('maxChakra')

                getgenv().savedchakra = chakra.Value
                getgenv().savedmaxchakra = maxchakra.Value
                --local savedWoken
                local AssumedChakraFromEntry = chakra.Value
                -- local savechakra = AssumedChakraFromEntry
                -- local saveMaxchakra = maxchakra.Value 

                local finallypassedorequaltosavechakra = false
                if chakra.Value > getgenv().savedmaxchakra then 
                    finallypassedorequaltosavechakra = true
                end
                local processstillon = false
                getgenv().connectiontochakra = chakra:GetPropertyChangedSignal('Value'):Connect(function(val)
                    local val = game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild('chakra').Value
                    local function updchakra()
                        -- local ohString1 = "Dash"
                        -- local ohString2 = 'Chakra'
                        -- local ohVector33 = Vector3.new(0,0,0)
                        
                        -- game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33)
                    end
                    if processstillon == true then return end
                    if val < getgenv().savedchakra and finallypassedorequaltosavechakra == true then print('changed') end
                    if val == getgenv().savedchakra and val==getgenv().savedmaxchakra and finallypassedorequaltosavechakra == false then finallypassedorequaltosavechakra = true return end
                    getgenv().savedchakra = val
                    processstillon = true
                    if chakra.Value > maxchakra.Value then
                        local needChakra = (chakra.Value - maxchakra.Value) 
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', needChakra)
                        getgenv().savedchakra = maxchakra.Value
                    end
                    if getgenv().savedchakra < getgenv().savedmaxchakra then 
                        local savechakra = chakra.Value 
                        local saveMaxchakra = maxchakra.Value
                        if getgenv().chakrasettings then 
                            --[[ 
                                -- keep adding the refill till its max
                                -- local forlooprun = 0 
                                -- local endedloop = false
                                -- local renderedaddition= 0
                                -- local function runCheckforLoop()
                                --     if savechakra +getgenv().chakrafill > saveMaxchakra and savechakra < saveMaxchakra then 
                                --         forlooprun = 1
                                --         local addition = savechakra +getgenv().chakrafill
                                --         renderedaddition = saveMaxchakra-addition
                                --     else
                                --         renderedaddition = saveMaxchakra-savechakra
                                --     end
                                -- end
                                -- runCheckforLoop()
                                -- local addingPer = renderedaddition/getgenv().chakrarefilltime

                                -- if getgenv().chakrafill == 0 then 
                                --     for i=1, addingPer do 
                                --         task.wait(getgenv().chakrarefilltime)
                                --         game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', -addingPer)
                                --     end
                                -- end

                                -- for i=1, saveMaxchakra - savechakra do -- 80/5
                                --     task.wait(getgenv().chakrarefilltime)
                                --     if savechakra < saveMaxchakra then  
                                --         if savechakra + getgenv().chakrafill < saveMaxchakra then  
                                --             game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', -getgenv().chakrafill)
                                --             savechakra += getgenv().chakrafill
                                --         else
                                --             game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', (savechakra - saveMaxchakra))
                                --             break
                                --         end 
                                --     end
                                -- end   
                            ]]
                            repeat 
                                if getgenv().chakrarefilltime==0 then 
                                    task.wait(0.0001)
                                else
                                    task.wait(getgenv().chakrarefilltime)
                                end
                                savechakra+=getgenv().chakrafill
                                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', -getgenv().chakrafill)
                            until savechakra >= saveMaxchakra -- timout after 11 seconds using task.delay(1) then add 1
                            getgenv().savedchakra = savechakra
                        else
                            local needChakra = (chakra.Value - maxchakra.Value)
                            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', needChakra)
                            getgenv().savedchakra = maxchakra.Value
                        end
                    end

                    updchakra()
                    tposchakra()

                end)
                finallypassedorequaltosavechakra = true
                processstillon =false
            end)
        else
            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer('TakeChakra', -math.huge*math.huge)
        end

        
    end)
    sector:AddSeperator('.')
    --     sector:AddButton('Heal',getgenv().Injury<{txt='areyousureyouwannaheal?',y='yes',n='no'})
    sector:AddToggle('No Void',true,function(statex)
        getgenv().AzfakeGlobalTables['bloodlines']['voidwalk']= statex
    end)
    sector:AddButton('Notify All Hyuga',function()
        for i,v in pairs(game.ReplicatedStorage.Settings:GetChildren()) do 
            if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild('Bloodline') and game.Players:FindFirstChild(v.Name) then 
                if v.Bloodline.Value == 'Hyuga' then 
                    getgenv().message(v.Name..' Is a Hyuga')
                end
            end
        end
    end)
    sector:AddButton('Heal',getgenv().Injury)
    sector:AddSeperator()
    getgenv().ServerHopToNonUsedServer = function()
        task.spawn(function()
            local teleportId = ''
            xId = game.PlaceId
            if not isfile('hopperLog.txt') then writefile('hopperLog.txt','return {}') end
            local xlog = readfile('hopperLog.txt'); 
            local xt = loadstring(xlog)()
            local Bunda = ''
            table.insert(xt,game.JobId)
            for _,v in pairs(xt) do if _ == 1 then Bunda = v else Bunda = Bunda..','..v; end end 
            
            -- game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
            --     if State == Enum.TeleportState.Started then
            --         syn.queue_on_teleport("repeat task.wait(); until game:IsLoaded();  writefile('hopperLog.txt',")
            --     end
            -- end)
            writefile('hopperLog.txt','return {')
            for _,u in pairs(xt) do 
                appendfile('hopperLog.txt','"'..u..'",')
            end
            writefile('hopperLog.txt',readfile('hopperLog.txt'):sub(1,string.len(readfile('hopperLog.txt'))-1))
            appendfile('hopperLog.txt','}')
            --writefile('hopperLog.txt','return {'.."'"..Bunda.."'"..'}')
            local DataEvent = nil 
            if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent')
            end
            if game.ReplicatedStorage:FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('DataEvent')
            end
            log = readfile('hopperLog.txt'); 
            xt = loadstring(xlog)()
            repeat 
                task.wait();
                xlog = readfile('hopperLog.txt'); 
                xt = loadstring(xlog)()
                for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                    if not server:FindFirstChild('Current') and not table.find(xt,string.split(server.Value,' ')[1]) then 
                        local tp = math.random(1,2)
                        if tp == 2 then 
                            teleportId = string.split(server.Value,' ')[1]
                        end
                    end
                end
                DataEvent:FireServer('ServerTeleport',teleportId)
            until game.PlaceId ~= xId
        end)
    end
    getgenv().ServerHopGame = function()
        task.spawn(function()
            local teleportId = ''
            xId = game.PlaceId
            repeat 
                task.wait();
                for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                    if not server:FindFirstChild('Current') then 
                        local tp = math.random(1,2)
                        if tp == 2 then 
                            teleportId = string.split(server.Value,' ')[1]
                        end
                    end
                end
                game.ReplicatedStorage.Events.DataEvent:FireServer('ServerTeleport',teleportId)
            until game.PlaceId ~= xId
        end)
    end
    local chakrapoints = {}
    for _,v in pairs(workspace:WaitForChild('ChakraPoints'):GetChildren()) do 
        table.insert(chakrapoints,v.PointName.Value)
    end
    tpsect:AddButton('ServerHop', function()
        getgenv().ServerHopToNonUsedServer()
    end)
    tpsect:AddDropdown("ChakraPointTP", chakrapoints, "", false, function(dropdownv)
        getgenv().teleportingPoint = dropdownv
    end)
    tpsect:AddButton('TP to Chakra Point', getgenv().teleportPoint)
    tpsect:AddSeperator('Developer and Usage') -- tools
    tpsect:AddTextbox('Job Id Teleport',nil,function(State)
        getgenv().listfiring = State
    end)
    tpsect:AddButton('join server', function()
        getgenv().toList({fire = State})
    end)
    tpsect:AddButton('Get JobId', function() setclipboard(game.JobId) end)


    mt.__index = newcclosure(function(a,b)
        -- if tostring(b) == 'WalkSpeed' and getgenv().Speeding == 'eee' then -- true (bool)
        --     return 16
        if tostring(a) == 'TimeOfDay' then
            return 12
        elseif tostring(a) == 'ClockTime' then
            return 12
        end 
        return oldind(a,b)
    end)

    getgenv().purchaseIt = function()

        local ohString1 = "Pay"
        local ohNumber2 = 0
        local ohString3 = getgenv().buying
        local ohNumber4 = 1

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohNumber4)
    
    end


    purchases:AddDropdown("Buy", getgenv().buyable, "", false, function(dropdown)
        getgenv().buying = dropdown
    end)
    purchases:AddTextbox("Buying Item Name", ' ', function(State)
        getgenv().buying = State
    end)
    purchases:AddButton('Buy',getgenv().purchaseIt)
    purchases:AddSeperator()
    purchases:AddButton('Implant',function()
        local ohString1 = "ImplantEyes"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
    end)
    purchases:AddSeperator()
    purchases:AddTextbox("Sell Item", " ", function(State)
        getgenv().Selling = State
    end)
    purchases:AddLabel("Selling Item example:\nRedsmith's Mold/25")

    purchases:AddButton('Sell',getgenv().Sell)



















    -- Farming
    farming:AddDropdown("NPC Teleport", getgenv().npcs, "", false, function(dropdownv)
        getgenv().teleportNPC = dropdownv
    end)

    -- Options.NpcTP:OnChanged(function()
    --     print('Dropdown got changed. New value:', Options.NpcTPs.Value)
    -- end)
    farming:AddButton('Teleport To Npc',function()
        if getgenv().teleportNPC ~= '' then -- make merchant stop going to one merchant; maybe name them differnely like merchant1 merchant2
            -- game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = workspace:FindFirstChild(Options.NpcTP.Value).HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = workspace:FindFirstChild(getgenv().teleportNPC).HumanoidRootPart.CFrame
        end
    end)

    getgenv().startedAgeFarm = nil
    farming:AddToggle("Age Farm", false, function(e)
        if e == true then 
            getgenv().startedAgeFarm = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local cframes = {
                CFrame.new(2302.14941, 205.59671, 480.440674, 0.439134836, -5.06444451e-08, -0.898421168, 2.23042971e-08, 1, -4.54684859e-08, 0.898421168, -7.1856375e-11, 0.439134836);
                CFrame.new(-867.02124, 512.270447, -1445.59094, -0.526252568, 1.77989345e-09, -0.850328326, -2.98945468e-09, 1, 3.94330213e-09, 0.850328326, 4.61719063e-09, -0.526252568);
                CFrame.new(60.834156, 421.269409, -2415.19971, 0.7336694, -3.13824025e-08, 0.6795066, 3.64389443e-08, 1, 6.84065027e-09, -0.6795066, 1.97417265e-08, 0.7336694);
                CFrame.new(2366.22485, -82.5000305, -877.963623, 0.993157148, 1.04164222e-07, 0.116785459, -1.09432555e-07, 1, 3.86991914e-08, -0.116785459, -5.121451e-08, 0.993157148);
                CFrame.new(3127.62183, 125.979691, -718.468628, -0.217260301, 1.92772216e-08, 0.976113677, -7.10449584e-08, 1, -3.55619143e-08, -0.976113677, -7.7074148e-08, -0.217260301);
                CFrame.new(2930.01099, 208.339996, 30.3952866, 0.693224549, -7.51574021e-08, -0.720721662, 1.50509133e-10, 1, -1.04135985e-07, 0.720721662, 7.20811499e-08, 0.693224549);
                CFrame.new(-497.141632, 102.999977, 1106.42175, -0.0488466322, 1.32986342e-08, -0.998806298, 6.248146e-09, 1, 1.30089619e-08, 0.998806298, -5.60524338e-09, -0.0488466322);
                CFrame.new(-2743.19238, -183.278244, 536.467896, -0.534610391, -0.00681035547, -0.845071197, -0.000511899765, 0.999969959, -0.00773483189, 0.845098495, -0.00370252971, -0.534597814);
                
            }
            -- teleport to arkomo and give ff
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframes[math.random(1,#cframes)]
        else
            if getgenv().startedAgeFarm ~=nil then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().startedAgeFarm 
            else

            end
        end
    end)


    getgenv().selectedskill = ''
    farming:AddDropdown("Skill Giver",getgenv().AzfakeGlobalTables['bloodlines']['skills'], "", false, function(dropdownv)
        getgenv().selectedskill = dropdownv
    end)
    farming:AddButton('Give Skill',function()
        local ohString1 = "UnlockSkill"
        local ohString2 = getgenv().selectedskill
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end)
    getgenv().CloneQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Clones Debacle"
        local ohString3 = "DontComplete"
    
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Clones Debacle"
    
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "Clones Debacle"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().HostageAuto = function()
        local Old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
        local HostageCFrame = CFrame.new(2224.56909, -240.500031, -833.920227, -0.915702045, -1.53603352e-08, 0.401857942, -1.63921374e-08, 1, 8.71008043e-10, -0.401857942, -5.78972648e-09, -0.915702045)
        local PadCFrame = CFrame.new(2143.3313, -240.500046, -780.24292, -0.999846399, 8.11863927e-08, -0.0175278168, 8.11453518e-08, 1, 3.05240122e-09, 0.0175278168, 1.62963132e-09, -0.999846399)

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "DontComplete"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
        local ohString1 = "StartQuest"
        local ohString2 = "Hostage Retrieval"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = PadCFrame

        task.wait(.5)


        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = HostageCFrame

        task.wait(1)

        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        local ohString1 = "Carry"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)
        task.wait(1)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
    end

    getgenv().CCropsAuto = function()
        local Old = game.Players.LocalPlayer.Character.PrimaryPart.CFrame

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Search For The Chakra Crops"
        local ohString3 = "DontComplete"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
        local ohString1 = "StartQuest"
        local ohString2 = "Search For The Chakra Crops"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)



        task.wait(0.5)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "Search For The Chakra Crops"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Search For The Chakra Crops"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
    end
    getgenv().spawnLavarossa = function()
        task.spawn(function()
            -- local Lav = CFrame.new(-550.923279, -314.055084, -219.727982, 0.809323013, -5.16854897e-08, -0.58736378, 3.74377969e-08, 1, -3.64105155e-08, 0.58736378, 7.47826157e-09, 0.809323013)
            -- local Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Lav
    
            -- task.wait(.35)
    
            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame *= Lav * CFrame.new(0,-15,0)
            -- game.Players.LocalPlayer.Character.Head:Destroy()


            -- wait(6.1)

            -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Lav 
            firetouchinterest(workspace.Floor,workspace.Floor,0)

        end)
    end
    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
    getgenv().spawnManda = function()
        -- local Manda = CFrame.new(1503.26465, -536.00061, 734.973633, -0.235978663, -2.37474111e-08, 0.971758246, 5.78141233e-08, 1, 3.84769692e-08, -0.971758246, 6.52610979e-08, -0.235978663)
        -- local Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Manda

        -- task.wait(.2)


        -- game.Players.LocalPlayer.Character.PrimaryPart.CFrame = Old
        for _,v in pairs(workspace:GetChildren()) do 
            if v.Name == 'WeirdFloor' then 
                firetouchinterest(v,v,0)
            end
        end
    end



    getgenv().KamuiEssence =function()
        local ohString1 = "StartQuest"
        local ohString2 = "Kamui Resistance Training"
        
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Kamui Resistance Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portal.ObitoKamui.CFrame

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Hostage Retrieval"
        local ohString3 = "Kamui Resistance Training"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)


        local ohString1 = "GetQuestProgress"
        local ohString2 = "Kamui Resistance Training"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

    end
    getgenv().InnKeeper = function()
        local ohString1 = "StartQuest"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "InnKeeper's Reunion"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Lavaroldy = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Humbling Lavarossa"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Humbling Lavarossa"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "Humbling Lavarossa"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().ParkourQuest = function()
        local inst = workspace:FindFirstChild('Training Bells')
        local cd = inst:FindFirstChildWhichIsA('ClickDetector')
        fireclickdetector(inst:FindFirstChildWhichIsA('ClickDetector'))
        if inst:FindFirstChild('ID') then
            local ohString1 = "PickUp"
            local ohNumber2 =  inst:FindFirstChild('ID').Value
            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNumber2)
        end
        local ohString1 = "StartQuest"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().ParkourQuestSealing = function()
        local inst = workspace:FindFirstChild('Sealing Bells')
        local cd = inst:FindFirstChildWhichIsA('ClickDetector')
        fireclickdetector(inst:FindFirstChildWhichIsA('ClickDetector'))
        if inst:FindFirstChild('ID') then
            local ohString1 = "PickUp"
            local ohNumber2 =  inst:FindFirstChild('ID').Value
            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNumber2)
        end
        local ohString1 = "StartQuest"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Parkour Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Damsel = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bracelet Retrieval"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bracelet Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Bracelet Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().Slowcoach = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local store = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(364.530212, 44.4999847, -1026.24524, 0.047671169, -1.02416728e-10, -0.998863101, 3.05318686e-08, 1, 1.35461331e-09, 0.998863101, -3.05617327e-08, 0.047671169)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "A Run For Your Life"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "A Run For Your Life"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "StartQuest"
        local ohString2 = "A Run For Your Life"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        local ohString1 = "ActivateButton"
        local ohInstance2 = workspace.RiverGearsActivation

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohInstance2)
        task.wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = store
    end
    getgenv().BoliveQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bolive Retrieval"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Bolive Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Bolive Retrieval"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().SellFruits = function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "GetQuestProgress"
        local ohString2 = "Fruit Cooker"
        local ohString3 = "DontComplete"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "SellingBulk"
        local ohNumber2 = 83
        local ohString3 = "Fruit"
        local ohString4 = "Fish"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohString4)
    end
    getgenv().combatQuest = function()
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Combat Training"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Combat Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Combat Training"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
    end
    getgenv().freshwater = function()
        local ohString1 = "Pay"
        local ohNumber2 = 0
        local ohString3 = 'Bowl'
        local ohNumber4 = 1

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohNumber2, ohString3, ohNumber4)
        task.wait(1)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "Item"
        local ohString2 = "Selected"
        local ohString3 = "Bowl"

        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohString3)
        task.wait(1)
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer('FreshwaterBowl')
        task.wait(5)
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Quenching Thirst"
        local ohString3 = "DontComplete"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohString3)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "GetQuestProgress"
        local ohString2 = "Quenching Thirst"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        local ohString1 = "StartQuest"
        local ohString2 = "Quenching Thirst"
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)

    end
    farming:AddButton('Hostage Quest', function()
        getgenv().HostageAuto()
    end)
    farming:AddButton('Chakra Crops Quest', function()
        getgenv().CCropsAuto()
    end)
    farming:AddButton('Spawn Lavarossa', function()
        getgenv().spawnLavarossa()
    end)
    farming:AddSeperator()
    farming:AddSeperator()
    farming:AddButton('Spawn Manda', function()
        getgenv().spawnManda()
    end)
    farming:AddButton('Kamui Essence', function()
        getgenv().KamuiEssence()
    end)
    farming:AddButton('Innkeeper', function()
        getgenv().InnKeeper()
    end)
    farming:AddButton('ParkourQuest', function()
        getgenv().ParkourQuest()
    end)
    farming:AddButton('Parkour Sealing Quest', function()
        getgenv().ParkourQuestSealing()
    end)
    farming:AddButton('Combat Quest', function()
        getgenv().combatQuest()
    end)
    farming:AddButton('Freshwater Quest', function()
        getgenv().freshwater()
    end)
    farming:AddButton('Clones Quest', function()
        getgenv().CloneQuest()
    end)
    getgenv().masterJutsu = function()
        local ohString1 = "MasterJutsu"

        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1)
    end
    farming:AddButton('Master Jutsu', function()
        getgenv().masterJutsu()
    end)
    farming:AddSeperator()
    farming:AddButton('DamselQuest', function()
        getgenv().Damsel()
    end)
    farming:AddButton('Slowcoach Quest', function()
        getgenv().Slowcoach()
    end)
    farming:AddButton('Bolive Quest', function()
        getgenv().BoliveQuest()
    end)
    getgenv().NPCFarming = ''
    getgenv().DeathTick = 6
    getgenv().UsingMove = ''
    farming:AddSeperator('Auto Section')
    farming:AddDropdown("Farming", getgenv().AzfakeGlobalTables['bloodlines']['killnpc'], "", false, function(dropdownv)
        getgenv().NPCFarming = dropdownv
    end)
    farming:AddDropdown("Death Tick", {'1','2','3','4','5','6','7','8','9','10'}, "", false, function(dropdownv)
        getgenv().DeathTick = dropdownv
    end)
    farming:AddTextbox("Auto Move", ' ', function(State)
        getgenv().UsingMove = State
    end)

    getgenv().NPCLookingAt = ''
    getgenv().farming = false
    getgenv().farmingnpc = nil
    getgenv().lookatpos = nil
    getgenv().teleportNPC = ''
    getgenv().farm = function()
        if getgenv().NPCFarming ~= nil then 
            task.spawn(function()
                local npc = nil 
                for i,v in pairs(workspace:GetChildren()) do 
                    if v.Name == getgenv().NPCFarming then 
                        if v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then 
                            npc = v
                            getgenv().farmingnpc = v
                            print('npc set')
                        end
                    end
                    if v.Name:sub(1,4) == getgenv().NPCFarming then 
                        if v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then 
                            npc = v
                            getgenv().farmingnpc = v
                            print('npc set2')
                        end
                    end
                end
                if npc then 
                    getgenv().NPCLookingAt = npc.Name
                    local npcfarm =  workspace:FindFirstChild(npc.Name) or workspace:FindFirstChild(npc.Name)
                    getgenv().farming = true
                    local died = false
                    local moveactive = false
                    local formation = 'back' -- left forward right back rpeat
                    getgenv().lookatpos = 'back'
                    task.spawn(function() repeat task.wait(); until npcfarm == nil end)
                    task.spawn(function()
                        repeat 
                            task.wait(0.2)
                            if formation == 'back' then
                                task.wait();
                                formation = 'left'
                                getgenv().lookatpos = formation
                            elseif formation == 'left' then 
                                task.wait();
                                formation = 'forward';
                                getgenv().lookatpos = formation
                            elseif formation == 'forward' then 
                                task.wait();
                                formation = 'right'
                                getgenv().lookatpos = formation
                            elseif formation == 'right' then 
                                task.wait()
                                formation = 'back'
                                getgenv().lookatpos = formation
                            end
                            task.wait(.2)
                        until not npcfarm or  getgenv().farming == false or npc.Humanoid.Health <= 0
                    end)
                    
                    task.spawn(function()
                        repeat 
                            task.wait(.2)
                            if getgenv().DeathTick and died == false then -- tonumber(Options.DeathTick.Value)
                                task.wait(tonumber(getgenv().DeathTick) or 3)
                                died = true
                                moveactive = 'none'
                                getgenv().BugNpc()
                                task.wait(2)
                                died = false
                                task.wait(tonumber(getgenv().DeathTick) or 7)
                                died = nil
                                moveactive = nil
                                task.spawn(function()
                                    task.wait(4)
                                    died = false
                                end)
                            end
                        until not npcfarm or  getgenv().farming == false or npc.Humanoid.Health <= 0
                    end)

                    task.spawn(function()
                        repeat 
                            task.wait()
                            if died == false and getgenv().UsingMove ~= '' and moveactive == nil  then 
                                moveactive = true 
                                local ohString1 = "startSkill"
                                task.wait()
                                local ohString2 = getgenv().UsingMove
                                local ohVector33 = Vector3.new(0,0,0)
                                local ohBoolean4 = true
                                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33, ohBoolean4)
                                local ohString1 = "ReleaseSkill"
                                game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1)       
                                moveactive = false
                                task.wait(6)
                            end
                        until not npcfarm or  getgenv().farming == false or npc.Humanoid.Health <= 0
                    end)

                    local CFrameToTeleport = CFrame.new(0,0,4)
                    task.spawn(function()
                        repeat 
                            task.wait(0.3)
                            if workspace:FindFirstChild(getgenv().NPCLookingAt) and getgenv().farming == true  then 
                                game.Players.LocalPlayer.Character:WaitForChild('Head')
                                if getgenv().lookatpos == 'back' then 
                                    workspace.Camera.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.Head.Position,workspace:FindFirstChild(getgenv().NPCLookingAt).HumanoidRootPart.Position - Vector3.new(0,7,0))
                                elseif getgenv().lookatpos == 'left' then
                                    workspace.Camera.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.Head.Position,workspace:FindFirstChild(getgenv().NPCLookingAt).HumanoidRootPart.Position - Vector3.new(-7,7,0))
                                elseif getgenv().lookatpos == 'right' then
                                    workspace.Camera.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.Head.Position,workspace:FindFirstChild(getgenv().NPCLookingAt).HumanoidRootPart.Position - Vector3.new(7,7,0))
                                elseif getgenv().lookatpos == 'forward' then
                                    workspace.Camera.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.Head.Position,workspace:FindFirstChild(getgenv().NPCLookingAt).HumanoidRootPart.Position - Vector3.new(0,7,0))
                                end
                            end
                        until not npcfarm or  getgenv().farming == false or npc.Humanoid.Health <= 0
                    end)
                    repeat
                        if formation == 'left' then CFrameToTeleport = CFrame.new(-4,0,0) elseif formation == 'forward' then CFrameToTeleport = CFrame.new(0,0,-4) elseif formation == 'right' then CFrameToTeleport = CFrame.new(4,0,0) else CFrameToTeleport = CFrame.new(0,0,4)  end
                        task.wait()
                        if npc:FindFirstChild('HumanoidRootPart') and died == false  and moveactive == false then 
                            task.wait()
                            local ohString1 = "CheckMeleeHit"
                            local ohNil2 = nil
                            local ohString3 = "NormalAttack"
                            game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohNil2, ohString3)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrameToTeleport
                        end
                    until not npcfarm or getgenv().farming == false or npc.Humanoid.Health <= 0
                end    
            end)

        end
    end
    getgenv().stopfarm = function()
        getgenv().NPCLookingAt = ''
        getgenv().farming = false 
        getgenv().farmingnpc = nil 
        getgenv().lookatpos = nil
    end
    farming:AddButton('Start Farm', function()
        getgenv().farming = true
        getgenv().farm()
    end)
    farming:AddButton('End Farm', function()
        getgenv().farming = false
        getgenv().stopfarm()
    end)
    farming:AddSeperator('')






































    -- end of farming
































    getgenv().storecf = nil
    getgenv().storepos = nil


    task.spawn(function()
        while task.wait(30) do 
            if game:GetService("Workspace"):FindFirstChild('RainParts') then 
                for _,v in pairs(game:GetService("Workspace"):FindFirstChild('RainParts'):GetChildren()) do 
                    v:FindFirstChildWhichIsA('ParticleEmitter').Enabled = false
                    game:GetService("Players").LocalPlayer.SoundPlaylist.RainSound.Playing = false
                end
            end
            -- for i,v in pairs(workspace:GetChildren()) do 
            --     if v:FindFirstChild('Void')  then v:Destroy() end 
            --     for _,e in pairs(v:GetChildren()) do 
            --         if e:FindFirstChild('Void')  then e:Destroy() end 
            --         for __,x in pairs(e:GetChildren()) do 
            --             if x:FindFirstChild('Void') then x:Destroy() end 
            --         end
            --     end
            -- end
        end
    end)

    -- if getgenv().premiumWhitelist == true then 
        
    -- else
    --     tp1:AddLabel('Oops, you need premium!')
    -- end
    espsector:AddColorpicker('Health Display Colour',Color3.fromRGB(255, 255,255), function(ztx)
        getgenv().HealthDisplayColour = ztx
    end)
    espsector:AddColorpicker('Distance Colour',Color3.fromRGB(255, 255,255), function(ztx)
        getgenv().DistanceColour = ztx
    end)
    espsector:AddColorpicker('ESP Name Colour',Color3.fromRGB(255, 255,255), function(ztx)
        getgenv().NameColour = ztx
    end)
    espsector:AddColorpicker('ESP General Colour',Color3.fromRGB(255, 255,255), function(ztx)
        getgenv().ESPColour = ztx
    end)
    espsector:AddSeperator('Toggles')
    espsector:AddToggle("ESP", true, function(e)
        getgenv().esp = e
    end)
    espsector:AddToggle("Player ESP", true, function(e)
        getgenv().playeresp = e
    end)
    espsector:AddSeperator()
    espsector:AddToggle("Streamer Mode", false, function(e)
        getgenv().streamermode = e
    end)
    espsector:AddToggle("Show Distance", false, function(e)
        getgenv().showDistance = e
    end)
    espsector:AddToggle("Show Health", false, function(e)
        getgenv().showHealth = e
    end)
    espsector:AddToggle("Show Tracers", false, function(e)
        getgenv().tracers = e
    end)

    getgenv().playeresp = true
    getgenv().esp = true;
    
    
    -- local label = sector:AddLabel("Label")



    getgenv().Sell = function()
        local ohString1 = "Item"
        local ohString2 = "Selected"
        local ohString3 = string.split(Options.Selling.Value,'/')[1]
        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohString3)
        ohString1 = "SellTrinket"
        ohString2 = string.split(Options.Selling.Value,'/')[1]
        ohNumber3 = tonumber(string.split(Options.Selling.Value,'/')[2])
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohNumber3)
    end
    getgenv().SellBulk = function()
        local ohString1 = "Item"
        local ohString2 = "Selected"
        local ohString3 = string.split(Options.Selling.Value,'/')[1]
        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohString3)
        ohString1 = "SellTrinket"
        ohString2 = string.split(Options.Selling.Value,'/')[1]
        ohNumber3 = tonumber(string.split(Options.Selling.Value,'/')[2])
        game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2, ohNumber3)
    end












    task.spawn(function()
        task.wait()
        for i,v in pairs(game.Players:GetChildren()) do 
            if v:IsA('Player') then 
                getgenv().CreatePlayerEsp(v)
            end
        end
    end)













    task.spawn(function()
        task.wait(6)
        repeat task.wait(1) until getgenv().ServerHopChakra ~= nil and getgenv().premiumWhitelist == true and getgenv().ServerHopChakra == true 
        task.wait(0.5)
        if getgenv().ServerHopChakra == true then 
            if not game.ReplicatedStorage:FindFirstChild('Chakra Fruit') then 
                Notify('','Chakra Fruit NOT Found','untilClick')
                task.wait(1)
                Notify('','Serverhopping.. ','untilClick')
                task.wait(.5)
                Notify('','Grey screen = no servers available.. ','untilClick')
                getgenv().ServerHopToNonUsedServer()
            else
                local ohString1 = "LoadedIn"

                game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1)
                Notify('','Chakra Fruit Found','untilClick')
                game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.ReplicatedStorage:FindFirstChild('Chakra Fruit').CFrame
                game.ReplicatedStorage:WaitForChild('Chakra Fruit',10)
                game.Workspace:WaitForChild('Chakra Fruit',10)
                for _,v in pairs(workspace:GetChildren()) do 
                    getgenv().function_pick(v)
                end
                for _,v in pairs(game.ReplicatedStorage:GetChildren()) do 
                    if v.Name == 'Chakra Fruit' then 
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = game.ReplicatedStorage:FindFirstChild('Chakra Fruit').CFrame
                        for _,v in pairs(workspace:GetChildren()) do 
                            getgenv().function_pick(v)
                        end
                        task.wait(10)
                    end
                end
            end
        end
    end)




    getgenv().currenttween = nil
    task.spawn(function()
        while task.wait() do 
            game:GetService("Players").LocalPlayer.SoundPlaylist.RainSound.Playing = false
            if getgenv().loopsUnload == true then if getgenv().connectiontochakra then  getgenv().connectiontochakra:Disconnect() end  print('true break') break end
            if getgenv().AzfakeGlobalTables['bloodlines']['voidwalk'] == true then 
                for i,v in pairs(workspace:GetChildren()) do 
                    -- if v:FindFirstChild('Void')  then  v:FindFirstChild('Void').CanCollide = true; v:FindFirstChild('Void').CanTouch = true end 
                    -- for _,e in pairs(v:GetChildren()) do 
                    --     if e:FindFirstChild('Void')  then e:FindFirstChild('Void').CanCollide = true; e:FindFirstChild('Void').CanTouch = true  end 
                    --     for __,x in pairs(e:GetChildren()) do 
                    --         if x:FindFirstChild('Void') then x:FindFirstChild('Void').CanCollide = true; x:FindFirstChild('Void').CanTouch = true end 
                    --     end
                    -- end
                    if v.Name:find('Void') and v:IsA('Part') then 
                        v.CanCollide = false;
                        v.CanTouch = false;
                        for k,c in next, v:GetChildren() do 
                            if c.Name:find('Void') and c:IsA('Part') then 
                                c.CanCollide = false;
                                c.CanTouch = false; -- not voidwalk
                            end
                        end
                    end
                end
            else
                for i,v in pairs(workspace:GetChildren()) do 
                    if v.Name:find('Void') and v:IsA('Part') then 
                        v.CanCollide = true;
                        v.CanTouch = true;
                        for k,c in next, v:GetChildren() do 
                            if c.Name:find('Void') and c:IsA('Part') then 
                                c.CanCollide = true;
                                c.CanTouch = true; -- not voidwalk
                            end
                        end
                    end
                end
            end
            local state1 = getgenv().DynamicPicker
            local state2 = getgenv().LionPicker
            if getgenv().Speeding == true and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed end
            --getgenv().CFspeed = getgenv().FlySpeedSlide
            getgenv().lockoning = nil
            --getgenv().JumpHeight = getgenv().Height
            if table.find(getgenv().AzfakeGlobalTables['bloodlines']['spec_users'],game.Players.LocalPlayer.Name) or getgenv().AzfakeGlobalTables['bloodlines']['spec_usable'] == true  then 
                local kamuistate = KamuiButton
                if kamuistate and getgenv().istyping == false then
                   
                    if getgenv().inkamui == true then 
                        getgenv().inkamui = false
                        -- for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        --     if v:IsA('BasePart') or v:IsA('Part') then 
                        --         v.Massless = not v.Massless 
                        --         v.CanCollide = not v.CanCollide
                        --     elseif v:IsA('Model') then
                        --         for _,part in pairs(v:GetChildren()) do 
                        --             if part:IsA('BasePart') or part:IsA('Part') then 
                        --                 part.Massless = not part.Massless
                        --                 part.CanCollide = not part.CanCollide
                        --             end
                        --         end
                        --     end
                        -- end
                        local nowcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        local anim = Instance.new('Animation'); anim.AnimationId = 'rbxassetid://7033073535'
                        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim):Play()
                        local ohString1 = "Dash"
                        local ohString2 = "Chakra"
                        local ohVector33 = Vector3.new(43.85448455810547, -218.99905395507812, 847.8656005859375)
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(0.5),{Orientation = Vector3.new(0,0,45)}):Play()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        task.wait(0.1)
                        -- for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        --     if v:IsA('BasePart') or v:IsA('Part') then 
                        --         v.Massless = not v.Massless 
                        --         v.CanCollide = not v.CanCollide
                        --     elseif v:IsA('Model') then
                        --         for _,part in pairs(v:GetChildren()) do 
                        --             if part:IsA('BasePart') or part:IsA('Part') then 
                        --                 part.Massless = not part.Massless
                        --                 part.CanCollide = not part.CanCollide
                        --             end
                        --         end
                        --     end
                        -- end
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().storecf-- + Vector3.new(x.X,0,x.Z) --(nowcframe - getgenv().storepos)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position -= getgenv().storepos - nowcframe
                        
                    else
                        getgenv().inkamui = true
                        -- for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        --     if v:IsA('BasePart') or v:IsA('Part') then 
                        --         v.Massless = not v.Massless 
                        --         v.CanCollide = not v.CanCollide
                        --     elseif v:IsA('Model') then
                        --         for _,part in pairs(v:GetChildren()) do 
                        --             if part:IsA('BasePart') or part:IsA('Part') then 
                        --                 part.Massless = not part.Massless
                        --                 part.CanCollide = not part.CanCollide
                        --             end
                        --         end
                        --     end
                        -- end
                        getgenv().storecf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        local anim = Instance.new('Animation'); anim.AnimationId = 'rbxassetid://7033073535'
                        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim):Play()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(0.5),{Orientation = Vector3.new(0,0,45)}):Play()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        local ohString1 = "Dash"
                        local ohString2 = "Chakra"
                        local ohVector33 = Vector3.new(43.85448455810547, -218.99905395507812, 847.8656005859375)
                        game:GetService("ReplicatedStorage").Events.DataEvent:FireServer(ohString1, ohString2, ohVector33)
                        task.wait(0.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10148.0166, -335.53418, 11.8725147, -0.629359782, 2.26174066e-08, -0.777114093, -1.99445651e-08, 1, 4.52568223e-08, 0.777114093, 4.39820269e-08, -0.629359782)
                        getgenv().storepos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        -- for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        --     if v:IsA('BasePart') or v:IsA('Part') then 
                        --         v.Massless = not v.Massless 
                        --         v.CanCollide = not v.CanCollide
                        --     elseif v:IsA('Model') then
                        --         for _,part in pairs(v:GetChildren()) do 
                        --             if part:IsA('BasePart') or part:IsA('Part') then 
                        --                 part.Massless = not part.Massless
                        --                 part.CanCollide = not part.CanCollide
                        --             end
                        --         end
                        --     end
                        -- end
                    end

                end
            end
            if state1 and getgenv().istyping == false then
                local closest_person = nil 
                local closest_rootps = nil 
                for i,v in pairs(workspace:GetChildren()) do 
                    if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Head') and v:FindFirstChild('Humanoid').Health > 0 and v ~= game.Players.LocalPlayer.Character and  game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 60 then 
                            if closest_rootps == nil then 
                                closest_rootps = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                closest_person = v 
                            else
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude < closest_rootps then 
                                    closest_person = v 
                                    closest_rootps = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                end
                            end
                        end
                    end
                end
                if closest_person ~= nil then 
                    task.spawn(function()
                        game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'), TweenInfo.new(0.5), {CFrame = closest_person.HumanoidRootPart.CFrame}):Play()
                    end)
                    getgenv().lockoning = closest_person
                end
            end
            if state2 and getgenv().istyping == false then
                local closest_person = nil 
                local closest_rootps = nil 
                for i,v in pairs(workspace:GetChildren()) do 
                    if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Head') and v:FindFirstChild('Humanoid').Health > 0 and v ~= game.Players.LocalPlayer.Character and  game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 75 then 
                            if closest_rootps == nil then 
                                closest_rootps = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                closest_person = v 
                            else
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude < closest_rootps then 
                                    closest_person = v 
                                    closest_rootps = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                end
                            end
                        end
                    end
                end
                if closest_person ~= nil then 
                    task.spawn(function()
                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = closest_person.HumanoidRootPart.CFrame * CFrame.new(0,0,1.5)
                    end)
                    getgenv().lockoning = closest_person
                end
            end
            if getgenv().lockoning ~= nil then 
                if workspace:FindFirstChild(getgenv().lockoning.Name) then 
                    workspace.Camera.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.Head.Position,workspace:FindFirstChild(getgenv().lockoning.Name).Head.Position)
                end
            end

            if getgenv().sinking == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart' then 
                    if not game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart':FindFirstChild'sinkvelocity' then 
                        local velo = Instance.new('BodyVelocity');
                        velo.Name = 'sinkvelocity';
                        velo.Velocity = Vector3.new(0,-10,0)
                        velo.Parent = game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'
                        local function sinkloop()
                            pcall(function()
                                if getgenv().sinking == true and game.Players.LocalPlayer.Character  and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >= 0 then
                                    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                        pcall(function()
                                            if child:IsA("Part") and child.CanCollide == true then
                                                child.CanCollide = false
                                            end
                                        end)
                                    end
                                    getgenv().currenttween = game.TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart',
                                    TweenInfo.new(1), {CFrame = game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame* CFrame.new(0,-10,0)}
                                    ):Play()
                                end
                            end)
                        end
                        getgenv().sinkingfunc = RunService.Stepped:Connect(sinkloop)
                    end
                end
            else 
                if game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart' and game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart':FindFirstChild'sinkvelocity' then 
                    game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart':FindFirstChild('sinkvelocity'):Destroy()
                end
                if getgenv().sinkingfunc ~= nil then getgenv().sinkingfunc:Disconnect() end
                if getgenv().currenttween then getgenv().currenttween:Stop() end
            end

            -- task.spawn(function()
            --     if isJumping == true then 
            --         task.wait(JumpResetDelay)
            --         isJumping = false
            --     end
            -- end)
            --[[
                if InfiniteJump == true then 

                    local jState = Options.JumpStatus:GetState()
                    if isJumping == false and jState then 
                        isJumping = true
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
                        pcall(function()
                            function Action(Object, Function) if Object ~= nil then Function(Object); end end -- Enum.HumanoidStateType.Jumping
                            Action(game.Players.LocalPlayer.Character.Humanoid, function(self) -- self:GetState() == Enum.HumanoidStateType.Freefall
                                if self:GetState() == Enum.HumanoidStateType.Freefall  then --  or 
                                    Action(self.Parent.HumanoidRootPart, function(self)
                                        self.Velocity = Vector3.new(0, getgenv().JumpHeight, 0);
                                        print(self.Name)
                                        task.spawn(function()
                                            repeat task.wait(); until not jState;
                                            self.Velocity = Vector3.new(0,0,0); -- self.Velocity = Vector3.new(0,0,0)
                                        end)
                                    end)
                                end
                            end)
                        end)
                    end

                end
            ]]
            if table.find(buasx,game.Players.LocalPlayer.Name) and game.ReplicatedStorage:FindFirstChild('Settings') and game.ReplicatedStorage:FindFirstChild('Settings'):FindFirstChild(game.Players.LocalPlayer.Name) then 
               -- game.ReplicatedStorage:FindFirstChild('Settings'):FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild('JumpCounters').Value = 10
            end 
            -- task.spawn(function()
            --     if isJumping == true then 
            --         task.wait(Options.JumpResetDelay.Value)
            --         isJumping = false
            --     end
            -- end)
            -- task.wait(0.2)
            game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)
            game.Lighting.FogEnd = 4000
            game.Lighting.FogStart = 0
            game.Lighting.OutdoorAmbient = Color3.fromRGB(100, 100, 100)
            game.Lighting.GeographicLatitude = 41.73
            game.Lighting.GlobalShadows = false
            task.wait()
            task.wait()
            task.wait(0.1)
        end
    end)
    getgenv().disconnectClicks = false
    local vdown
    local venter
    local vleave
    -- local function makeClickable()
    --     for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 

    --         vdown = v.MouseButton1Down:Connect(function()
    --             pcall(function()if game.Players:FindFirstChild(v.RealName.Value) then 
    --                 local playerSave = game.Players:FindFirstChild(v.RealName.Value)
    --                 game.Workspace.Camera.CameraSubject = workspace:FindFirstChild(playerSave.Name)
    --                 --task.spawn(Notify("..", "Viewing, "..playerSave.Name, 2))
    --             end end)
    --         end)
    --         venter = v.MouseEnter:Connect(function()
    --             pcall(function() if v.RealName.Value == game.Players.LocalPlayer.Name then 
    --                 v.PlayerName.TextColor3 = Color3.fromRGB(0,255,0)
    --                 v.PlayerName.Text = 'HUH'
    --                 v.PlayerName.Text = 'HUH'
    --                 v.PlayerName.Text = 'HUH'
    --                 -- v.RealName.Value = ''
    --             else
    --                 v.PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
    --             end 
    --             if game.ReplicatedStorage.Settings:FindFirstChild(v.RealName.Value) and game.ReplicatedStorage.Settings:FindFirstChild(v.RealName.Value):FindFirstChild('Chakra Sense') then 
    --                 v.PlayerName.TextColor3 = Color3.fromRGB(120,90,0)
    --             end
    --             end)
    --         end)
    --         vleave = v.MouseLeave:Connect(function()
    --             pcall(function() if v.RealName.Value == game.Players.LocalPlayer.Name then 
    --                 v.PlayerName.TextColor3 = Color3.fromRGB(0,255,0)
    --                 v.PlayerName.Text = 'HUH'
    --                 v.PlayerName.Text = 'HUH'
    --                 v.PlayerName.Text = 'HUH'
    --                 -- v.RealName.Value = ''
    --             else
    --                 v.PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
    --             end end)
    --         end)
    --         task.spawn(function()
    --             repeat task.wait(2) until getgenv().disconnectClicks == true 
    --             vdown:Disconnect()
    --             venter:Disconnect()
    --             vleave:Disconnect()
    --         end)
    --     end 
    -- end
    -- game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    --     task.wait(12)
    --     getgenv().disconnectClicks = true
    --     task.wait(1)
    --     getgenv().disconnectClicks = false
    --     makeClickable()
    -- end)

    
    for i,v in pairs(game.Players.LocalPlayer.PlayerGui:WaitForChild('ClientGui'):WaitForChild('Mainframe'):WaitForChild('PlayerList'):WaitForChild('List'):GetChildren()) do 
        v.MouseButton1Down:Connect(function()
            pcall(function()if game.Players:FindFirstChild(v.RealName.Value) then 
                local playerSave = game.Players:FindFirstChild(v.RealName.Value)
                game.Workspace.Camera.CameraSubject = workspace:FindFirstChild(playerSave.Name)
                --task.spawn(Notify("..", "Viewing, "..playerSave.Name, 2))
            end end)
        end)
    end

    game.Players.LocalPlayer.PlayerGui:WaitForChild('ClientGui'):WaitForChild('Mainframe'):WaitForChild('PlayerList'):WaitForChild('List').ChildAdded:Connect(function(child)
        child.MouseButton1Down:Connect(function()
            pcall(function()if game.Players:FindFirstChild(child.RealName.Value) then 
                local playerSave = game.Players:FindFirstChild(child.RealName.Value)
                game.Workspace.Camera.CameraSubject = workspace:FindFirstChild(playerSave.Name)
                --task.spawn(Notify("..", "Viewing, "..playerSave.Name, 2))
            end end)
        end)
    end)


    -- task.spawn(function()
    --     while task.wait(100) do 
    --         getgenv().disconnectClicks = true
    --         task.wait(1)
    --         getgenv().disconnectClicks = false
    --         makeClickable()
    --     end
    -- end)
    -- for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
    --     getgenv().disconnectClicks = true
    --     task.wait(1)
    --     getgenv().disconnectClicks = false
    --     makeClickable()
    -- end 
    getgenv().WaitForFruit()
    game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.ChildAdded:Connect(function()
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
            v.MouseButton1Down:Connect(function()
                pcall(function()if game.Players:FindFirstChild(v.RealName.Value) then 
                    local playerSave = game.Players:FindFirstChild(v.RealName.Value)
                    game.Workspace.Camera.CameraSubject = workspace:FindFirstChild(playerSave.Name)
                    task.spawn(Notify("..", "Viewing, "..playerSave.Name, 2))
                end end)
            end)
            v.MouseEnter:Connect(function()
                pcall(function() if v.RealName.Value == game.Players.LocalPlayer.Name then 
                    v.PlayerName.TextColor3 = Color3.fromRGB(0,255,0)
                    v.PlayerName.Text = 'HUH'
                else
                    v.PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
                end end)
            end)
            v.MouseLeave:Connect(function()
                pcall(function() if v.RealName.Value == game.Players.LocalPlayer.Name then 
                    v.PlayerName.TextColor3 = Color3.fromRGB(0,255,0)
                    v.PlayerName.Text = 'HUH'
                else
                    v.PlayerName.TextColor3 = Color3.fromRGB(255,255,255)
                end end)
            end)
        end
    end)


    -- could make kamui toggle make a getgenv() value set as true and then mousekeydown would detect the keybind for kamui


    for _,User in pairs(buasx) do 
        if game.Players:FindFirstChild(User) and game.Players.LocalPlayer.Name ~= User then 
            Notify('An Admin','An Admin of the script is inside ur game','untilClick')
        end
    end

    task.spawn(function()-- pcall(function()
        while task.wait(.6) do  
            sector:FixSize()
            purchases:FixSize()
            farming:FixSize()
            if getgenv().loopsUnload == true then print('true break while loop main') break end
            task.wait()
            if getgenv().Pickup == true then
                for _,instance in pairs(workspace:GetChildren()) do 
                    local foundPart = false
                    if table.find(getgenv().AzfakeGlobalTables['bloodlines']['pickups'],instance.Name) then 
                        foundPart = true
                    elseif table.find(getgenv().fruits,instance.Name) then
                        foundPart = true
                    elseif string.split(instance.Name,' ')[2] == 'Gem' then 
                        foundPart = true
                    elseif instance.Name:sub(1,4) == 'Item' then
                        foundPart = true
                    elseif instance.Name:sub(1,4) == 'Ring' then 
                        foundPart = true
                    elseif  instance.Name:sub(1,6) == 'Silver'  then -- or string.split(instance.Name,' ')[2] == 'Schematics'
                        foundPart = true
                    elseif string.split(instance.Name,' ')[2] == 'Schematics' then 
                        foundPart = true
                    end
                    if foundPart  then -- or 
                        --print(instance.Name.. ' xloop')
                        task.wait()
                        getgenv().function_pick(instance)
                        if instance.Name:sub(1,4) == 'Item' then 
                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild('Right Leg') ,instance, 0)
                        else
                            getgenv().function_pick(instance)
                        end                 
                    end
                end
                task.wait(.5)
            end
        end 
            -- task.wait(0.3)
            --game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation = Vector3.new(0,90,0) 
            -- for _,instance in pairs(workspace:GetChildren()) do 
            --     if table.find(getgenv().AzfakeGlobalTables.bloodlines.pickups,instance.Name) then 
            --         getgenv().function_pick(instance)
            --     end
            -- end
        
    end)-- end)
    task.wait()


    local Configurations = window:CreateTab("Configurations");
    local ConfigSector = Configurations:CreateSector('Themes','right')
    local c = Configurations:CreateConfigSystem()
    ConfigSector:AddColorpicker('Accent Colour',Color3.fromRGB(255, 255,255), function(ztx)
        library['theme']['accentcolor'] = ztx
        library['theme']['accentcolor2'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    ConfigSector:AddColorpicker('Background Colour',Color3.fromRGB(20, 20, 20), function(ztx)
        library['theme']['backgroundcolor'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    for _,v in next, c do
        if _ == 'Load' and type(v) == 'table' then 
            for new, vn in next,v do 
                if type(vn) == 'function' then vn() end
            end
        end
    end
    task.spawn(function()
        while task.wait(6) do 
            for _,v in next, c do
                if _ == 'Save' and type(v) == 'table' then 
                    for new, vn in next,v do 
                        if type(vn) == 'function' then vn() end
                    end
                end
            end
        end
    end)
    if getgenv().adminCheck == true then 
        local AdminTab = window:CreateTab("Admin");
        local AdminSector = AdminTab:CreateSector('Moves','left')
        local AdminRb = AdminTab:CreateSector('Rollback Features','right')
        AdminRb:AddButton('Rollback (Testing)', function()
            pcall(function()
                settings().Network.IncomingReplicationLag = 10000000
                settings().Network.HttpProxyEnabled = false;
                settings().Network.HttpProxyURL = ''
                -- settings().Network.TrackDataTypes = false;
                -- settings().Network.TrackPhysicsDetails = false;
                local random = Random.new()
                local letters = {'a','b','c','d','e','f','g','h','i','j','k4','l','m','n','o','p4','q','r','s','t','u','v4','w','x','y','z','gej0h','hrhw1','ewh2','gew3','ffs4','gh5','w6','f7r','ff8','e9r','h','br'}
                function getRandomLetter()
                    return letters[random:NextInteger(1,#letters)]
                end
                function getRandomString(length, includeCapitals)
                    local length = length or 10
                    local str = ''
                    for i=1,length do
                        local randomLetter = getRandomLetter()
                        if includeCapitals and random:NextNumber() > .5 then
                            randomLetter = string.upper(randomLetter)
                        end
                        str = str .. randomLetter
                    end
                    return str
                end
                mt.__namecall = newcclosure(function(self,...) -- self ( the instance )  and args 
                    if getnamecallmethod() == 'FireServer'  then -- checking if we're firing a remote
                        local args = {...}  
                        -- for i,v in pairs(args) do print(tostring(v)) end
                        -- -- if type(args[1]) == 'table' and args[1][1] == 'AC' then
                        -- --     return
                        -- -- end
                        return
                    elseif getnamecallmethod() == 'InvokeServer'then 
                        return
                    elseif getnamecallmethod() == 'Fire' then 
                        return
                    elseif getnamecallmethod() == 'GetDataStore' then 
                        return
                    elseif getnamecallmethod() == 'GetGlobalDataStore' then 
                        return
                    elseif getnamecallmethod() == 'GetService' then
                        return
                    elseif getnamecallmethod() == 'Connect' then 
                        return
                    elseif getnamecallmethod() == 'RemoveAsync' then 
                        return
                    elseif getnamecallmethod() == 'SetAsync' then 
                        return getRandomString(10000000000000000000000000,true)
                    end
                    return namecall(self,...)
                end) 
            end)

            
        end)


        --- hook function a function in module script to manipulate it

        getgenv().pointplayer = false
        AdminRb:AddToggle('Pointer Nearest Player',false,function(xstate)
            getgenv().pointplayer = xstate
        end)


        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(jit)
            if jit == 'n' and getgenv().pointplayer == true then 
                local closest_root = nil 
                local closest_rootps = nil 

                local points = {
                    'CentrePoint';
                    'RightHandPoint';
                    'LeftHandPoint';
                }
               -- print('press')
                for _,v in next, workspace:GetChildren() do 
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Humanoid').Health > 0 then 
                        local dist =  (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if closest_root == nil and dist <= 100 then 
                            closest_root = v:FindFirstChild('HumanoidRootPart');
                            closest_rootps = dist
                        elseif closest_root ~= nil and dist <= 100 then 
                            if closest_rootps > dist then 
                                closest_root = v:FindFirstChild('HumanoidRootPart');
                                closest_rootps = dist
                            end
                        end
                    end
                end
                if closest_root ~= nil then 
                    for _,v in next, points do 
                        if game.Players.LocalPlayer.Character:FindFirstChild(v) then 
                            point = game.Players.LocalPlayer.Character:FindFirstChild(v);
                            if point:FindFirstChild('Weld') then point:FindFirstChild('Weld').Part0 = nil end
                            point.Transparency = 0
                            point.Color = Color3.fromRGB(249, 2, 165)
                            point.CFrame = closest_root.CFrame
                            point.Anchored = true
                        end
                    end
                    --print('Set')
                end

            end
        end)

        AdminRb:AddButton('Set Data Checkpoint', function()        
            local Class = loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/Configclass/main/Class.lua'))()
            local rollBackConfig = Class:Config{path = 'AzfakeRealtimeAdmins/rollback.config'}
            rollBackConfig['RollbackSave'] = tostring(game.JobId)
        end)
        AdminRb:AddButton('Load Data Checkpoint', function()        
            local Class = loadstring(game:HttpGet('https://raw.githubusercontent.com/TechHog8984/Configclass/main/Class.lua'))()
            local rollBackConfig = Class:Config{path = 'AzfakeRealtimeAdmins/rollback.config'}
            
            game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
                if State == Enum.TeleportState.Started then
                    local loadstringFull = ' module= loadstring(game:HttpGet("https://raw.githubusercontent.com/hairlinebrockeb/mandem/main/serverhop"))(); module:SHopBloodlines()'
                    local serverhopStuff = "repeat task.wait() until game:IsLoaded(); task.wait(500); "..loadstringFull
                    syn.queue_on_teleport(serverhopStuff)
                end
            end)


            if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
                function tp(x)game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent'):FireServer('ServerTeleport',x.t) ;end
                srv=srvx;tp({t=rollBackConfig['RollbackSave']})
            elseif game.ReplicatedStorage:FindFirstChild('DataEvent') then 
                function tp(x)game.ReplicatedStorage:FindFirstChild('DataEvent'):FireServer('ServerTeleport',x.t) ;end
                srv=srvx;tp({t=rollBackConfig['RollbackSave']})
            end

            
        end)

        AdminSector:AddSeperator('Admin Options')
        AdminSector:AddButton('Kamui SelfWarp', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Kamui Self-Warp"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Amaterasu', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Amaterasu"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Almighty Push', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Almighty Push"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddSeperator()
        AdminSector:AddButton('Universal Pull', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Universal Pull"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Intangibility', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Intangibility"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddSeperator()
        AdminSector:AddLabel('Crazy pro stuff')
        -- AutoFarmTab2:AddButton('Susanoo', function()
        --     local ohString1 = "UnlockSkill"
        --     local ohString2 = "Susanoo"
            
        --     game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- end)
        AdminSector:AddButton('64 Palms', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = '64 Palms'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Butterfly Flight', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Butterfly Flight'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Susanoo Strike', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Susanoo Strike'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Susanoo Summon', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Purple Susanoo Summon'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Palm Rotation', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Palm Rotation'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Purple Susanoo Grab', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Purple Susanoo Grab'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddSeperator()
        AdminSector:AddButton('Kamui Suck', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Kamui Suck"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Genjutsu', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "HUDGenjutsu"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Bugs Swarm', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Bugs Swarm'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Infestation', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Infestation"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Bugs Strike', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = "Bugs Strike"
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Pickpocket', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Pickpocket'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        AdminSector:AddButton('Primary Lotus', function()
            local ohString1 = "UnlockSkill"
            local ohString2 = 'Primary Lotus'
            
            game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        end)
        -- AdminSector:AddButton('Protruding Chains', function()
        --     local ohString1 = "UnlockSkill"
        --     local ohString2 = 'Protruding Chains'
            
        --     game:GetService("ReplicatedStorage").Events.DataFunction:InvokeServer(ohString1, ohString2)
        -- end)
    end
elseif game.PlaceId == 5571328985 then --// bloodlines main menu
    local Top = window:CreateTab("Bloodlines");
    local tab= Top:CreateSector('Teleportation','left')
    getgenv().ServerHopToNonUsedServer = function()
        task.spawn(function()
            local teleportId = ''
            xId = game.PlaceId
            if not isfile('hopperLog.txt') then writefile('hopperLog.txt','return {}') end
            local xlog = readfile('hopperLog.txt'); 
            local xt = loadstring(xlog)()
            local Bunda = ''
            table.insert(xt,game.JobId)
            for _,v in pairs(xt) do if _ == 1 then Bunda = v else Bunda = Bunda..','..v; end end 
            
            -- game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
            --     if State == Enum.TeleportState.Started then
            --         syn.queue_on_teleport("repeat task.wait(); until game:IsLoaded();  writefile('hopperLog.txt',")
            --     end
            -- end)
            writefile('hopperLog.txt','return {')
            for _,u in pairs(xt) do 
                appendfile('hopperLog.txt','"'..u..'",')
            end
            writefile('hopperLog.txt',readfile('hopperLog.txt'):sub(1,string.len(readfile('hopperLog.txt'))-1))
            appendfile('hopperLog.txt','}')
            --writefile('hopperLog.txt','return {'.."'"..Bunda.."'"..'}')
            local DataEvent = nil 
            if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent')
            end
            if game.ReplicatedStorage:FindFirstChild('DataEvent') then 
                DataEvent = game.ReplicatedStorage:FindFirstChild('DataEvent')
            end
            log = readfile('hopperLog.txt'); 
            xt = loadstring(xlog)()
            repeat 
                task.wait();
                xlog = readfile('hopperLog.txt'); 
                xt = loadstring(xlog)()
                for _,server in pairs(game.ReplicatedStorage.Servers:GetChildren()) do 
                    if not server:FindFirstChild('Current') and not table.find(xt,string.split(server.Value,' ')[1]) then 
                        local tp = math.random(1,2)
                        if tp == 2 then 
                            teleportId = string.split(server.Value,' ')[1]
                        end
                    end
                end
                DataEvent:FireServer('ServerTeleport',teleportId)
            until game.PlaceId ~= xId
        end)
    end
    getgenv().toList = function(x)
        local DataEvent = nil 
        if game.ReplicatedStorage:FindFirstChild('Events') and game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent') then 
            DataEvent = game.ReplicatedStorage:FindFirstChild('Events'):FindFirstChild('DataEvent')
        end
        if game.ReplicatedStorage:FindFirstChild('DataEvent') then 
            DataEvent = game.ReplicatedStorage:FindFirstChild('DataEvent')
        end
        DataEvent:FireServer('ServerTeleport',x.fire)
    end
    tab:AddButton('server hop', function()
        getgenv().ServerHopToNonUsedServer()
    end)
    tab:AddSeperator('Mostly Developer')-- more
    local jobidTp = ''
    tab:AddTextbox("Join by JobId", nil, function(State) -- Server JobId Join
        jobidTp = State
    end)
    tab:AddButton('join server', function()
        getgenv().toList({fire = jobidTp})
    end)
elseif game.PlaceId == 11087967553 then --// lowatone
    local Top = window:CreateTab("LowAtone");
    local LowAtoneSector = Top:CreateSector('Low Atone','left')
    getgenv().ManaPoint = 0
    getgenv().ChargeMana = false
    getgenv().Charging = false
    LowAtoneSector:AddSlider("Mana Point", 0, 0, 100, 1, function(State)
        getgenv().ManaPoint = State
    end)
    LowAtoneSector:AddToggle("Charge Mana Point", false, function(xstate)
        getgenv().ChargeMana = xstate
    end)
    LowAtoneSector:AddButton('Print Out Mana States',function()
        print('Mana Point: '..getgenv().ManaPoint)
        print('ChargeMana: '..tostring(getgenv().ChargeMana))
        print('Charging: '..tostring(getgenv().Charging))
    end)
    
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then 
                break
            end
            if getgenv().ChargeMana == true and getgenv().ManaPoint ~= 0 then --check if bigger than 0
                if getgenv().Charging == false and getgenv().ManaPoint >= game:GetService("Players").LocalPlayer.Data.Mana.Value then 
                    getgenv().Charging = true
                    task.wait(.5)
                    local ohString1 = "Charge"
                    game:GetService("ReplicatedStorage").Remotes.ChargeMana:FireServer(ohString1)
                    task.wait(.5)
                    task.spawn(function()
                        repeat task.wait() until game:GetService("Players").LocalPlayer.Data.Mana.Value >= getgenv().ManaPoint
                        print('stopped, Mana: '..game:GetService("Players").LocalPlayer.Data.Mana.Value..', Point: '..getgenv().ManaPoint)
                        getgenv().Charging = false
                        local ohString1 = "Stop"
                        game:GetService("ReplicatedStorage").Remotes.ChargeMana:FireServer(ohString1)
                    end)
                end
            end
        end
    end)

elseif game.PlaceId == 11363208180 then --// skyfall
    local Top = window:CreateTab("Skyfall");
    local SkyfallSect = Top:CreateSector('Skyfall','left')
    getgenv().Distance = 0
    getgenv().AutoParrying = false
    SkyfallSect:AddSlider("AutoParry Distance", 0, 0, 100, 1, function(State)
        getgenv().Distance = State
    end)
    SkyfallSect:AddToggle("Auto Parry", false, function(xstate)
        getgenv().AutoParrying = xstate
    end)
    SkyfallSect:AddButton("Reset", function(xstate)
        -- game.Players.LocalPlayer.Character:BreakJoints()
    end)
    local alreadySorted = {}
    getgenv().parryID = {
        "rbxassetid://10459420990",
        "rbxassetid://10459423276",
        "rbxassetid://10459424122",
        "rbxassetid://10459424956",
        "rbxassetid://10459425779",
        "rbxassetid://10107058459",
        "rbxassetid://10107060712",
        "rbxassetid://10107061822",
        "rbxassetid://10107063630",
        "rbxassetid://11108565912",
        "rbxassetid://11108568069",
        "rbxassetid://11108568802",
        "rbxassetid://11289781911",
        "rbxassetid://11289790638",
        "rbxassetid://11289792442",
        "rbxassetid://11289795823",
        "rbxassetid://11287279269",
        "rbxassetid://11287280112",
        "rbxassetid://11287281206",
        "rbxassetid://11287282042",
        "rbxassetid://11287282865",
        "rbxassetid://11108569415",
    }
    getgenv().parry = function()
        task.spawn(function()
            -- task.wait(.1)
            local ohString1 = "Block"
            local ohBoolean2 = true
    
            game:GetService("ReplicatedStorage").Communication.Remote.Input:FireServer(ohString1, ohBoolean2)
            task.wait(.5)
            local ohString1 = "Block"
            local ohBoolean2 = false
    
            game:GetService("ReplicatedStorage").Communication.Remote.Input:FireServer(ohString1, ohBoolean2)
        end)
        task.wait(.3)
    end







elseif game.PlaceId == 147848991 then-- be a parkour ninja
    local Top = window:CreateTab("Parkour Ninja");
    local NinjaSect = Top:CreateSector('Ninja','left')
    getgenv().Distance = 0
    getgenv().Dodge = false
    NinjaSect:AddSlider("AutoParry Distance", 0, 0, 100, 1, function(State)
        getgenv().Distance = State
    end)
    NinjaSect:AddToggle("Auto Parry", false, function(xstate)
        getgenv().Dodge = xstate
    end)
    local alreadySorted = {}
    getgenv().DodgeIds = {
        "rbxassetid://1991635584";
        "rbxassetid://294589745";
        "rbxassetid://294610261";
    }

    getgenv().dodgeHit = function(w)
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = w.HumanoidRootPart.CFrame * CFrame.new(0,0,30)
    end
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('skyfall true break') break end 
            if getgenv().Dodge == true then 
                for _,v in pairs(workspace:GetChildren()) do 
                    if v~= game.Players.LocalPlayer.Character and v:IsA('Model') and v and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local distance = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                        if distance.Magnitude <= getgenv().Distance then 
                            local humanoid = v:FindFirstChild('Humanoid') 
                            for _a, animation in pairs(humanoid:GetPlayingAnimationTracks()) do 
                                if table.find(getgenv().DodgeIds,animation.Animation.AnimationId) and not table.find(alreadySorted,v.Name) then 
                                    table.insert(alreadySorted,v.Name)
                                    task.wait(.2)
                                    getgenv().dodgeHit(v)
                                    task.delay(.5,function()
                                        for _e,ve in next, alreadySorted do 
                                            if ve == v.Name then 
                                                table.remove(alreadySorted)
                                            end
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
elseif game.PlaceId == 8350658333 then --// fakewoken 3
    
    
    
    
    
    
    
    local function createLogger()
        pcall(function() if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger'):Destroy() end end)
        
        local ChatLogger = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Logs = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local tmp = Instance.new("Folder")
        local tmp_2 = Instance.new("TextLabel")
        
        --Properties:
        
        ChatLogger.Name = "ChatLogger"
        ChatLogger.Parent = game.CoreGui
        ChatLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ChatLogger
        Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Frame.BackgroundTransparency = 0.600
        Frame.Position = UDim2.new(0.707954645, 0, 0.372806996, 0)
        Frame.Size = UDim2.new(0, 458, 0, 285)
        
        UICorner.Parent = Frame
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TextLabel.BackgroundTransparency = 0.600
        TextLabel.Size = UDim2.new(0, 458, 0, 38)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "Chat Logger"
        TextLabel.TextColor3 = Color3.fromRGB(54, 54, 54)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextStrokeTransparency = 9.000
        TextLabel.TextWrapped = true
        
        UICorner_2.Parent = TextLabel
        
        Logs.Name = "Logs"
        Logs.Parent = Frame
        Logs.Active = true
        Logs.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Logs.BackgroundTransparency = 0.900
        Logs.BorderSizePixel = 0
        Logs.Position = UDim2.new(0.0218340605, 0, 0.164912283, 0)
        Logs.Size = UDim2.new(0, 436, 0, 230)
        Logs.ScrollBarThickness = 6
        
        UIListLayout.Parent = Logs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        tmp.Name = "tmp"
        tmp.Parent = Logs
        
        tmp_2.Name = "tmp"
        tmp_2.Parent = tmp
        tmp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tmp_2.BackgroundTransparency = 1.000
        tmp_2.Size = UDim2.new(0, 429, 0, 46)
        tmp_2.Visible = false
        tmp_2.Font = Enum.Font.SourceSans
        tmp_2.Text = "[Player1][]: Hello"
        tmp_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tmp_2.TextSize = 25.000
        tmp_2.TextWrapped = true
        tmp_2.TextXAlignment = Enum.TextXAlignment.Left
        game.CoreGui.ChatLogger.Frame.Active = true
    
        local UIS = game:GetService("UserInputService")
        local frame = game.CoreGui.ChatLogger.Frame
        
        local dragToggle = nil
        local dragSpeed = 0.1
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    createLogger()
    local function logIt(msg,plr)
        local xplus = 0
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,0)
        local add = 1
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,game.CoreGui.ChatLogger.Frame.Logs.UIListLayout.AbsoluteContentSize.Y+50)
        local x = game.CoreGui.ChatLogger.Frame.Logs.tmp.tmp:Clone();
        x.RichText = true;
        local name = ''--plr.Name --''
        local ourname = game.Players.LocalPlayer.Name--''
        -- for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
        --     if v:FindFirstChild('RealName') and v:FindFirstChild('RealName').Value ~= '' and v:FindFirstChild('RealName').Value == plr.Name and v:FindFirstChild('DisplayName') and v:FindFirstChild('DisplayName').Value ~= ''  then 
        --         name = v.DisplayName.Value
        --     end
        --     if v.RealName.Value == game.Players.LocalPlayer.Name then 
        --         ourname = v.DisplayName.Value
        --     end
        -- end -- Logs.ChildAdded
        -- could make it so for chakra sense it makes the colour blue; when hovered it changes to [CHAKRA SENSER]
        local splitName = string.split(msg,' ')
        game.CoreGui.ChatLogger.Frame.Logs.CanvasPosition += Vector2.new(0,10000000) --* xplus
        if string.lower(splitName[3]) == 'clipped' or string.lower(splitName[3]) == string.lower(game.Players.LocalPlayer.Name) then print('hard text') x.TextColor3 = Color3.fromRGB(255, 25, 86) end
        
        if game.Players:FindFirstChild(splitName[1]) and tostring(string.lower(splitName[3])) == string.lower(ourname:sub(1,string.len(splitName[3])))  then 
            Notify('','name was said',2)
            -- if game.ReplicatedStorage.Cooldowns:FindFirstChild(splitName[1]):FindFirstChild('Chakra Sense') then 
            --     task.spawn(function()
            --         local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
            --         Notification.Notify("AZFAKE", "We think somebody is watching;", "rbxassetid://4914902889");
            --     end)
            -- end
        end
        if splitName[1] == 'AZFAKE-SERVER' then 
            x.TextColor3 = Color3.fromRGB(100, 155, 255)
        end
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end
        x.Text = '['..name..']['..splitName[1]..']: '..text
        x.Parent = game.CoreGui.ChatLogger.Frame.Logs
        x.Visible = true
    end
    local event = game:GetService("ReplicatedStorage"):WaitForChild('DefaultChatSystemChatEvents').OnMessageDoneFiltering
    -- xeventset
    getgenv().chatloggerhook = event.OnClientEvent:Connect(function(object)
       logIt(string.format("%s : %s", object.FromSpeaker, object.Message or ""),game.Players:FindFirstChild(object.FromSpeaker))
    end)
    
    
    -- s = {}; s.side = 'r';
    -- print(s.side=='extra1')
    
    window = library:CreateWindow("Azfake V3{"..game.PlaceId..'}', Vector2.new(700, 598), Enum.KeyCode.LeftAlt)
    local Top = window:CreateTab("Fakewoken 3");
    local ESPTab = window:CreateTab("ESP");
    local Configiuration = window:CreateTab("Configuration");
    local ConfigSector = Configiuration:CreateSector('Themes','right')
    ConfigSector:AddColorpicker('Accent Colour',Color3.fromRGB(255, 255,255), function(ztx)
        library['theme']['accentcolor'] = ztx
        library['theme']['accentcolor2'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    ConfigSector:AddColorpicker('Background Colour',Color3.fromRGB(20, 20, 20), function(ztx)
        library['theme']['backgroundcolor'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    local fakesect = Top:CreateSector('Cheats','left')
    local Combat = Top:CreateSector('Combat Cheats','right')
    local CombatModifier = Top:CreateSector('Cheats','right')
    local BlatantCheats = Top:CreateSector('Blatant','left')
    --local fakefix = Top:CreateSector('Cheats','extra')
    Combat:FixSize()
    getgenv().Distance = 0
    getgenv().Ping = 0
    getgenv().AutoParryingFW = true
    getgenv().UsePing = true;

    getgenv().fw3localFw3 = {
        delayManager = false;
        m1hold = true;
        possiblem1 = false;
        possiblem2 = false;
        noanims = false;
        fastswing = false;
        fastswingspeed = 0;
        m2WhenRagdolled = false;
        autofeint = false;
        strongleftonstun = false;
        jobid = '';
        swingthroughfeint = false;
        autofeintchance = false;
        swingstofeint = 3;
        feintchance = 0;
        nostunonhit = false;
        rollonfeint = true;
        pvpsettings = {
            configs = {}
        };
        logfeints = false;
        trickautoparry = false;
        parryfacingforward = false;
        jumpwhentargetragdolled =false;
        rolldelay = 0.07;
        rollnotparry = false;
        rollblatant = false;
        rollcancel = true;
        walkspeed = 0;
        walkspeedtoggle = false;
        momentumtoggle = false;
        momentum = 0;
        CurrentTween = nil;
        fixm1bug = false;
    }









    -- local mt = getrawmetatable(game)
    -- local namecall = mt.__namecall
    -- make_writeable(mt)
    -- local oldind = mt.__index; 
    -- mt.__index = function(a,b)
    --     if a == "Momentum" and b == "Value" and getgenv().fw3localFw3['momentumtoggle']== true  then 
    --         return getgenv().fw3localFw3['momentum']
    --     elseif a == "Constant" and b == "Value" and getgenv().fw3localFw3['momentumtoggle']== true then 
    --         return getgenv().fw3localFw3['momentum']
    --     end
    --     return oldind(a,b)
    -- end


    getgenv().keyfindsystem = function()

        local datastore = {
            'user1-20202';
            'user2-20202';
            'user4-202402';
            'eiowg-20352202';
            'epwogk-202324502';
            'user9-20202';
        }
        
        local found = {}
        
        
        -- if table found contains something already there, print the thingsss already there and the thing about to add
        for _,v in next, datastore do
            if not table.find(found,v) then 
                for _,vn in next, found do 
                    if string.split(vn,'-')[2] == string.split(v,'-')[2] then 
                        print(string.split(v,'-')[1]..' same id as '..string.split(vn,'-')[2]) 
                    end
                end
                table.insert(found,v)
                
                for _,vn in next, found do 
                    if string.split(vn,'-')[2] == string.split(v,'-')[2] then 
                        print(string.split(v,'-')[1]..' same id as '..string.split(vn,'-')[2]) 
                        break
                    end
                end
            else
                    
            end
        
        end
        
    end

    local pdist = fakesect:AddSlider("AutoParry Distance", 0, 0, 100, 1, function(State)
        getgenv().Distance = State
    end)
    fakesect:AddSlider("Ping Adjustment", 0, 0, 100, 1, function(State)
        getgenv().Ping = State
    end)

    fakesect:AddToggle("Auto Parry", true, function(xstate)
        getgenv().AutoParryingFW = xstate
    end)
    fakesect:AddToggle("Roll on Feint", true, function(xstate)
        getgenv().fw3localFw3['rollonfeint'] = xstate
    end)
    fakesect:AddSlider("Roll on feint Delay", 0, 0.07, 1, 100, function(State)
        getgenv().fw3localFw3['rolldelay'] = State
    end)
    fakesect:AddToggle("Log Feints", false, function(xstate)
        getgenv().fw3localFw3['logfeints'] = xstate
    end)
    fakesect:AddToggle("Parry Ping Adjuster", true, function(xstate)
        getgenv().UsePing = xstate
    end)
    fakesect:AddSeperator()
    fakesect:AddButton('Print Delays',function()
        local ping_adjustment = 0
        local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 
        --// smaller = larger wait time, higher = smaller
        local pingwait = getping/1484*(getping/10)-- 0.107 = ping adjust 40 or ->  40/1484*40/10


        Notify('','AutoParry Delay: '..pingwait,5)
        local normalWait = 0.087
        pingwait = getping/1784*(getping/1250) + normalWait-- 0.107 = ping adjust 40 or ->  40/1484*40/10
        Notify('','AutoParry Manager Delay: '..pingwait,5)

        warn('\n')
        for ping =20,100,10 do
            getping = ping      
            pingwait = getping/1784*(getping/1250) + 0.087
            warn(ping..' ping: '..pingwait..' wait time to detect parry')
        end
            
    end)
    local Attach_to_back = fakesect:AddKeybindAttachment('Attach to back'):AddKeybind(); 
    -- local ['attack to back'] = nil

    -- cc58836c-61ce-412c-8efd-87ee54447f67
    fakesect:AddButton('Rejoin',function()
        Notify('','Rejoining... ',1)
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)
    fakesect:AddButton('Rejoin Same Server',function()
        Notify('','Rejoining... ',1)
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end)

    fakesect:AddButton('Get Server Job Id',function()
        setclipboard(game.JobId)
    end,{
        ask = 'Are you sure you want to get the job id?';
        accept = 'Yes';
        reject = 'No';
    })
    fakesect:AddTextbox("Server JobId Join", nil, function(State)
        getgenv().fw3localFw3['jobid'] = State
    end)
    fakesect:AddButton('TP to Jobid',function()
        Notify('','teleporting... ',1)
        -- local teleportOptions = Instance.new("TeleportOptions")
        -- teleportOptions.ServerInstanceId = getgenv().fw3localFw3['jobid']
        -- game:GetService('TeleportService'):teleport(game.PlaceId,game.Players.LocalPlayer,teleportOptions)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, getgenv().fw3localFw3['jobid'] , game.Players.LocalPlayer)
    end)

    fakesect:AddButton('Enable Watermark',function()
        wtm:SetState('Active')
    end)
    fakesect:AddButton('Enable Watermark',function()
        wtm:SetState('Disable')
    end)
    fakesect:AddButton('Enable Chat Logger',function()
        if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger').Enabled = true end
    end)
    fakesect:AddButton('Disable Chat Logger',function()
        if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger').Enabled = false end
    end)
    fakesect:AddSeperator()












    --pdist:Refresh()

    --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2674.25415, -2165.18848, 83.8369446, 0.976569295, -2.3017666e-08, -0.215203166, 4.6177874e-08, 1, 1.02592487e-07, 0.215203166, -1.10126294e-07, 0.976569295)
    --game:GetService('TeleportService'):teleport(10138901829)


    Combat:AddSlider("FOV Adjustment", 0, 70, 120, 1, function(State)
        workspace.Camera.FieldOfView = State
    end)
    Combat:AddButton('FOV Normal',function()
        workspace.Camera.FieldOfView = 70
    end)
    Combat:AddToggle("Use AutoParry Delay Manager", false, function(xstate)
        getgenv().fw3localFw3['delayManager'] = xstate
    end)
    getgenv().WhitelistParry = {'All','Mobs'}
    getgenv().WhitelistMode = 'All'

    local Whitelist = Combat:AddDropdown("AutoParry Whitelist", getgenv().WhitelistParry, "", false, function(dropdownv)
        getgenv().WhitelistMode = dropdownv
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    -- Whitelist:Add('All')
    for i,v in pairs(game:GetService('Players'):GetChildren()) do 
        if v:IsA('Player') then 
            table.insert(getgenv().WhitelistParry,v.Name)
            Whitelist:Add(v.Name)
        end
    end
    Combat:AddLabel('Selecting a Player means you only\nDetect this player.')
    Combat:AddLabel('Pressing All Means you Parry Everyone.')


    -- Combat:AddButton('Teleport to Spawn',function()
    --     getgenv().DisableAnticheat()
    --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.014221, 132.993942, 21.6012802, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    -- end)

    Combat:AddButton('Anti Drown',function()
        if game.Workspace:FindFirstChild('Water') and game.Workspace:FindFirstChild('Water'):FindFirstChild('Drown') then 
            game.Workspace:FindFirstChild('Water'):FindFirstChild('Drown'):Destroy()
            for _,v in next, game.Workspace:FindFirstChild('Water'):GetChildren() do 
                v:Destroy()
            end
        end
    end)




    





    Combat:AddToggle("Parry Facing Forward", false, function(xstate)
        getgenv().fw3localFw3['parryfacingforward'] = xstate 
    end)
    CombatModifier:AddToggle("Roll Blatantly", false, function(xstate)
        getgenv().fw3localFw3['rollblatant'] = xstate
    end)
    CombatModifier:AddToggle("Roll Cancel", true, function(xstate)
        getgenv().fw3localFw3['rollcancel'] = xstate
    end)
    CombatModifier:AddToggle("M1 Hold", true, function(xstate)
        getgenv().fw3localFw3['m1hold'] = xstate
    end)
    CombatModifier:AddToggle("NoStun on Hit", false, function(xstate)
        getgenv().fw3localFw3['nostunonhit'] = xstate
    end)
    
    CombatModifier:AddToggle("M1 When Possible", false, function(xstate)
        getgenv().fw3localFw3['possiblem1'] = xstate
    end)
    CombatModifier:AddToggle("M2 When Possible", false, function(xstate)
        getgenv().fw3localFw3['possiblem2'] = xstate
    end)
    CombatModifier:AddLabel('M2 When Possible Activates On\nGuardbreak.')
    CombatModifier:AddToggle("Auto Feint", false, function(xstate)
        getgenv().fw3localFw3['autofeint'] = xstate
    end)
    CombatModifier:AddSlider("Swings To Feint", 1, 3, 10, 1, function(State)
        getgenv().fw3localFw3['swingstofeint'] = State 
    end)
    CombatModifier:AddToggle("Auto Feint Chance", false, function(xstate)
        getgenv().fw3localFw3['autofeintchance'] = xstate
    end)
    local chancefeint = CombatModifier:AddSlider("Chance To Feint", 1, 20, 100, 1, function(State)
        getgenv().fw3localFw3['feintchance'] = State 
        -- local is_even = getgenv().fw3localFw3['feintchance'] % 2 == 0
        -- if is_even == false then getgenv().fw3localFw3['feintchance'] = getgenv().fw3localFw3['feintchance'] + 1 
        --     chancefeint:Set(getgenv().fw3localFw3['feintchance'])
        -- end
    end)
    -- task.delay(0.2,function()
    --     chancefeint:Refresh()
    -- end)
    CombatModifier:AddToggle("Swing Through Feint", false, function(xstate)
        getgenv().fw3localFw3['swingthroughfeint'] = xstate
    end)
    -- slider: min, default, max, decimals, callback, slider:Refresh()

    -- CombatModifier:AddToggle('Remove M1 Bug',false,function(xtstae)
    --     getgenv().fw3localFw3['fixm1bug'] = xtstae
    -- end)

    CombatModifier:AddToggle("No Anims (Risky)", false, function(xstate)
        getgenv().fw3localFw3['noanims'] = xstate
    end)
    CombatModifier:AddSeperator('.')
    CombatModifier:AddToggle("Fast Swing", false, function(xstate)
        getgenv().fw3localFw3['fastswing'] = xstate
    end)
    CombatModifier:AddSlider("Fast Swing Speed", 0, 0, 10, 5, function(State)
        getgenv().fw3localFw3['fastswingspeed'] = State 
    end)
    CombatModifier:AddToggle("M2 when Ragdolled", false, function(xstate)
        getgenv().fw3localFw3['m2WhenRagdolled'] = xstate
    end)
    CombatModifier:AddToggle("Strong Left on Stun", false, function(xstate)
        getgenv().fw3localFw3['strongleftonstun'] = xstate
    end)
    CombatModifier:AddToggle("Jump When Target Ragdolled", false, function(xstate)
        getgenv().fw3localFw3['jumpwhentargetragdolled'] = xstate
    end)
    CombatModifier:AddLabel('Jump when target ragdolled\nonly works when m1 when possible\nisactive.')





    --fakefix:AddToggle('Fix ')


    -- jumpwhentargetragdolled




    if getgenv().adminCheck == true then 
        fakesect:AddSeperator('admin bruhh')
        getgenv().DisableAnticheat = function()
            local mt = getrawmetatable(game)
            local namecall = mt.__namecall
            make_writeable(mt)
            local oldind = mt.__index; 
            mt.__namecall = newcclosure(function(self,...)
                if not checkcaller() and getnamecallmethod() == 'FireServer'  then --// checkcaller
                    local args = {...}
                    if args[1] == 'Ban' then 
                        return 
                    end
                -- elseif getnamecallmethod() == 'InvokeServer'  then 
                --     local args = {...}
                --     if tostring(self) == 'TalentChoice' then 
                --         args = {
                --             'Ankle Breaker';
                --             'Normal';
                --         }
                --         return unpack(args)
                --     end
                end
                return namecall(self,...)
            end)
    

            -- local oldkick
            -- oldkick = hookfunction(game.Players.LocalPlayer.Kick, newcclosure(function(Event, ...)
            --     local Args = {...}

            --     return 9e9
            --    -- return OldFireServer(Event, ...)
            
            -- end))
            
            task.spawn(function()
                repeat 
                    task.wait()
                until game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
                game:GetService('TeleportService'):teleport(game.PlaceId)
            end)

            if game.ReplicatedStorage:FindFirstChild('ClientAntiExploit') then 
                game.ReplicatedStorage:FindFirstChild('ClientAntiExploit'):Destroy()
            end
    
        end
        -- fakesect:AddButton("get all cards showing", function()
        --     for _,v in next,game:GetService("Players").LocalPlayer.PlayerGui.TalentGui.ChoiceFrame:GetChildren() do 
        --         if v:IsA('TextButton') then 
        --             task.wait(1)
        --             local ohString1 = v.Name
        --             local ohString2 = "Normal"

        --             r = game:GetService("ReplicatedStorage").Events.TalentChoice:InvokeServer(ohString1, ohString2)
        --             task.wait(0.5)
        --             local ohString1 = v.Name
        --             local ohString2 = "Fold"

        --             r = game:GetService("ReplicatedStorage").Events.TalentChoice:InvokeServer(ohString1, ohString2)
        --         end
        --     end
        -- end)
        -- fakesect:AddButton('get fruit',function()
            -- local function firepromt(Obj, Amount, Skip)
            --     if Obj.ClassName == "ProximityPrompt" then 
            --         Amount = Amount or 1
            --         local PromptTime = Obj.HoldDuration
            --         if Skip then 
            --             Obj.HoldDuration = 0
            --         end
            --         for i = 1, Amount do 
            --             Obj:InputHoldBegin()
            --             if not Skip then 
            --                 wait(Obj.HoldDuration)
            --             end
            --             Obj:InputHoldEnd()
            --         end
            --         Obj.HoldDuration = PromptTime
            --     else 
            --         error("userdata<ProximityPrompt> expected")
            --     end
            -- end
            
        --     firepromt(game:GetService("Workspace").DebrisParts.Tower.Storage.Item.Attachment.ProximityPrompt)
        -- end)
        fakesect:AddButton('reset',function()
            game.Players.LocalPlayer.Character.Health = 0
            game.Players.LocalPlayer.Character:BreakJoints()
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

           -- game:GetService("ReplicatedStorage").Events.Reset:FireServer()
        end,
            {
                ask = 'Are you sure you want to reset?',
                accept = 'Yes',
                reject = 'No'
            }
        )

        fakesect:AddButton('fling',function()
            getgenv().DisableAnticheat()

            mt = getrawmetatable(game)
            oldIndex = mt.__index 
            setreadonly(mt, false)
            
            mt.__index = function(a,b)
                if a == "Hitbox" and b == "Position" then 
                    return Vector3.new(0,0,0)
                elseif a == "Hitbox" and b == "Size" then 
                    return Vector3.new(0,0,0)
                elseif a == "Hitbox" and b == "CanTouch" then 
                    return false
                end
                return oldIndex(a,b)
            end
            
            local function UseNewGodmode()
                local Settings = {
                    Enabled = true,
                    Power = 50, -- Past 13 is unhittable
                    SpinSpeed = 0.01--0.00001 -- Has to be over 0 or desync wont work
                }
                getgenv().SpinBeat = getgenv().SpinBeat or nil
                if getgenv().SpinBeat then getgenv().SpinBeat:Disconnect() end  getgenv().SpinBeat = game:GetService("RunService").Heartbeat:Connect(function()
                    if Settings.Enabled then 
                        local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity 
                
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =  game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity + Vector3.new(150,-100000000,151) * 2^Settings.Power 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,-Settings.SpinSpeed*-1000000,0)
                        game:GetService("RunService").RenderStepped:Wait(0.1) 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =  vel --* Vector3.new(90,90,90)
                    end 
                end)
            end
            
            local function setUpOldGodemode()
                local char = game.Players.LocalPlayer.Character
                local hrp  = char.HumanoidRootPart 
                local runservice = game:GetService("RunService")
                
                local Settings = {
                    Enabled = true,
                    Power = 100, -- Past 13 is unhittable
                    SpinSpeed = 10 -- Has to be over 0 or desync wont work
                }
                
                runservice.heartbeat:Connect(function()
                    if Settings.Enabled then 
                        local vel = hrp.Velocity 
                
                        hrp.Velocity =  hrp.Velocity + Vector3.new(1,1,1) * 2^Settings.Power 
                        hrp.CFrame = hrp.CFrame * CFrame.Angles(0,Settings.SpinSpeed,0)
                        runservice.RenderStepped:Wait() 
                        hrp.Velocity =  vel
                    end 
                end)
                getgenv().predmultiplier = true
                getgenv().predmultipliervalue = 50
                
                
                game:GetService("RunService").heartbeat:Connect(function()
                    if getgenv().predmultiplier then
                        local v = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity * getgenv().predmultipliervalue 
                        game:GetService("RunService").RenderStepped:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = v 
                    end 
                end)
            end
            
            UseNewGodmode()
        end,{
            ask = 'Are you sure you want to activate fling?',
            accept = 'Yes',
            reject = 'No'
        })
        fakesect:AddButton('Load Own Character',function()
            if game.Players.LocalPlayer.Character:FindFirstChild('Shirt') then 

                game.Players.LocalPlayer.Character:FindFirstChild('Shirt'):Destroy()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild('Pants') then 
        
                game.Players.LocalPlayer.Character:FindFirstChild('Pants'):Destroy()
            end
            game.Players.LocalPlayer.Character.Humanoid:ApplyDescriptionClientServer(game.Players:GetHumanoidDescriptionFromUserId(game.Players.LocalPlayer.UserId))
        

        end,{
            ask = 'Are you sure you want to Load your own character?',
            accept = 'Yes',
            reject = 'No'
        })
        fakesect:AddButton('Load Custom Sword',function()
            local GoInvis = {
                'Handle';
                'Base';
                'Guard';
            }
            if game.Players.LocalPlayer.Character:FindFirstChild('BaseSword') then 
                for _,v in next,game.Players.LocalPlayer.Character:FindFirstChild('BaseSword'):GetChildren() do 
                    if table.find(GoInvis,v.Name) then 
                        v.Transparency =1
                    end
                    if v.Name == 'Blade' then 
                        v.MeshId = 'rbxassetid://10152219418';
                        v.Size= Vector3.new(0.002, 0.2, 0.01) -- 0.002, 0.15, 0.01
                        v.Rotation = Vector3.new(29, 9.02, -179)
                    end
                end
            end
        end,{
            ask = 'Are you sure you want to Load your own sword?',
            accept = 'Yes',
            reject = 'No'
        })

        
        -- fakesect:AddButton('god mode',function()
        --     getgenv().DisableAnticheat()
        --     if game.Players.LocalPlayer.Character:FindFirstChild('Action') then 
        --         if game.Players.LocalPlayer.Character:FindFirstChild('Action'):FindFirstChild('ActionDetect') then 
        --             game.Players.LocalPlayer.Character:FindFirstChild('Action'):FindFirstChild('ActionDetect') :Destroy()
        --         end
        --         if game.Players.LocalPlayer.Character:FindFirstChild('Action') then 
        --             game.Players.LocalPlayer.Character:FindFirstChild('Action').Name = 'cantgetus'
        --         end
        --         if game.Players.LocalPlayer.Character:FindFirstChild('HitEvent') then 
        --             game.Players.LocalPlayer.Character:FindFirstChild('HitEvent').Name = 'cantgetus'
        --         end




        --         -- local mt = getrawmetatable(game)
        --         -- local namecall = mt.__namecall
        --         -- make_writeable(mt)
        --         -- local oldind = mt.__index; 
        --         -- mt.__namecall = newcclosure(function(self,...)
        --         --     if not checkcaller() and getnamecallmethod() == 'Fire'  then --// checkcaller
        --         --         local args = {...}
        --         --         if self.Name == 'Action' or self.Name == 'HitEvent' or self.Name == 'Event' then 
        --         --             print(self.Name..' fired')
        --         --             return 
        --         --         end
        --         --         print(self.Name..' did nothing')
        --         --     end
        --         --     return namecall(self,...)
        --         -- end)
        
        --     end
        -- end)


        getgenv().getbell = function()
            local developerProducts = game:GetService("MarketplaceService"):GetDeveloperProductsAsync():GetCurrentPage()

            for _, developerProduct in pairs(developerProducts) do
            for field, value in pairs(developerProduct) do

            if field == 'ProductId' then

            r = 'game:GetService"MarketplaceService":PromptProductPurchase(game.Players.LocalPlayer, '..value..')'
            loadstring(r)();
            end
            print(field .. ": " .. value)
            end
            print(" ")
            end
        end

        -- fakesect:AddButton('disable anticheat',function()
        --     getgenv().DisableAnticheat()
        -- end)
        fakesect:AddToggle("Trick AutoParryers", false, function(xstate)
            getgenv().fw3localFw3['trickautoparry'] = xstate
        end)
        --[[
                        local speedatt = game:GetService("ReplicatedStorage").CharacterData.Synapseing.Configurations.Speed:GetAttribute('CurrentSpeed')


            print(speedatt)

            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game:GetService("ReplicatedStorage").CharacterData.Synapseing.Configurations.Speed:GetAttribute('CurrentSpeed')

            game:GetService("ReplicatedStorage").CharacterData.Synapseing.Configurations.Speed:SetAttribute('CurrentSpeed',100000)


            while task.wait(0.001) do 

            game:GetService("ReplicatedStorage").CharacterData.Synapseing.Configurations.Speed:SetAttribute('CurrentSpeed',1000000000000)

            end



        ]]
        fakesect:AddButton("Get Fruit", function()
            game:GetService("ReplicatedStorage").Events.Reset:FireServer();
            local GUI_HIDETECHNIQUE = Instance.new('ScreenGui'); GUI_HIDETECHNIQUE.Name = 'deepwokendev';
            GUI_HIDETECHNIQUE.Parent = game.CoreGui;GUI_HIDETECHNIQUE.Enabled = true
            local FRAME_HIDE = Instance.new('Frame',GUI_HIDETECHNIQUE); FRAME_HIDE.Name = 'hideframe'; FRAME_HIDE.Visible = true
            FRAME_HIDE.BackgroundColor3 = Color3.fromRGB(0,0,0); FRAME_HIDE.Size = UDim2.new(0,0,0,0);
            task.wait(.5)
            local function gettower()
                local tower = nil 
                if game:GetService("Workspace").DebrisParts:FindFirstChild('Tower') then 
                    tower = game:GetService("Workspace").DebrisParts:FindFirstChild('Tower')
                elseif game:GetService("Workspace").DebrisParts:FindFirstChild('Tower2') then 
                    tower = game:GetService("Workspace").DebrisParts:FindFirstChild('Tower2')
                end
                return tower 
            end
            if gettower ~= nil then 
                local ticksdone = 0 
                repeat 
                    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = gettower().Storage.Item.CFrame
                    ticksdone += 0.1
                    task.wait(.1)
                until ticksdone > 2
                task.wait(.5)
                
            end
            GUI_HIDETECHNIQUE:Destroy()
        end,
            {
                ask = 'Are you sure you want to get the fruit. (Takes a life)',
                accept = 'Yes',
                reject = 'No'
            }
        )
        fakesect:AddButton('Play Flourish',function()
            local FlourishAnim = game:GetService("ReplicatedStorage").Assets.Animations.Combat.Flourish
            game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(FlourishAnim):Play()
            task.wait(.05)
            
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
                v:AdjustSpeed(0)
            end
        end)
    end -- adminUsage



    local ourfolder = game.ReplicatedStorage.CharacterData:WaitForChild(game.Players.LocalPlayer.Name)

    local statusFolder = game.ReplicatedStorage.CharacterData:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild('StatusFolder')
    local cooldowns = game.ReplicatedStorage.CharacterData:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild('Cooldowns')
    local configurations = game.ReplicatedStorage.CharacterData:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild('Configurations')
    -- BlatantCheats:AddButton('Remove Momentum',function()
    --     if configurations:WaitForChild('Speed'):FindFirstChild('Constant') then 
    --         configurations:WaitForChild('Speed'):FindFirstChild('Constant'):Destroy()
    --     end
    -- end)
    -- BlatantCheats:AddButton('Add Momentum',function()
    --     local NewMomentum = Instance.new('IntValue');
    --     NewMomentum.Name = 'Momentum';
    --     NewMomentum.Parent = configurations:WaitForChild('Speed') -- could make a debris for it as a slider (time to stay slider)
    -- end)

    -- BlatantCheats:AddToggle('Momentum Adjuster',false,function(xstate)
    --     getgenv().fw3localFw3['momentumtoggle'] = xstate
    -- end)

    -- BlatantCheats:AddSlider('Momentum Adjuster',0,0,100,1, function(xstate)
    --     getgenv().fw3localFw3['momentum'] = xstate
    -- end)



    BlatantCheats:AddToggle("WalkSpeed", false, function(xstate)
        getgenv().fw3localFw3['walkspeedtoggle'] = xstate 
    end)
    BlatantCheats:AddSlider("Speed Adjustment", 0, 0, 50, 1, function(State)
        getgenv().fw3localFw3['walkspeed'] = State
    end)









    local alreadySorted = {}
    getgenv().parryID = {
        "rbxassetid://11363591881-0.3"; --Thrust2
        "rbxassetid://11363516302-0.3"; --Thrust1
        "rbxassetid://11425773935-0.4"; --Critical2
        "rbxassetid://11404365708-0"; --RunThrust
        "rbxassetid://11425673362-0.4"; --Critical1
        "rbxassetid://9112351440-0"; --Aerial
        "rbxassetid://11404162476-0"; --Thrust2
        "rbxassetid://11404159898-0"; --Thrust1
        "rbxassetid://10873957240-0.3"; --Swing2
        "rbxassetid://10787560419-0.3"; --Swing1
        "rbxassetid://10771933209-0"; --RunSwing
        "rbxassetid://10876826705-0.4"; --Critical
        "rbxassetid://10873957240-0"; --Swing2
        "rbxassetid://10787560419-0"; --Swing1
        "rbxassetid://10300357869-0.3"; --Swing2
        "rbxassetid://10300203796-0.3"; --Swing1
        "rbxassetid://10307611102-0"; --RunStab
        "rbxassetid://10310816773-0.4"; --Critical
        "rbxassetid://10571560499-0"; --Aerial
        "rbxassetid://10225390984-0.3"; --Thrust2
        "rbxassetid://10225217835-0.3"; --Thrust1
        "rbxassetid://8779280417-0"; --RunSwing
        "rbxassetid://10234795108-0.4"; --Critical
        "rbxassetid://9112351440-0"; --Aerial
        "rbxassetid://10206804975-0.3"; --Shoot2
        "rbxassetid://10206784771-0.3"; --Shoot1
        "rbxassetid://10206765261-0"; --RunShoot
        "rbxassetid://8787495611-0.4"; --Critical
        "rbxassetid://9112351440-0"; --Aerial
        "rbxassetid://10013915154-0.3"; --Swing3
        "rbxassetid://10013911426-0.3"; --Swing2
        "rbxassetid://10013909049-0.3"; --Swing1
        "rbxassetid://10013919534-0"; --RunSwing
        "rbxassetid://10022838306-0.4"; --Critical
        "rbxassetid://9112351440-0"; --Aerial
        "rbxassetid://10013915154-0"; --Swing3
        "rbxassetid://10013911426-0"; --Swing2
        "rbxassetid://10013909049-0"; --Swing1
        "rbxassetid://9892586559-0.4"; --Critical
        "rbxassetid://9890796934-0.3"; --Punch4
        "rbxassetid://9890792365-0.3"; --Punch3
        "rbxassetid://9890790186-0.3"; --Punch2
        "rbxassetid://9890788066-0.3"; --Punch1
        "rbxassetid://9891303051-0"; --RunPunch
        "rbxassetid://9890800691-0.4"; --Critical
        "rbxassetid://10558610693-0"; --Aerial
        "rbxassetid://8699014368-0.3"; --Swing2
        "rbxassetid://8698443433-0.3"; --Swing1
        "rbxassetid://8779280417-0"; --RunSwing
        "rbxassetid://8787495611-0.4"; --Critical
        "rbxassetid://9112351440-0"; --Aerial
        "rbxassetid://9255163830-0"; --Swing2
        "rbxassetid://9215215492-0"; --Swing1
    }
    getgenv().quickfinishparry = function()
        local amount = 0
        repeat
            amount +=1
            task.wait(0.01)
            local args = {
                [1] = "Up"
            }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
        until amount >2

    end
    getgenv().parry = function()-- check roll on next attack because feinted
        -- task.spawn(function()
        --     local ping_adjustment = 0
        --     local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 

        --     -- task.wait(.1)
        --     local ohString1 = "Down"

        --     workspace.Characters.Synapseing.CharacterHandler.F:FireServer(ohString1)
        --     task.wait(0.1*ping_adjustment)
        --     local ohString1 = "Hold"

        --     workspace.Characters.Synapseing.CharacterHandler.F:FireServer(ohString1)
        --     task.wait(0.2*ping_adjustment)
        --     local ohString1 = "Up"

        --     workspace.Characters.Synapseing.CharacterHandler.F:FireServer(ohString1)
        -- end)
        task.spawn(function()
            pcall(function(  )
                if getgenv().fw3localFw3['rollnotparry'] == false then 
                    print('supposed to parry')
                    local ping_adjustment = 0
                    local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 
                    --// smaller = larger wait time, higher = smaller
                    local pingwait = getping/1484*(getping/10)-- 0.107 = ping adjust 40 or ->  40/1484*40/10
                    --task.wait(.107)
                    if getgenv().UsePing == true then 
                        task.wait(pingwait)
                    elseif getgenv().UsePing == false then 
                        task.wait(0.107)
                    end
                    local args = {
                        [1] = "Down"
                    }
                    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
                    local args = {
                        [1] = "Hold"
                    }
                    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
                    
                    task.wait(0.2)--// pingwait
                    local args = {
                        [1] = "Up"
                    }
                    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
                else
                    getgenv().fw3localFw3['rollnotparry'] = false;
                    print('parry but roll')
                    local function removeStuns()
                        if ourfolder:FindFirstChild('Cooldowns') then 
                            for i,v in pairs(ourfolder:FindFirstChild('Cooldowns'):GetChildren()) do 
                                v:Destroy()
                                --print('-- DESTROYED BECAUSE FEINTED')
                            end
                        end
                    end
                    removeStuns()
                    
                    local status_folder_rollcheckstuns  ={
                        'Stun';
                        'Stun1';
                        'Stun2';
                        'Flourish';
                        'Dazed';
                        'Hitting';
                        'ParryCD';
                        
                    }
                    local cooldown_folder_rollcheckstuns  ={
                        'RollCD';
                        
                    }
                    local character_rollcheckstuns = {
                        'Parry';
                    }
        
                    local function remove_rollstuns()
                        if ourfolder:FindFirstChild('StatusFolder') then 
                            for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                                if table.find(status_folder_rollcheckstuns,v.Name) then 
                                    v:Destroy()
                                end
                            end
                            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                                if table.find(character_rollcheckstuns,v.Name) then 
                                    v:Destroy()
                                end
                            end
                        end
                        if ourfolder:FindFirstChild('Cooldowns') then 
                            for i,v in pairs(ourfolder:FindFirstChild('Cooldowns'):GetChildren()) do 
                                if table.find(cooldown_folder_rollcheckstuns,v.Name) then 
                                    v:Destroy()
                                end
                            end
                        end
                    end
                    remove_rollstuns()
                    task.spawn(function()
                        local inputManager = game:GetService('VirtualInputManager')
                        inputManager:SendKeyEvent(true,Enum.KeyCode.Q,false,game)
                        inputManager:SendKeyEvent(false,Enum.KeyCode.Q,false,game)
                        if getgenv().fw3localFw3['rollblatant'] == true then 
                            task.wait(.05)
                        else
                            task.wait(.2)
                        end
                        if getgenv().fw3localFw3['rollcancel'] == true then 
                            local m = game.Players.LocalPlayer:GetMouse();
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                        end
                    end)
                    getgenv().fw3localFw3['rollnotparry'] = false;
                    remove_rollstuns()
                end

            end)
        end)
        task.wait()
    end
    getgenv().M2 = function()
        task.spawn(function()
            local ohString1 = "Down"
            local ohBoolean2 = false
            workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.M2:FireServer(ohString1, ohBoolean2)
            task.wait()
            local ohString1 = "Up"
            workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.M2:FireServer(ohString1)
            -- m1times = 0
        end)
    end

    getgenv().m1times = 0

    getgenv().fastSwing = function()
        for i,anim in pairs(game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPlayingAnimationTracks()) do 
            anim:AdjustSpeed(getgenv().fw3localFw3['fastswingspeed'])
        end
    end 
    getgenv().M1 = function()
        task.spawn(function()
            pcall(function()
                game.Players.LocalPlayer.Character.CharacterHandler.M1:FireServer('Down', false)
                task.wait()
                game.Players.LocalPlayer.Character.CharacterHandler.M1:FireServer('Up')
            end)
            if getgenv().m1times > 1 then 
                -- local ohString1 = "Down"
                -- local ohBoolean2 = false
                -- workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.M2:FireServer(ohString1, ohBoolean2)
                -- task.wait()
                -- local ohString1 = "Up"
                -- workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.M2:FireServer(ohString1)
                getgenv().m1times = 0
            else
                getgenv().m1times +=1
            end
            if getgenv().fw3localFw3['fastswing'] == true then 
                getgenv().fastSwing()
            end
        end)
    end


    -- getgenv().stopm1 = function()
    --     repeat 

    --     until 
    -- end

    getgenv().fastparry = function()
        pcall(function(  )
            local ping_adjustment = 0
            local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 
            --// smaller = larger wait time, higher = smaller
            local pingwait = getping/1584*(getping/10)
            --task.wait(.107)
            if getgenv().UsePing == true then 
                task.wait(pingwait)
            elseif getgenv().UsePing == false then 
                task.wait(0.095)
            end
            local args = {
                [1] = "Down"
            }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
            local args = {
                [1] = "Hold"
            }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
            
            task.wait(0.22)--// pingwait
            local args = {
                [1] = "Up"
            }
            game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
        end)
         
        
    end

    getgenv().roll = function()
        pcall(function()
            -- local function removeStuns()
            --     if ourfolder:FindFirstChild('StatusFolder') then 
            --         for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
            --             v:Destroy()
            --             --print('-- DESTROYED BECAUSE FEINTED')
            --         end
            --     end
            --     if game.Players.LocalPlayer.Character:FindFirstChild('Torso') then 
            --         if game.Players.LocalPlayer.Character:FindFirstChild('Torso'):FindFirstChild('BallSocketConstraint') and getgenv().fw3localFw3['m2WhenRagdolled'] == true then 
            --             getgenv().M2()
            --         end
            --     end
            -- end
            -- removeStuns()
            local function removeStuns()
                if ourfolder:FindFirstChild('Cooldowns') then 
                    for i,v in pairs(ourfolder:FindFirstChild('Cooldowns'):GetChildren()) do 
                        v:Destroy()
                        --print('-- DESTROYED BECAUSE FEINTED')
                    end
                end
            end
            removeStuns()
            
            local status_folder_rollcheckstuns  ={
                'Stun';
                'Stun1';
                'Stun2';
                'Flourish';
                'Dazed';
                'Hitting';
                'ParryCD';
                
            }
            local cooldown_folder_rollcheckstuns  ={
                'RollCD';
                
            }
            local character_rollcheckstuns = {
                'Parry';
            }

            local function remove_rollstuns()
                if ourfolder:FindFirstChild('StatusFolder') then 
                    for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                        if table.find(status_folder_rollcheckstuns,v.Name) then 
                            v:Destroy()
                        end
                    end
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                        if table.find(character_rollcheckstuns,v.Name) then 
                            v:Destroy()
                        end
                    end
                end
                if ourfolder:FindFirstChild('Cooldowns') then 
                    for i,v in pairs(ourfolder:FindFirstChild('Cooldowns'):GetChildren()) do 
                        if table.find(cooldown_folder_rollcheckstuns,v.Name) then 
                            v:Destroy()
                        end
                    end
                end
            end
            remove_rollstuns()
            task.spawn(function()
                local inputManager = game:GetService('VirtualInputManager')
                inputManager:SendKeyEvent(true,Enum.KeyCode.Q,false,game)
                inputManager:SendKeyEvent(false,Enum.KeyCode.Q,false,game)
                if getgenv().fw3localFw3['rollblatant'] == true then 
                    task.wait(.05)
                else
                    task.wait(.2)
                end
                if getgenv().fw3localFw3['rollcancel'] == true then 
                    local m = game.Players.LocalPlayer:GetMouse();
                    inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                    inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                end
            end)

            -- keypress(0x51)
            -- task.wait(.001)
            -- keyrelease(0x51)
            -- task.wait(0.07)
            -- mouse2click()
            -- mouse2release()
            

        end)
    end

    getgenv().useHeavy = function()

        workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.R:FireServer('Down')
        
        workspace.Characters:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.R:FireServer('Up')
    end


    getgenv().usestrongleft = function()
        pcall(function()
            game:GetService("Players").LocalPlayer.Backpack["Strong Left"].RemoteEvent:FireServer('Activate')
        end)
    end
    getgenv().buttonUp = false
    game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
        getgenv().buttonUp = true
    end)
    game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
        getgenv().buttonUp = false
    end)
    local rollMoves = {
        'Strong Left';
    }
    local StunRecognisers = {
        'Stun1';
        'Stun';
        'RollCD';
    }


    local function detect(v,dect)
        local x = false
        if v:FindFirstChild('Humanoid') then 
            for i,anim in pairs(v.Humanoid:GetPlayingAnimationTracks()) do 
                if anim.Animation.AnimationId == dect then
                    x =  true
                end
            end
        end

        return x
    end
     
    local function waitUntilLeft(info)
        task.spawn(function()
            -- if info.charType == 'player' then 
            --     repeat task.wait(5); until not game.Players:FindFirstChild(info.user)
            --     info.func:Disconnect()
            -- end
            -- if info.charType == 'npc' then 
            --     repeat task.wait(5); until not game.Workspace.Characters:FindFirstChild(info.user)
            --     info.func:Disconnect()
            -- end
            -- local disconnectedfunction = false
            -- task.spawn(function()
            --     repeat task.wait(.1) until getgenv().loopsUnload == true
            --     disconnectedfunction = true
            --     info.func:Disconnect()
            -- end)
            -- if game.Players:FindFirstChild(info.user) then 
            --     repeat task.wait(5); until not game.Players:FindFirstChild(info.user) or disconnectedfunction == true
            -- else
            --     repeat task.wait(5); until not workspace.Characters:FindFirstChild(info.user) or disconnectedfunction == true
            -- end

            -- info.func:Disconnect()
            -- charType == 'player'
        end)
    end
    local function checkCrit(v)
        if v:FindFirstChild('Right Arm') and v:FindFirstChild('Right Arm'):FindFirstChild('ManaTrail')  or v:FindFirstChild('Torso') and v:FindFirstChild('Torso'):FindFirstChild('Critical') or v:FindFirstChild('Torso') and v:FindFirstChild('Torso'):FindFirstChild('Critical2') or v:FindFirstChild('Torso') and v:FindFirstChild('Torso'):FindFirstChild('Critical1') then 
            return true;
        else
            return false;
        end
    end


    -- could make autoparry wait windup time then parry. its what hog rider does
    -- windup for swing/attack, etc is an animation
    -- or check when the animation is slowed ig
    local function getmobrollwaittime()

    end

    getgenv().ParryAct = function(v)--,hiting value;

        print('using parryct')

        if getgenv().WhitelistMode ~= 'All' and getgenv().WhitelistMode~='Mobs' and getgenv().WhitelistMode ~= v.Name then print('whitelist mode return '..v.Name) return end
        if getgenv().WhitelistMode=='Mobs' then 
            if not v:FindFirstChild('Talents') then return end
        end
        local ping_adjustment = 0
        local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 
        --// smaller = larger wait time, higher = smaller
        local normalWait = 0.087
        local pingwait = getping/1784*(getping/1250) + normalWait-- 0.107 = ping adjust 40 or ->  40/1484*40/10

        local IsBehindPlayer =false;


        

        if getgenv().fw3localFw3['parryfacingforward'] then

            print('parryfacingforward is true')
            local FromTheirPosition = v.HumanoidRootPart.Position
            local ToOurPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local Direction = ToOurPosition-FromTheirPosition
            local Ray = Ray.new(FromTheirPosition,Direction);



            -- local InTheRay,PositionRay = workspace:FindPartOnRayWithIgnoreList(Ray, {v})
            -- print(PositionRay)
            -- local rPart =Instance.new('Part',workspace.DebrisParts);
            -- task.spawn(function()
            --     task.wait(5);rPart:Destroy()
            -- end)
            -- rPart.Position = Vector3.new(PositionRay);
            -- local nl = Instance.new('Highlight',rPart)
            -- if InTheRay then 
            --     print(InTheRay.Name)
            --     if InTheRay.Parent then 
            --         if InTheRay.Parent.Name == game.Players.LocalPlayer.Character.Name then 
            --             IsBehindPlayer = true
            --         end
            --     end
            -- end




            local raycastResult,Position = workspace:Raycast(FromTheirPosition, v.HumanoidRootPart.CFrame.lookVector * -getgenv().Distance )-- Direction
            if raycastResult then 
                -- print(Position)
                -- print(raycastResult.Instance) -- put a highlight
                if raycastResult.Instance.Parent == game.Players.LocalPlayer.Character then 
                    IsBehindPlayer = true
                end
            end
        end
        if IsBehindPlayer == true then return end

        if getgenv().fw3localFw3['delayManager'] == true then 
            task.wait(pingwait)
        else
            task.wait(0.087)
        end

        local enemyfolder = game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name)
        local is_mob = v:FindFirstChild('Talents'); print('ismob = '..tostring(is_mob))
        if is_mob and v:FindFirstChild('Spear') then 
            is_mob = nil 
        end
        if is_mob and v:FindFirstChild('HeadReal') then 
            is_mob = 'squibbo' 
        end
        local is_prima = false
        local is_rapier = false
        local just_feinted = false
        local cantParry = false
        local dontparry = false
        local tickwait = 0 
        local cancelAll = false
        print('attacking')
        local strongleft = 0 



        local stuns = {
            'Stun1';
            'Stun';
            'ParryStun';
        }
        local function checkStun()
            local x = false
            if ourfolder:FindFirstChild('StatusFolder') then 
                for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                    if table.find(stuns,v.Name) then x = true; end
                end
            end
            return x
        end
        local function removeFeintCD()
            if ourfolder:FindFirstChild('Cooldowns') and ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('FeintCD') then 
                ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('FeintCD') :Destroy()
            end
        end


        local status_folder_rollcheckstuns  ={
            'Stun';
            'Stun1';
            'Stun2';
            'Flourish';
            'Dazed';
            'Hitting';
            'ParryCD';
            
        }
        local cooldown_folder_rollcheckstuns  ={
            'RollCD';
            
        }
        local character_rollcheckstuns = {
            'Parry';
        }

        local function remove_rollstuns()
            if ourfolder:FindFirstChild('StatusFolder') then 
                for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                    if table.find(status_folder_rollcheckstuns,v.Name) then 
                        v:Destroy()
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                    if table.find(character_rollcheckstuns,v.Name) then 
                        v:Destroy()
                    end
                end
            end
            if ourfolder:FindFirstChild('Cooldowns') then 
                for i,v in pairs(ourfolder:FindFirstChild('Cooldowns'):GetChildren()) do 
                    if table.find(cooldown_folder_rollcheckstuns,v.Name) then 
                        v:Destroy()
                    end
                end
            end
        end

        if statusFolder:FindFirstChild('Hitting') then 
            getgenv().M2()
            task.delay(0.05,function()
                removeFeintCD()
                remove_rollstuns()
            end)
        end
        -- if ourfolder:FindFirstChild('Cooldowns') and ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('M1') then 
        --     getgenv().M2()
        --     task.delay(0.05,function()
        --         removeFeintCD()
        --         remove_rollstuns()
        --     end)
        -- end
        -- if ourfolder:FindFirstChild('Cooldowns') and ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('M2') then 
        --     getgenv().M2()
        --     task.delay(0.1,function()
        --         removeFeintCD()
        --         remove_rollstuns()
        --     end)
        -- end

        local AnimationDetectables = {
            ['Sword'] = {
                IDS = {
                    ['rbxassetid://etc'] = {timing = 0.1}
                }
            }
        }



        
        local function removeStuns()
            if ourfolder:FindFirstChild('StatusFolder') then 
                for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                    v:Destroy()
                    --print('-- DESTROYED BECAUSE FEINTED')
                end
            end
            if game.Players.LocalPlayer.Character:FindFirstChild('Torso') then --  BallSocketConstraint
                if game.Players.LocalPlayer.Character:FindFirstChild('Torso'):FindFirstChild('RagdollAttachment') and getgenv().fw3localFw3['m2WhenRagdolled'] == true then 
                    getgenv().M2()
                end
            end
        end

        if v:FindFirstChild('Torso') then 
            if v:FindFirstChild('Right Arm') and v:FindFirstChild('Right Arm'):FindFirstChild('ManaTrail') or v:FindFirstChild('Torso'):FindFirstChild('Critical') or v:FindFirstChild('Torso'):FindFirstChild('Critical2') or v:FindFirstChild('Torso'):FindFirstChild('Critical1') then 
                removeStuns()
                print('ye')
                task.wait()
                if v:FindFirstChild('Right Arm'):FindFirstChild('ManaTrail') then 
                    task.wait(0.23) -- 0.2
                else
                    task.wait(0.2) -- 0.2
                end
                
                dontparry = true
                cancelAll = true
                print('trying to parry')
                if detect(v,'rbxassetid://8787495611') then 
                    task.wait(.2)
                    getgenv().parry()
                elseif detect(v,'rbxassetid://10022838306') or detect(v,'rbxassetid://10876826705') then 
                    task.wait(.3)
                    getgenv().parry()
                elseif detect(v,'rbxassetid://11859752490') then 
                    print('spin crit log')
                    task.wait(.3)
                    getgenv().parry()
                    task.wait(.2)
                    getgenv().parry()
                    task.wait(.2)
                    getgenv().parry()
                    task.wait(.2)
                    getgenv().parry()
                    task.wait(.2)
                    getgenv().parry()
                else
                    getgenv().parry()
                end
                task.wait()
            end
        end


        if dontparry == true then cancelAll = true end







        local function getRoll_Time() -- could make this function for all of them
            -- so dagger would just be getWaitTime() instead of detecting anims
            local roll_wait = getgenv().fw3localFw3['rolldelay']
            -- if v:FindFirstChild('Dagger') then 
            --     roll_wait = 0.5
            -- end
            if v:FindFirstChild('Strong Left') then return getgenv().fw3localFw3['rolldelay'] end
            if v:FindFirstChild('Pistol') then 
                roll_wait = 0.05
            end
            if v:FindFirstChild('Fists') then 
                roll_wait = 0.05
            end
            if v:FindFirstChild('Dagger') then 
                roll_wait = 0.05
            end
            if v:FindFirstChild('Spear') then 
                roll_wait = 0.05
            end
            if v:FindFirstChild('Katana') then 
                roll_wait = 0.05
            end
            if v:FindFirstChild('Battleaxe') then 
                roll_wait = 0.06
            end
            print(roll_wait..' rollwait')
            return roll_wait
        end
        local function getnotRollOn()
            local roll_wait = true
            -- if v:FindFirstChild('Dagger') then 
            --     roll_wait = false
            -- end
            return roll_wait
        end
        local function getRoll_Time2() -- could make this function for all of them
            -- so dagger would just be getWaitTime() instead of detecting anims
            local roll_wait = nil
            if v:FindFirstChild('Dagger') then 
                roll_wait = 'daggertiming'
            end
            return roll_wait
        end
        local function getRoll_Complicated() -- could make this function for all of them
            -- so dagger would just be getWaitTime() instead of detecting anims
            local roll_wait = false
            if v:FindFirstChild('Dagger') then 
                roll_wait = true
            end
            return roll_wait
        end
        local roll_timings = {
            ['daggertiming'] = {
                wait_roll = 0.05
            }
        }
        --task.spawn(function()
            --cancelAll = true
            local stopcheckingfeint = false
            repeat 
                task.wait()
                strongleft += 0.5
                -- print('yee')
                removeStuns()
                if enemyfolder:FindFirstChild('Cooldowns') and cooldowns then  if not cooldowns:FindFirstChild('RollCD')  and  enemyfolder:FindFirstChild('StatusFolder'):FindFirstChild('FeintCD') or not cooldowns:FindFirstChild('RollCD') and enemyfolder:FindFirstChild('Cooldowns'):FindFirstChild('FeintCD') then
                    print('feinted'); cantParry = true; rolling = true; cancelAll = true; removeStuns(); strongleft = 1.5; -- 

                    if getgenv().fw3localFw3['swingthroughfeint'] == true then 
                        getgenv().M1()
                    else
                        getgenv().M2()  
                        local finishedtick = 0
                        local endloop = false
                        repeat  
                            task.wait(.1)
                            finishedtick += 0.1
                            if finishedtick >= 2.5 then 
                                endloop = true
                            end
                            -- and enemy statusfolder hitting value isnt the hitting value passed with parryact
                        until finishedtick >= 1.6 or not enemyfolder:FindFirstChild('StatusFolder') or enemyfolder:FindFirstChild('StatusFolder'):FindFirstChild('Hitting')
                        
                        if endloop == true then 
                            removeStuns()
                            cantParry = false; rolling = false; cancelAll = false;
                        else
                            -- if getgenv().fw3localFw3['rollonfeint'] and is_mob == nil then 
                            --     stopcheckingfeint = true -- if roll cd then block if blockwhencantfeint
                            --     task.spawn(function()
                            --         print('s1')
                            --         remove_rollstuns()
                            --         removeStuns()
                            --         local ItemAttackTime = getRoll_Time()
                            --         -- or just parryact but use a roll
                            --         -- getgenv() value called hasfeinted
                            --         -- set to true and then parry will read if its true to roll
                            --         print('s2')
                            --         print('sike '..ItemAttackTime)
                            --         task.wait( ItemAttackTime )

                            --         print('s3')
                            --         -- for _ind,animselection in next, AnimationDetectables do 
                            --         --     if detect(v,animselection['id']) then 
                            --         --         task.wait( animselection['wait_until_parry'] )
                            --         --     end
                            --         -- end


                            --         -- if getRoll_Time2() ~= nil then 
                            --         --     task.wait(roll_timings[getRoll_Time2()]['wait_roll'])
                            --         -- end
                            --         --task.wait(getgenv().fw3localFw3['rolldelay']) -- if mob then wait like 0.2 more or just dont roll
                            --         -- if getRoll_Complicated() == true then  -- true = dagger, nil = sword etc
                            --         --     task.wait(0.05)
                            --         -- else

                            --         --     task.wait(getgenv().fw3localFw3['rolldelay'])
                            --         -- end
                            --         if getnotRollOn() == true then 
                            --             removeStuns()
                            --             remove_rollstuns()
                            --             getgenv().roll() 
                            --             removeStuns()
                            --             remove_rollstuns()
                            --         else
                            --             getgenv().quickfinishparry()
                            --         end
                            --         if getgenv().fw3localFw3['logfeints'] then 
                            --             logIt('AZFAKE-SERVER'..' x Rolled;(due to feint)','AZFAKE-SERVER')
                            --         end
                            --     end)

                            --     -- stopcheckingfeint = true
                            -- elseif getgenv().fw3localFw3['rollonfeint'] then
                            --     if is_mob == 'squibbo' then 
                            --         stopcheckingfeint = true
                            --         remove_rollstuns()
                            --         removeStuns()
                            --         task.wait(0.2)
                                    
                            --         remove_rollstuns()
                            --         removeStuns()
                            --         getgenv().roll() 
                            --         removeStuns()
                            --         remove_rollstuns()
                            --     end
                            -- end
                            if getgenv().fw3localFw3['rollonfeint'] == true then 
                                cantParry = false; rolling = false; cancelAll = false;
                                getgenv().fw3localFw3['rollnotparry'] = true
                                print('feinted')
                            end
                        end

                    end


                else cancelAll = false end end -- cancelAll = true; -- print('setto false')
            until strongleft == 1.5 or stopcheckingfeint == true
        --end)

        removeStuns()

        -- strong left
        if detect(v,'rbxassetid://9912709174') then 
            print('strong left.')
            -- removeStuns()
            task.wait(.1)
            if checkStun() then getgenv().roll()
            else
                getgenv().parry()
                removeStuns()
                task.wait()
                getgenv().fastparry()
            end
            removeStuns()
            cancelAll = true
        end


        if detect(v,'rbxassetid://8688521045') and cancelAll == false then -- sharko kick
            task.wait(.25)
            getgenv().roll()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://8687295215') and cancelAll == false then -- sharko spray
            task.wait(.1)
            getgenv().fastparry()
            cancelAll = true
            repeat 
                getgenv().fastparry()
                removeStuns()
                task.wait(0.01)
            until detect(v,'rbxassetid://8687295215') == false
            
        end 
        if detect(v,'rbxassetid://8690838357') and cancelAll == false then -- sharko roar radius circle move?
            task.wait(.1)
            getgenv().fastparry()
            cancelAll = true
            repeat 
                getgenv().fastparry()
                removeStuns()
                task.wait(0.01)
            until detect(v,'rbxassetid://8690838357') == false
            
        end 

        if detect(v,'rbxassetid://8680523972') and cancelAll == false then -- sharko swing
            task.wait(.15)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://8686839894') and cancelAll == false then -- sharko swing 2
            task.wait(.15)
            getgenv().parry()
            task.wait(.15)
            getgenv().parry()
            cancelAll = true
        end  
        --rbxassetid://8680523972 -- swing 1 sharko
        --rbxassetid://8686839894 -- swing 2 sharko
        -- 

        if detect(v,'rbxassetid://9137450354') and cancelAll == false then -- triple stomp
            task.wait(.15)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()
            cancelAll = true
        end
        if detect(v,'rbxassetid://9145941681') and cancelAll == false then --roll prima
            task.wait(.53)
            getgenv().roll()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://9145238578') and cancelAll == false then -- stomp
            task.wait(.35)
            getgenv().parry()
            cancelAll = true
        end





        if v:FindFirstChild('Body') and v:FindFirstChild('Body'):FindFirstChild('LeftPelvis') then 
            is_prima = true
        end




        if detect(v,'rbxassetid://10096299376') and cancelAll == false then -- squibbo stream
            task.wait(.2)
            getgenv().roll()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://10098630808') and cancelAll == false then -- squibbo flipkick
            task.wait(.2)
            getgenv().roll()
            cancelAll = true
        end   

        -- squibbo stream rbxassetid://10096299376; squibbo flipkick rbxassetid://10098630808



        if detect(v,'rbxassetid://9995036867') and cancelAll == false then -- owl rush
            task.wait(.2)
            getgenv().fastparry()
            cancelAll = true
            repeat 
                getgenv().fastparry()
                removeStuns()
                task.wait(0.01)
            until detect(v,'rbxassetid://9995036867') == false
        end 
        -- owl rush rbxassetid://9995036867

        -- owl swing 1 rbxassetid://9984057511

        if detect(v,'rbxassetid://9984057511') and cancelAll == false then -- owl swing 1
            task.wait(.23)
            getgenv().parry()
            cancelAll = true
        end   


        if detect(v,'rbxassetid://9983925053') and cancelAll == false then -- owl swing 2 
            task.wait(.23)
            getgenv().parry()
            cancelAll = true
        end   

        -- owl swing 2 rbxassetid://9983925053



        if detect(v,'rbxassetid://10369504335') and cancelAll == false then --aelita sing
            getgenv().roll()
            cancelAll = true
        end   


        -- aelita sing rbxassetid://10369504335


        -- angel 3 thrust rbxassetid://11544020777


        if detect(v,'rbxassetid://11544020777') and cancelAll == false then --angel 3 thrust 
            task.wait(.15)
            repeat
                getgenv().parry()
                removeStuns()
                task.wait(.15)
                getgenv().parry()
                removeStuns()
                task.wait(.15)
                getgenv().parry()
                removeStuns()
            until detect(v,'rbxassetid://11544020777') == false
            cancelAll = true
        end  

        if is_prima then cancelAll = true end


        if just_feinted then cancelAll = true end

        if v:FindFirstChild('Rapier') then is_rapier = true end

        if detect(v,'rbxassetid://10225217835') and cancelAll == false then   -- rapier1
            task.wait(.1)
            if checkStun() then getgenv().roll()
            else
                getgenv().parry()
                removeStuns()
                task.wait()
                getgenv().fastparry()
            end
            removeStuns()
            cancelAll = true
            -- task.wait(0.1)
            -- removeStuns()
            -- getgenv().fastparry()
            -- removeStuns()
            -- getgenv().fastparry()
            -- cancelAll = true
            -- removeStuns()
        end
        if detect(v,'rbxassetid://10225390984') and cancelAll == false then --rapier2
            task.wait(.1)
            if checkStun() then getgenv().roll()
            else
                getgenv().parry()
                removeStuns()
                task.wait()
                getgenv().fastparry()
            end
            removeStuns()
            cancelAll = true
            -- task.wait(0.1)
            -- removeStuns()
            -- getgenv().fastparry()
            -- removeStuns()
            -- getgenv().fastparry()
            -- cancelAll = true
            -- removeStuns()
        end

        --[[
            axe anims
            rbxassetid://10013909049 -- swing 1
            rbxassetid://10013911426 -- swing 2
            rbxassetid://10013915154 -- swing 3
            ^ two hand ^


            one hand:
            rbxassetid://10013909049 -- swing 1
            rbxassetid://10013911426 -- swing 2
            rbxassetid://10013915154 -- swing 3
        ]]



        if detect(v,'rbxassetid://10013909049') and cancelAll == false then -- owl swing 1
            task.wait(.17)
            getgenv().parry()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://10013911426') and cancelAll == false then -- owl swing 1
            task.wait(.17)
            getgenv().parry()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://10013915154') and cancelAll == false then -- owl swing 1
            task.wait(.17)
            getgenv().parry()
            cancelAll = true
        end   


        -- pistol rbxassetid://8787495611 (not done)





        -- if detect(v,'rbxassetid://10022838306') and cancelAll == false then 
        --     task.spawn(function()
        --         removeStuns()
        --         task.wait(5.4)
        --         getgenv().parry()
        --         cancelAll = true
        --     end)
        -- end   
        -- if detect(v,'rbxassetid://10876826705') and cancelAll == false then 
        --     task.spawn(function()
        --         removeStuns()
        --         task.wait(5.4)
        --         getgenv().parry()
        --         cancelAll = true
        --     end)
        -- end   


        -- rbxassetid://10022838306 axe crit
        -- greatsword crit rbxassetid://10876826705


        -- bell rbxassetid://10974528182 slam 1 big greatswird
        --[[
            rbxassetid://10974684486 2
            rbxassetid://11286554002 3
            rbxassetid://10976188963 4

        --]]

        if detect(v,'rbxassetid://10974528182') and cancelAll == false then 
            task.wait(.5)
            getgenv().parry()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://10974684486') and cancelAll == false then 
            task.wait(.5)
            getgenv().parry()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://11286554002') and cancelAll == false then 
            task.wait(.5)
            getgenv().roll()
            cancelAll = true
        end   
        if detect(v,'rbxassetid://10976188963') and cancelAll == false then 
            task.wait(.5)
            getgenv().roll()
            cancelAll = true
        end   

        -- geatsword swing 1 rbxassetid://10787560419
        -- greatsword swing 2 rbxassetid://10873957240


        if detect(v,'rbxassetid://10787560419') and cancelAll == false then 
            task.wait(.2)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://10873957240') and cancelAll == false then 
            task.wait(.2)
            getgenv().parry()
            cancelAll = true
        end  
        -- rbxassetid://10968567648 -- vent out -- could detect  vent in debrisparts to see if its close
        -- vent in rbxassetid://10878360726

        if detect(v,'rbxassetid://10878360726')  then -- and cancelAll == false
            task.spawn(function()
                local isJumpingOut = false 
                repeat task.wait()
                    if detect(v,'rbxassetid://12123375791') then isJumpingOut = true end -- DodgeRing
                    if not v:FindFirstChild('HumanoidRootPart') then isJumpingOut = true end
                until v:FindFirstChild('HumanoidRootPart'):FindFirstChild('DodgeRing') or isJumping == true--until v:FindFirstChild('HumanoidRootPart').Visible == true
                
                if isJumpingOut == false then 
                    --rconsoleprint('thresher roll')
                    task.wait(.35)
                    getgenv().roll()
                end

            end)
            task.spawn(function()
                -- repeat 
                --     task.wait(0.1)
                -- until detect(v,'rbxassetid://10968567648') == true 
                -- task.wait(.15)
                -- getgenv().roll()
            end)

            cancelAll = true
        end 

        -- if detect(v,'rbxassetid://10968567648')  then -- and cancelAll == false
        --     task.wait(.5)
        --     repeat 
        --         task.wait(0.1)
        --         removeStuns()
        --         getgenv().roll()
        --         removeStuns()
        --     until detect(v,'rbxassetid://10968567648') == false 
        --     cancelAll = true
        -- end   

        -- regular sword swing 1 rbxassetid://8698443433

        -- reg sword swing 2 rbxassetid://8699014368

        -- reg sword swing 1 two hand rbxassetid://9215215492

        -- reg sword swing 2 two hand rbxassetid://9255163830


        local function getWaitTime() -- could make this function for all of them
            -- so dagger would just be getWaitTime() instead of detecting anims
            local weaponwait = 0.2
            if v:FindFirstChild('Falchion') then 
                weaponwait = 0.1
            end
            if v:FindFirstChild('Scimitar') then 
                weaponwait = 0.1
            end
            if v:FindFirstChild('Katana') then 
                weaponwait = 0.1
            end
            if v:FindFirstChild('VigilLongsword') then 
                weaponwait = 0.1
            end
            if v:FindFirstChild('BaseSword') then 
                weaponwait = 0.1
            end
            return weaponwait
        end


        if detect(v,'rbxassetid://8698443433') and cancelAll == false then 
            task.wait( getWaitTime() )
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://8699014368') and cancelAll == false then 
            task.wait( getWaitTime() )
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://9215215492') and cancelAll == false then 
            task.wait( getWaitTime() )
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://9255163830') and cancelAll == false then 
            task.wait( getWaitTime() )
            getgenv().parry()
            cancelAll = true
        end  
        




        -- spear th 1 rbxassetid://11363516302
        -- spear th 2 rbxassetid://11363591881
        -- spear th oneh 1 rbxassetid://11404159898
        -- spear th oneh 2 rbxassetid://11404162476

        if detect(v,'rbxassetid://11363516302') and cancelAll == false then 
            task.wait(.1)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://11363591881') and cancelAll == false then 
            task.wait(.1)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://11404159898') and cancelAll == false then 
            task.wait(.1)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://11404162476') and cancelAll == false then 
            task.wait(.1)
            getgenv().parry()
            cancelAll = true
        end  
        


        -- enf kick rbxassetid://8924706624

        -- enf vortex rbxassetid://8917904390
        -- enf sw 1 rbxassetid://8916943692
        -- enf sw 2 rbxassetid://8917108290

        if detect(v,'rbxassetid://8924706624') and cancelAll == false then 
            task.wait(.15)
            getgenv().parry()
            cancelAll = true
            --task.wait(.22)
            -- if checkStun() then task.wait(0.1); getgenv().roll()
            -- else
            --     getgenv().parry()
            --     removeStuns()
            --     task.wait()
            --     getgenv().fastparry()
            -- end
            -- removeStuns()

            cancelAll = true
        end  
        if detect(v,'rbxassetid://8916943692') and cancelAll == false then 
            task.wait(.2)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://8917108290') and cancelAll == false then 
            task.wait(.2)
            getgenv().parry()
            cancelAll = true
        end  
        
        -- rbxassetid://8917108290 swing 2
        if detect(v,'rbxassetid://8917904390') then 
            task.wait(.2)
            getgenv().parry()
            if checkStun() then getgenv().roll()
            else
                getgenv().roll()
                removeStuns()
                getgenv().parry()
                removeStuns()
            end
            removeStuns()
            cancelAll = true
            -- task.wait(.28)
            -- getgenv().parry()
            -- cancelAll = true
            repeat 
                getgenv().fastparry()
                removeStuns()
                task.wait(0.01)
            until detect(v,'rbxassetid://8917904390') == false
        end  



        -- NEW MOBS


        if detect(v,'rbxassetid://11946556384') then -- golem slash
            task.wait(.2)
            getgenv().parry()
        end  
        
        if detect(v,'rbxassetid://11946771956') then -- golem slash 2
            -- rconsoleprint('golem slash 2')
            task.wait(.2)
            getgenv().fastparry()
            task.wait(.1)
            getgenv().parry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://11946104038') then -- golem roll
            remove_rollstuns()
            task.wait(.2)
            getgenv().roll()
            cancelAll = true 
        end  
        if detect(v,'rbxassetid://11926504584') then -- golem slam roll
            remove_rollstuns()
            task.wait(.15)
            getgenv().roll()
            cancelAll = true 
        end  


        if detect(v,'rbxassetid://12072370691') then -- thresher bite
           -- rconsoleprint('thresher bite 3 times')
            task.wait(.21)
            getgenv().fastparry()
            getgenv().quickfinishparry()
            task.wait(.21)
            getgenv().fastparry()
            getgenv().quickfinishparry()
            task.wait(.17)
            getgenv().fastparry()
            cancelAll = true
        end  

        if detect(v,'rbxassetid://12072618083') then -- thresher whip
            task.wait(.36)
            getgenv().parry()
            cancelAll = true
        end  

        if detect(v,'rbxassetid://12060686663') then -- thresher claws
            task.wait(.2)
            getgenv().fastparry()
            getgenv().quickfinishparry()
            task.wait(.3)
            getgenv().fastparry()
            getgenv().quickfinishparry()
            cancelAll = true
        end  
        if detect(v,'rbxassetid://12072719081') then -- thresher dig
            -- dig 
            if vs == 'debug' then 
                rconsoleprint('thresher dug')
            end

            task.spawn(function()
                local isJumpingOut = false 
                repeat task.wait()
                    if detect(v,'rbxassetid://12123375791') then isJumpingOut = true end -- DodgeRing
                until v:FindFirstChild('HumanoidRootPart'):FindFirstChild('DangerRing') or isJumping == true--until v:FindFirstChild('HumanoidRootPart').Visible == true
                
                if isJumpingOut == false then 
                    --rconsoleprint('thresher roll')
                    local getpos = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    repeat task.wait(0.001)
                        getpos = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    until getpos < 30--until v:FindFirstChild('HumanoidRootPart').Visible == true
                    
                    task.wait(.2)
                    getgenv().roll()
                end

            end)
            cancelAll = true 
        end  

        -- need to check if person is down and they head towards us with danger ring
        -- custom animation detects
        if detect(v,'rbxassetid://12073900338') then -- thresher stinky breath roll
            remove_rollstuns()
            task.wait(.25)
            getgenv().roll()
            cancelAll = true 
        end  
        if detect(v,'rbxassetid://12382673054') then -- thresher slam
            task.wait(.6)
            getgenv().parry()
            cancelAll = true 
        end  

        
        -- new bell


 

        if is_rapier then cancelAll = true end
        local rolling = false
        -- for _,item in pairs(enemyfolder:GetChildren()) do 
        --     if table.find(rollMoves,item.Name) then 
        --         rolling = true
        --     end
        -- end
        for _,item in pairs(statusFolder:GetChildren()) do 
            if table.find(StunRecognisers,item.Name) then 
                cantParry = true
            end
        end
        if rolling == false and cantParry == false and cancelAll == false then
            if ourfolder:FindFirstChild('Cooldowns') and ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('M1') then 
                getgenv().M2()
            end


            getgenv().parry()
            -- removeStuns()
            -- task.wait(.04)
            -- getgenv().fastparry()
            -- removeStuns()
        elseif rolling == true and cantParry == true and cancelAll == false then -- cantRoll

            removeStuns()
            task.wait(0.1)
            getgenv().roll()
            removeStuns()
        elseif cantParry == true and cancelAll == false then 

            removeStuns()
            task.wait(0.1)
            getgenv().roll()
            removeStuns()
        elseif rolling == true and cancelAll == true and cantParry == true then 
            removeStuns()
        else
            print('Act couldnt be confirmed. Status: ROLLING - '..tostring(rolling)..' IF WAS ABLE TO PARRY - '..tostring(cantParry)..' but did nothing is cancel value - '..tostring(cancelAll).. '?')
        end

    end




    local function checkGuardbroken(r)
        local brokens = {
            'Guardbreak';
            'Guardbreak2'
        }
        local x = false
        if r:FindFirstChild('Torso') then 
            for _,v in next, r:FindFirstChild('Torso'):GetChildren() do 
                if table.find(brokens,v.Name) then x = true end 
            end
        end
        if r:FindFirstChild('HumanoidRootPart') then 
            for _,v in next, r:FindFirstChild('HumanoidRootPart'):GetChildren() do 
                if table.find(brokens,v.Name) then x = true end 
            end
        end
        return x
    end




    local WarningAnimations = {
        ['Thresher Underground'] = {
            ID = 'rbxassetid://12072719081';
        }
    }


    local function attachAnimationPlayed(info)
        local target_character = info.trg
        -- if target_character then 
        --     target_character.Humanoid.AnimationPlayed:Connect(function(animationGet)
        --         if not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then return end
        --         local DistanceAway = (target_character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                
        --         if DistanceAway > getgenv().Distance and DistanceAway < getgenv().Distance *1.5 then 
        --             return
        --         end
        --         local MatchedMove = nil 
        --         local MatchedMoveID = ''
        --         for _,v in next, WarningAnimations do 
        --             if animationGet.Animation.AnimationId == v['ID'] then 
        --                 MatchedMove = _ 
        --                 MatchedMoveID = v['ID']
        --                 break
        --             end
        --         end
    
        --         getgenv().ParryAct(target_character)
    
    
        --     end)
        -- end

    end



    print('assigning autoparry to characters')

    for _,character in next, game.ReplicatedStorage.CharacterData:GetChildren() do 
        if character.Name ~= ' '  and character:FindFirstChild('StatusFolder') and character.Name ~= game.Players.LocalPlayer.Name then 
            local status = character:WaitForChild('StatusFolder')
            local connectedFunction = nil 
            local workChar = workspace.Characters:WaitForChild(character.Name)
            -- print('workchar = '..workChar.Name)
            connectedFunction = status.ChildAdded:Connect(function(newchild)
                local IsInDistance = false
                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart')  then 
    
                    
                    
                    -- local rayOrigin = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position
                    -- local rayDestination = workChar.HumanoidRootPart.Position
                    
                    -- local rayDirection = rayDestination - rayOrigin
                    
                    -- local raycastResult = workspace:Raycast(rayOrigin, rayDirection)                                    
                    
                    -- if raycastResult then 
                    --     -- print("Instance:", raycastResult.Instance)
                    --     -- print("Position:", raycastResult.Position)
                    --     -- print("Distance:", raycastResult.Distance)
                    --     -- print("Material:", raycastResult.Material)
                    --     -- print("Normal:", raycastResult.Normal)         
                    --     if raycastResult.Distance <= getgenv().Distance then 
                    --         IsInDistance = true
                    --         print(workChar.Name..' was detected - '..raycastResult.Distance)
                    --     end
                    -- else                     
                    --     print('raycast is '..tostring(raycastResult))
                    -- end
                    local ticked = 0 
    
                    if workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance then 
                        IsInDistance = true
                        --print(workChar.Name..' was detected '.. (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude)
                    elseif workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position.Z - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z) >0  then 
                        if (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance *1.2 then 
                            IsInDistance = true
                            print('parry in air')
                        end   
                    end
                    if IsInDistance == false then 
    
                        repeat 
                            task.wait(0.1)
                            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance then 
                                IsInDistance = true
                                --print(workChar.Name..' was detected '.. (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude)
                            elseif game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position.Z - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z) >0  then 
                                if (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance *1.2 then 
                                    IsInDistance = true
                                    print('parry in air')
                                end   
                            end
                            ticked += 0.5
                        until IsInDistance == true or ticked >= 2 -- make ticked a slider
    
                    end
                end
                
                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and IsInDistance == true and getgenv().AutoParryingFW == true  then 
                    --print(newchild.Name)
                    if newchild.Name == 'Hitting' or checkCrit(workChar) then 
                        getgenv().ParryAct(workChar)
                    end
                end
            end)
            attachAnimationPlayed{trg = workChar}

            local typeFound = nil 
            if game.Players:FindFirstChild(character.Name) then 
                typeFound = 'player'
            else
                typeFound = 'npc'
            end
            waitUntilLeft{
                func = connectedFunction,
                charType = typeFound,
                user = character.Name
            }-- could make it return
        end
    end


    print('assigning autoparry to child added')
    local childAddedConnection = nil
    childAddedConnection = workspace.Characters.ChildAdded:Connect(function(newPlayer)
        if newPlayer.Name == game.Players.LocalPlayer.Name then return end
        local character = game.ReplicatedStorage.CharacterData:WaitForChild(newPlayer.Name) 
        local status = character:WaitForChild('StatusFolder')
        local connectedFunction = nil 
        local workChar = workspace.Characters:WaitForChild(character.Name)

        connectedFunction = status.ChildAdded:Connect(function(newchild)
            local IsInDistance = false
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart')  then 

                
                
                -- local rayOrigin = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position
                -- local rayDestination = workChar.HumanoidRootPart.Position
                
                -- local rayDirection = rayDestination - rayOrigin
                
                -- local raycastResult = workspace:Raycast(rayOrigin, rayDirection)                                    
                
                -- if raycastResult then 
                --     -- print("Instance:", raycastResult.Instance)
                --     -- print("Position:", raycastResult.Position)
                --     -- print("Distance:", raycastResult.Distance)
                --     -- print("Material:", raycastResult.Material)
                --     -- print("Normal:", raycastResult.Normal)         
                --     if raycastResult.Distance <= getgenv().Distance then 
                --         IsInDistance = true
                --         print(workChar.Name..' was detected - '..raycastResult.Distance)
                --     end
                -- else                     
                --     print('raycast is '..tostring(raycastResult))
                -- end
                local ticked = 0 

                if workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance then 
                    IsInDistance = true
                    --print(workChar.Name..' was detected '.. (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude)
                elseif workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position.Z - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z) >0  then 
                    if (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance *1.2 then 
                        IsInDistance = true
                        print('parry in air')
                    end   
                end
                if IsInDistance == false then 

                    repeat 
                        task.wait(0.1)
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance then 
                            IsInDistance = true
                            --print(workChar.Name..' was detected '.. (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude)
                        elseif game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and workChar:FindFirstChild('HumanoidRootPart') and (workChar.HumanoidRootPart.Position.Z - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position.Z) >0  then 
                            if (workChar.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= getgenv().Distance *1.2 then 
                                IsInDistance = true
                                print('parry in air')
                            end   
                        end
                        ticked += 0.5
                    until IsInDistance == true or ticked >= 2 -- make ticked a slider

                end
            end
            
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and IsInDistance == true and getgenv().AutoParryingFW == true  then 
                --print(newchild.Name)
                if newchild.Name == 'Hitting' or checkCrit(workChar) then 
                    print('type of parry act')
                    getgenv().ParryAct(workChar)
                end
            end
        end)
        attachAnimationPlayed{trg = workChar}
        local typeFound = nil 
        if game.Players:FindFirstChild(character.Name) then 
            typeFound = 'player'
        else
            typeFound = 'npc'
        end
        waitUntilLeft{
            func = connectedFunction,
            charType = typeFound,
            user = character.Name
        }-- could make it return
    end)



    -- game.Players.LocalPlayer.Character:WaitForChild('Humanoid'):GetPropertyChangedSignal('WalkSpeed'):Connect(function()
    --     if getgenv().fw3localFw3['walkspeedtoggle'] then 
    --         game.Players.LocalPlayer.Character:WaitForChild('Humanoid').WalkSpeed = getgenv().fw3localFw3['walkspeed']
    --     end
    -- end)





    Configiuration:CreateConfigSystem()

    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('m1 break') break end
            if getgenv().buttonUp == true and getgenv().fw3localFw3['m1hold'] == true then 
                getgenv().M1()
                task.wait(.2)
                if getgenv().fw3localFw3['fastswing'] == true then 
                    getgenv().fastSwing()
                end
            end
        end
    end)
    getgenv().DontStop = {
        'Idle';
        'SwordIdle';
        'GunIdle';
        'rbxassetid://10206891650';
        'rbxassetid://8763531138';
        'rbxassetid://9255807166';
        'rbxassetid://9891226026';
        'rbxassetid://10013439342';
        'rbxassetid://10224946200';
        'rbxassetid://8763531138';
    }
    getgenv().stopAnims = function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
            if not table.find(getgenv().DontStop,v.Animation.AnimationId) or table.find(getgenv().DontStop,v.Animation.Name) then 
                v:Stop()
            end
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
                if not table.find(getgenv().DontStop,v.Animation.AnimationId) or table.find(getgenv().DontStop,v.Animation.Name) then 
                    v:Stop()
                end
            end
        end
    end
    getgenv().trickparryez = function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
            v.Animation.AnimationId = 'bozo'
        end
    end
    local function removeStuns()
        if ourfolder:FindFirstChild('StatusFolder') then 
            for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                v:Destroy()
                --print('-- DESTROYED BECAUSE FEINTED')
            end
        end
    end
    getgenv().parryspears = {}
    getgenv().parrybullet = {}
    getgenv().parryslash = {}
    getgenv().allparryobjects = {}
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('m1 loop anim loop break') break end 
            if getgenv().fw3localFw3['fixm1bug'] == true then 
                task.spawn(function()
                    if cooldowns and cooldowns:FindFirstChild('M1') then 
                        cooldowns:FindFirstChild('M1'):Destroy()
                    end
                end)
            end
            if getgenv().fw3localFw3['possiblem1'] == true and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                -- print('@possiblem1')
                for _,v in pairs(workspace.Characters:GetChildren()) do 
                    if v~= game.Players.LocalPlayer.Character and (v:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                        if dist.Magnitude <= getgenv().Distance then 
                            if game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name) and v.Name ~= game.Players.LocalPlayer.Name then 
                                if game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('StatusFolder') and game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('Cooldowns') then
                                    local ffound = game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('StatusFolder') 
                                    local cdfound = game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('Cooldowns') 
                                    local getstuns = {
                                        --'RagdollStun';
                                        'Stun';
                                        'Stun1';
                                    }
                                    -- and not find hitting
                                    if ffound and ffound:FindFirstChild('Stun') or ffound:FindFirstChild('Stun1') or ffound:FindFirstChild('RagdollStun') or cdfound:FindFirstChild('RollCD') then 
                                        print('@m1stun')
                                        --pcall(function()
                                            -- if ourfolder and cooldowns and statusFolder and
                                            if not cooldowns:FindFirstChild('RollCD') and
                                            not statusFolder:FindFirstChild('ParryCD') then 
                                                print('@beforem1')
                                                if getgenv().fw3localFw3['jumpwhentargetragdolled'] == true and v:FindFirstChild('Torso') and v:FindFirstChild('Torso'):FindFirstChild('RagdollAttachment') then 
                                                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                                                    task.wait(.2)
                                                end
                                                print('@codem1')
                                                getgenv().M1()
                                                
                                                -- if ragdolled target then jump for aerial
                                            
                                            else
                                                -- print('ourfolder: '..ourfolder.Name)
                                                -- print('Cooldowns: '..ourfolder:FindFirstChild('Cooldowns') .Name or 'nil')
                                                -- print('rollcd cooldown: '..ourfolder:FindFirstChild('Cooldowns'):FindFirstChild('RollCD').Name or 'nil' )
                                                -- print('statusfolder parrycd: '..statusFolder:FindFirstChild('ParryCD').Name or 'nil')
                                                -- print('statusfolder: '..statusFolder.Name)
                                            end      
                                        --end)


                                    end
                                end
                            end
                        end
                    end
                end            
            end
            if getgenv().fw3localFw3['possiblem2'] == true  then 
                for _,v in pairs(workspace.Characters:GetChildren()) do 
                    if (v:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                        if dist.Magnitude <= getgenv().Distance then 
                            if checkGuardbroken(v) then 
                                getgenv().useHeavy()
                            end
                        end
                    end
                end
            end
            if getgenv().fw3localFw3['noanims'] == true then 
                pcall(function()
                    getgenv().stopAnims() 
                    getgenv().stopAnims() 
                    getgenv().stopAnims() 
                end)
            end
            if getgenv().fw3localFw3['strongleftonstun'] == true  then 
                for _,v in pairs(workspace.Characters:GetChildren()) do 
                    if (v:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                        if dist.Magnitude <= getgenv().Distance then 
                            if game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name) and v.Name ~= game.Players.LocalPlayer.Name then 
                                if game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('StatusFolder') then
                                    local ffound = game.ReplicatedStorage.CharacterData:FindFirstChild(v.Name):FindFirstChild('StatusFolder') 
                                    if ffound:FindFirstChild('Stun') or ffound:FindFirstChild('Stun1') then 
                                        getgenv().usestrongleft()
                                    end
                                end
                            end
                        end
                    end
                end
            end

            if getgenv().fw3localFw3['trickautoparry'] == true then 
                getgenv().trickparryez()
            end




            if Attach_to_back:IsPressed() == true  then -- and getgenv().istyping == false
                print('attadh pressed')
                task.spawn(function()
                    repeat 
                        local Closest = nil 
                        local closestpos = nil
                        task.wait(0.01)
                        for _,v in pairs(workspace.Characters:GetChildren()) do 
                            if (v:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                if dist.Magnitude <= getgenv().Distance then 
                                    
                                    if Closest == nil then 
                                        Closest = v 
                                        closestpos = dist.Magnitude
                                    else
                                        if closestpos < dist.Magnitude then 
                                            Closest = v 
                                            closestpos = dist.Magnitude
                                        end
                                    end

                                end
                            end
                        end
                        if Closest ~= nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            if closestpos >3 and getgenv().fw3localFw3['CurrentTween'] == nil then 
                                local TweenSpeedProCalculation = tonumber('0.'..math.floor(closestpos)) + math.floor(closestpos/getgenv().Distance) + math.floor(closestpos/(getgenv().Distance*2))
                                print('Tween Speed: '..TweenSpeedProCalculation)
                                getgenv().fw3localFw3['CurrentTween'] = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.9),{
                                    CFrame = Closest:FindFirstChild('HumanoidRootPart').CFrame
                                })
                                getgenv().fw3localFw3['CurrentTween']:Play()
                                --or getgenv().fw3localFw3['CurrentTween'].Completed == true
                                task.spawn(function()
                                    repeat task.wait() until Attach_to_back:IsPressed() == false 
                                    getgenv().fw3localFw3['CurrentTween']:Pause()
                                    getgenv().fw3localFw3['CurrentTween'] = nil
                                end)

                            elseif closestpos <3 then
                                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Closest:FindFirstChild('HumanoidRootPart').CFrame
                            end

                        end
                    until Attach_to_back:IsPressed() == false      
                end)
            end


            task.spawn(function()








                if workspace:FindFirstChild('DebrisParts'):FindFirstChild('Slash') and getgenv().AutoParryingFW == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                        if v.Name == 'Slash' then
                            local closestToSlash = false 

                            function checkClosestSlash()
                                local xreturn = false
                                for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                                    if v.Name == 'Slash' then
                                        local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 5 then 
                                            xreturn = true
                                        end
                                        task.wait(0.1)
                                    end
                                end
                                return xreturn
                            end
                            local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                
                            if checkClosestSlash() and not table.find(getgenv().parryslash,v) and dist.Magnitude <= 5  then -- check if particle,  and v:FindFirstChild('Explosion').Enabled == true
                                table.insert(getgenv().parrybullet,v)
                                task.spawn(function()
                                    -- task.wait(.01)--task.wait(.05)
                                    getgenv().fastparry()
                                    getgenv().quickfinishparry()
                                    print'Slash'
                                end)
                            end
                        end
                    end
                end




                if workspace:FindFirstChild('DebrisParts'):FindFirstChild('Bullet') and getgenv().AutoParryingFW == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                        if v.Name == 'Bullet' then
                            local closestToTurret = false 

                            local ourTurret = false
                            function checkClosestBullet()
                                local xreturn = false
                                for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                                    if v.Name == 'Bullet' then
                                        local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 5 then 
                                            xreturn = true
                                        end
                                        task.wait(0.1)
                                    end
                                end
                                return xreturn
                            end
                            function turretClosestBullet()
                                local xreturn = false
                                for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                                    if v.Name == 'Bullet' then
                                        local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 20 then 
                                            xreturn = true
                                        end
                                        task.wait(0.1)
                                    end
                                end
                                return xreturn
                            end
                            function closestTurret()
                                local xreturn = false
                                for _,v in pairs(workspace.Characters:GetChildren()) do 
                                    if v.Name:sub(1,6) == 'Turret' and turretClosestBullet() then
                                        local dist = (turretClosestBullet().Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 5 then 
                                            xreturn = true
                                            closestToTurret = true 
                                            if v:FindFirstChild('Owner') and v:FindFirstChild('Owner').Value == game.Players.LocalPlayer.Name then 
                                                ourTurret = true
                                            end
                                        end
                                        task.wait(0.001)
                                    end
                                end
                                return xreturn
                            end
                            local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                            

                                
                            if ourTurret == false and closestToTurret == false and not table.find(getgenv().parrybullet,v) and dist.Magnitude <= 5  then -- check if particle,  and v:FindFirstChild('Explosion').Enabled == true
                                table.insert(getgenv().parrybullet,v)
                                task.spawn(function()
                                    -- task.wait(.01)--task.wait(.05)
                                    getgenv().fastparry()
                                    getgenv().quickfinishparry()
                                    print'Bullet'
                                end)
                            end
                        end
                    end
                end
                if workspace:FindFirstChild('DebrisParts'):FindFirstChild('LightSpear') and getgenv().AutoParryingFW == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                        if v.Name == 'LightSpear' then
                            function checkClosestSpear()
                                local xreturn = false
                                for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                                    if v.Name == 'LightSpear' then
                                        local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 5 then 
                                            xreturn = true
                                        end
                                        task.wait(0.1)
                                    end
                                end
                                return xreturn
                            end
                            local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                            if not table.find(getgenv().parryspears,v) and dist.Magnitude <= 10 and v:FindFirstChild('Spear').Enabled == true  then -- check if particle,  and v:FindFirstChild('Explosion').Enabled == true
                                table.insert(getgenv().parryspears,v)
                                task.spawn(function()
                                    task.wait(.2)--task.wait(.05)
                                    getgenv().parry()
                                    print'Parry Angel'
                                    -- repeat 
                                    --     task.wait(0.1)
                                    --     getgenv().fastparry()
                                    --     print('Parry Angel')
                                    -- until not workspace:FindFirstChild('DebrisParts'):FindFirstChild('LightSpear') -- checkClosestSpear() == false --
                                end)
                            end
                        end
                    end
                end
                if workspace:FindFirstChild('DebrisParts'):FindFirstChild('Arrow') and getgenv().AutoParryingFW == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                        if v.Name == 'Arrow' then
                            function ArrowCheck()
                                local xreturn = false
                                for _,v in pairs(workspace:FindFirstChild('DebrisParts'):GetChildren()) do 
                                    if v.Name == 'Arrow' then
                                        local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                        if dist.Magnitude <= 5 then 
                                            xreturn = true
                                        end
                                        task.wait(0.5)
                                    end
                                end
                                return xreturn
                            end
                            local dist = (v.Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                            if dist.Magnitude <= 7 then 

                                task.spawn(function()
                                    task.wait(.1)
                                    getgenv().fastparry()
                                    -- repeat 
                                    --     task.wait(0.3)
                                    --     getgenv().fastparry()
                                    -- until not workspace:FindFirstChild('DebrisParts'):FindFirstChild('LightSpear') --  ArrowCheck() == false --
                                end)
                            end
                        end
                    end
                end



            end)

            -- if getgenv().fw3localFw3['momentumtoggle'] then 
            --     if configurations:WaitForChild('Speed'):FindFirstChild('Momentum') then 
            --         for _,v in next, configurations:WaitForChild('Speed'):GetChildren() do 
            --             if v.Name == 'Momentum' then 
            --                 v.Value = getgenv().fw3localFw3['momentum']
            --             end
            --         end
            --     end
            -- end
            if getgenv().fw3localFw3['walkspeedtoggle'] == true then 
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().fw3localFw3['walkspeed']
                end
            end
        end
    end)
    task.spawn(function()
        repeat task.wait(); until getgenv().loopsUnload == true;
        print('loop disconnected fw3')
        childAddedConnection:Disconnect()
    end)
    -- task.spawn(function()
    --     while task.wait() do 
    --         if getgenv().loopsUnload == true then print('fakewoken 3 true break') break end 
    --         if getgenv().AutoParryingFW == true then 
    --             for _,v in pairs(workspace.Characters:GetChildren()) do 
    --                 if v~= game.Players.LocalPlayer.Character and v:IsA('Model') and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
    --                     local distance = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
    --                     if distance.Magnitude <= getgenv().Distance and not table.find(alreadySorted,v.Name) then 
    --                         table.insert(alreadySorted,v.Name)
    --                         local humanoid = v:FindFirstChild('Humanoid');
    --                         local getTracks= humanoid:GetPlayingAnimationTracks()

    --                         local waitTime = 0
    --                         for _a, animation in next, getgenv().parryID  do 
    --                             if string.split(animation,'-')[1] then 
    --                                 waitTime = string.split(animation,'-')[2]
    --                                 break
    --                             end
    --                         end
    --                         task.wait(waitTime)
    --                         getgenv().parry()
    --                         task.delay(0.2,function()
    --                             for sort,unsort in pairs(alreadySorted) do 
    --                                 if unsort == v.Name then table.remove(alreadySorted,sort) end
    --                             end
    --                         end)
    --                     end
    --                 end
    --             end
    --         end
    --     end
    -- end)

    getgenv().DetectedHitting = 0
    local function checkStun()
        local stuns = {
            'Stun1';
            'Stun';
            'ParryStun';
        }
        local x = false
        if ourfolder:FindFirstChild('StatusFolder') then 
            for i,v in pairs(ourfolder:FindFirstChild('StatusFolder'):GetChildren()) do 
                if table.find(stuns,v.Name) then x = true; end
            end
        end
        return x
    end


    -- bypass teleport. get a position with X. Divide it by how many tweens, <int> TweenToGet, and use a for i=1, and tween to x

    
    -- getgenv().TweenToGet = 5
    -- getgenv().TPOS = Vector3.new(15.39610767364502, 52.9999885559082, 1.752089500427246)

    -- getgenv().tweensliced= function()
    --     for i=1, getgenv().TweenToGet do 
    --         task.wait(2)
    --         game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(1),{
    --                 CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(getgenv().TPOS.X/getgenv().TweenToGet,
    --                 getgenv().TPOS.Y,
    --                 getgenv().TPOS.Z -- use rays to detect if in air and then tweenp to the bottom
    --             )
    --         })
    --     end
    -- end 





    getgenv().stuns_to_remove = {
        'Stun';
        'Stun1';
        'Stun2';
        'ParryCD';
        'NoJump';
    }

    getgenv().ReactHit = function(info)
        if info.W.Name == 'Hitting' and getgenv().fw3localFw3['autofeint'] == true and checkStun() == false then 
            if getgenv().fw3localFw3['autofeintchance'] == true then 

                local total = 100/getgenv().fw3localFw3['feintchance']
                local chance = math.random(1,total) --Random.new(); chance = Random.NextNumber(1,chance)


                local calculatedChance = 0 
                

                if chance == 1 then 
                    getgenv().M2()
                end

                -- if the slider was at 20 what would i do:
                -- oneValue  = 100/20,    --: 5
                --  chance = math.random(1,oneValue)




                -- get chance out of 100, math.random(1,calculatedChance) - calculatedchance would get the chance 
                -- like 20% which is 
                -- 100/5 so if i put the chance at 20% it would do r = math.random(1,5) and check if the random number is equal to the calculated range
                -- so if i put 20% i would want 1 because thats the first. if i put 40% i would want 2 because its second 
            else 

                if getgenv().DetectedHitting <getgenv().fw3localFw3['swingstofeint'] then 
                    getgenv().DetectedHitting+=1
                    --print('add')
                else
                   -- print(getgenv().DetectedHitting..' uh '..getgenv().fw3localFw3['swingstofeint'])
                    getgenv().DetectedHitting = 0
                    getgenv().M2()
                end
            end
        elseif table.find(getgenv().stuns_to_remove,info.W.Name) and getgenv().fw3localFw3['nostunonhit'] == true then 

            pcall(function()
                info.W:Destroy()  
            end)

        end
    end

    local connectionFolder = nil; connectionFolder = statusFolder.ChildAdded:Connect(function(W)
        getgenv().ReactHit({W = W})
    end)
    ourfolder.ChildRemoved:Connect(function(W)
        if W.Name == 'StatusFolder' then 
            connectionFolder:Disconnect()

            connectionFolder = ourfolder:WaitForChild('StatusFolder').ChildAdded:Connect(function(W)
                getgenv().ReactHit({W = W})
            end)
        end
    end)


        --_G.Parrying = false
    --end


    -- use childadded and detect animation


    local ESPsect = ESPTab:CreateSector('ESP','left')
    getgenv().playeresp = true
    ESPsect:AddSeperator()
    ESPsect:AddToggle("ESP", true, function(xstate)
        getgenv().playeresp = xstate
    end)
    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv().CreatePlayerEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        local esp = Drawing.new('Text')
        esp.Visible = false
        esp.Center = true 
        esp.Outline = true 
        esp.Font = 2 
        esp.Size = 13
        esp.Color = Color3.new(5,0,0)
        esp.Text = 'SEXY'
    
        -- local function upd()
        --     local c 
        --     c = game:GetService('RunService').RenderStepped:Connect(function()
        --         task.wait()
        --         if v.Character and v~= game.Players.LocalPlayer  and v.Character:FindFirstChild('HumanoidRootPart') then 
        --             local espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
    
        --             if onscreen and getgenv().playeresp == true then 
        --                 esp.Position = Vector2.new(espv.X,espv.Y ) + Vector2.new(0,1)
        --                 if getgenv().streamermode == false then 
        --                     esp.Text = v.Name
        --                 else
        --                     esp.Text = v.Name:sub(1,2)..'cummybuttermilk'
        --                 end

        --                 if getgenv().playeresp == true then esp.Visible = true end
                     
    
        --             else
        --                 esp.Visible = false
        --             end
    
        --         else
        --             if game.Players:FindFirstChild(v.Name) == nil then c:Disconnect() end
        --             esp.Visible = false
        --         end
        --     end)
        -- end


        local tracer = Drawing.new('Line')
        tracer.Visible = false
        tracer.Color = Color3.new(1,0,0)
        tracer.Thickness = 1 
        tracer.Transparency = 1 
        
        
        local box_o = Drawing.new('Square')
        box_o.Visible = false
        box_o.Color = Color3.new(0,0,0)
        box_o.Thickness = 2
        box_o.Transparency =1 
        box_o.Filled = false
        
        local box = Drawing.new('Square')
        box.Visible = false
        box.Color = Color3.new(1,0,0)
        box.Thickness = 1.5
        box.Transparency =1 
        box.Filled = false
        
        local hb_o = Drawing.new('Square')
        hb_o.Visible = false
        hb_o.Color = Color3.new(0,0,0)
        hb_o.Thickness = 1
        hb_o.Transparency =1 
        hb_o.Filled = false
        
        local hb = Drawing.new('Square')
        hb.Visible = false
        hb.Color = Color3.new(1,0,0)
        hb.Thickness = 1
        hb.Transparency =1 
        hb.Filled = true
        local health = Drawing.new('Text')
        health.Visible = false
        local distancex = Drawing.new('Text')
        distancex.Visible = false
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            cam = workspace.CurrentCamera
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv().playeresp and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    local vroot = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv().playeresp and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))

    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end

                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true

                        local Talents = game:GetService("ReplicatedStorage").Data:FindFirstChild(v.Name):FindFirstChild('Talents')
                        local Power = game:GetService("ReplicatedStorage").Data:FindFirstChild(v.Name):FindFirstChild('Power')
                        local isMob = v.Character:FindFirstChild('Talents')
                        if isMob then 
                            Talents =isMob
                            Power = v.Character:FindFirstChild('Data'):FindFirstChild('Power')
                        end
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,1)
                        if Talents then 
                            esp.Text = '['..v.Character.Humanoid.MaxHealth..'/'..v.Character.Humanoid.Health..'] ['..math.floor(distance)..']\n    '..v.Name..'\nTalents: '..#Talents:GetChildren()..'  Level:'..Power.Value
                        end
                        
                        if getgenv().playeresp == true and Talents then esp.Visible = true else esp.Visible = false end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true  then 
                    xkeeprunning:Disconnect()
                    task.wait(1)
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)

    end


    
    getgenv().Players = {}
    getgenv().selectedPlayer = ''
    for i,v in pairs(game.Players:GetChildren()) do 
        if v:IsA('Player') then 
            table.insert(getgenv().Players,v.Name)
            getgenv().CreatePlayerEsp(v)
        end
    end


    local PlayerTP = fakesect:AddDropdown("Player Teleportation", getgenv().Players, "", false, function(dropdownv)
        getgenv().selectedPlayer = dropdownv
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    fakesect:AddButton('Teleport to Player',function()
        if game.Players:FindFirstChild(getgenv().selectedPlayer) then 
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(selectedPlayer).Character:FindFirstChild('HumanoidRootPart').CFrame
            end)
        end
    end)


    game.Players.PlayerAdded:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        --Options.PlayerTP.Values = getgenv().Players 
        --PlayerTP:Set(getgenv().Players )
        PlayerTP:Add(xchild.Name)
        --PlayerTP:updateText(getgenv().selectedPlayer)
        --PlayerTP:Set(getgenv().Players)
        getgenv().CreatePlayerEsp(xchild)
    end)
    game.Players.PlayerRemoving:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        PlayerTP:Remove(xchild.Name)

    end)


    --local PlayerList = Top:CreatePlayerlist('Players',fakesect)

elseif game.PlaceId == 6168898345 then -- BULWARK


    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    if make_writeable then make_writeable(mt) end 

    mt.__namecall = newcclosure(function(self,...)
        if  getnamecallmethod() == 'FireServer' and tostring(self) == 'Stamina' then --// checkcaller -- not checkcaller() and
            local args = {...}
            -- if args[1] == getgenv().remotestop  then 
            --     return 0
            -- end
            return 0
        end
        return namecall(self,...)
    end)


    local Top = window:CreateTab(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name);
    local sector = Top:CreateSector('Cheats','left')
    getgenv().Distance = 0
    getgenv().Ping = 0
    getgenv().AutoParrying = false
    sector:AddSlider("AutoParry Distance", 0, 0, 100, 1, function(State)
        getgenv().Distance = State
    end)
    sector:AddSlider("Ping Adjustment", 0, 0, 100, 1, function(State)
        getgenv().Ping = State
    end)
    sector:AddToggle("Auto Parry", false, function(xstate)
        getgenv().AutoParrying = xstate
    end)

    sector:AddButton('Print Timings',function()
        local ping_adjustment = 0
        local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 

        windupWait = 0.09*ping_adjustment
        delayWait = 0.035*ping_adjustment
        print('Windup Wait, '..windupWait)
        print('Delay Wait, '..delayWait)
    end)

    local alreadySorted = {}

    getgenv().parryID = {
        "rbxassetid://8494343630",
        "rbxassetid://8494340508",
    }
    getgenv().parry = function()
        task.spawn(function()
            local ping_adjustment = 0
            local getping = getgenv().Ping; if getping == 0 then ping_adjustment = 1 else ping_adjustment = getping end; 

            -- task.wait(.1)
            print('parrying')
            task.wait(0.09*ping_adjustment)
            local ohString1 = "Riposte"
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.ChangeStance:FireServer(ohString1)

            task.wait(0.035*ping_adjustment)
            

            -- task.wait(0.2*ping_adjustment)
            local ohString1 = "RiposteDelay"
            game:GetService("ReplicatedStorage").RemoteEvents.ToServer.ChangeStance:FireServer(ohString1)
        end)
        task.wait()
    end
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('game true break') break end 
            if getgenv().AutoParrying == true then 
                for _,v in pairs(workspace:GetChildren()) do 
                    if v~= game.Players.LocalPlayer.Character and v:IsA('Model') and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local distance = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                        if distance.Magnitude <= getgenv().Distance then 
                            local humanoid = v:FindFirstChild('Humanoid') 
                            for _a, animation in pairs(humanoid:GetPlayingAnimationTracks()) do 
                                if table.find(getgenv().parryID,animation.Animation.AnimationId) and not table.find(alreadySorted,v.Name) then 
                                    --table.insert(alreadySorted,v.Name)
                                    --task.wait(.05)
                                    getgenv().parry()
                                    -- task.delay(.2,function()
                                    --     for _e,ve in next, alreadySorted do 
                                    --         if ve == v.Name then 
                                    --             table.remove(alreadySorted,_e)
                                    --         end
                                    --     end
                                    -- end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
elseif game.PlaceId == 10371908957 or game.PlaceId == 10495850838 then  --- deep dev, 10495850838 = depths; 10371908957 etrean
    window = library:CreateWindow("Azfake V3{"..game.PlaceId..'}', Vector2.new(700, 598), Enum.KeyCode.LeftAlt)
    local function createLogger()
        pcall(function() if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger'):Destroy() end end)
        
        local ChatLogger = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Logs = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local tmp = Instance.new("Folder")
        local tmp_2 = Instance.new("TextLabel")
        
        --Properties:
        
        ChatLogger.Name = "ChatLogger"
        ChatLogger.Parent = game.CoreGui
        ChatLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ChatLogger
        Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Frame.BackgroundTransparency = 0.600
        Frame.Position = UDim2.new(0.707954645, 0, 0.372806996, 0)
        Frame.Size = UDim2.new(0, 458, 0, 285)
        
        UICorner.Parent = Frame
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TextLabel.BackgroundTransparency = 0.600
        TextLabel.Size = UDim2.new(0, 458, 0, 38)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "Chat Logger"
        TextLabel.TextColor3 = Color3.fromRGB(54, 54, 54)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextStrokeTransparency = 9.000
        TextLabel.TextWrapped = true
        
        UICorner_2.Parent = TextLabel
        
        Logs.Name = "Logs"
        Logs.Parent = Frame
        Logs.Active = true
        Logs.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Logs.BackgroundTransparency = 0.900
        Logs.BorderSizePixel = 0
        Logs.Position = UDim2.new(0.0218340605, 0, 0.164912283, 0)
        Logs.Size = UDim2.new(0, 436, 0, 230)
        Logs.ScrollBarThickness = 6
        
        UIListLayout.Parent = Logs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        tmp.Name = "tmp"
        tmp.Parent = Logs
        
        tmp_2.Name = "tmp"
        tmp_2.Parent = tmp
        tmp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tmp_2.BackgroundTransparency = 1.000
        tmp_2.Size = UDim2.new(0, 429, 0, 46)
        tmp_2.Visible = false
        tmp_2.Font = Enum.Font.SourceSans
        tmp_2.Text = "[Player1][]: Hello"
        tmp_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tmp_2.TextSize = 25.000
        tmp_2.TextWrapped = true
        tmp_2.TextXAlignment = Enum.TextXAlignment.Left
        game.CoreGui.ChatLogger.Frame.Active = true
    
        local UIS = game:GetService("UserInputService")
        local frame = game.CoreGui.ChatLogger.Frame
        
        local dragToggle = nil
        local dragSpeed = 0.1
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    createLogger()
    local function logIt(msg,plr)
        local xplus = 0
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,0)
        local add = 1
        -- for i=0, #game.CoreGui.ChatLogger.Frame.Logs:GetChildren() do 
        --     -- if i > 15 then 
        --     --     for i,v in pairs(game.CoreGui.ChatLogger.Frame.Logs:GetChildren()) do if v:IsA('TextLabel') then v:Destroy() end end
        --     -- end
        --     add -= 0.01
        --     if i > 20 then 
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 6
        --     else
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 23.5
        --     end
    
        -- end
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,game.CoreGui.ChatLogger.Frame.Logs.UIListLayout.AbsoluteContentSize.Y+50)
        local x = game.CoreGui.ChatLogger.Frame.Logs.tmp.tmp:Clone();
        x.RichText = true;
        local name = ''--plr.Name --''
        local ourname = game.Players.LocalPlayer.Name--''
        -- for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
        --     if v:FindFirstChild('RealName') and v:FindFirstChild('RealName').Value ~= '' and v:FindFirstChild('RealName').Value == plr.Name and v:FindFirstChild('DisplayName') and v:FindFirstChild('DisplayName').Value ~= ''  then 
        --         name = v.DisplayName.Value
        --     end
        --     if v.RealName.Value == game.Players.LocalPlayer.Name then 
        --         ourname = v.DisplayName.Value
        --     end
        -- end -- Logs.ChildAdded
        -- could make it so for chakra sense it makes the colour blue; when hovered it changes to [CHAKRA SENSER]
        local splitName = string.split(msg,' ')
        game.CoreGui.ChatLogger.Frame.Logs.CanvasPosition += Vector2.new(0,10000000) --* xplus
        if string.lower(splitName[3]) == 'clipped' or string.lower(splitName[3]) == string.lower(game.Players.LocalPlayer.Name) then print('hard text') x.TextColor3 = Color3.fromRGB(255, 25, 86) end
        
        if game.Players:FindFirstChild(splitName[1]) and tostring(string.lower(splitName[3])) == string.lower(ourname:sub(1,string.len(splitName[3])))  then 
            Notify('','name was said',2)
            -- if game.ReplicatedStorage.Cooldowns:FindFirstChild(splitName[1]):FindFirstChild('Chakra Sense') then 
            --     task.spawn(function()
            --         local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
            --         Notification.Notify("AZFAKE", "We think somebody is watching;", "rbxassetid://4914902889");
            --     end)
            -- end
        end
        if splitName[1] == 'Picked' then 
            x.TextColor3 = Color3.fromRGB(255, 25, 86)
        end
        if splitName[1] == 'AZFAKE-SERVER' then 
            x.TextColor3 = Color3.fromRGB(100, 155, 255)
        end
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end
        x.Text = '['..name..']['..splitName[1]..']: '..text
        x.Parent = game.CoreGui.ChatLogger.Frame.Logs
        x.Visible = true
    end
    local event = game:GetService("ReplicatedStorage"):WaitForChild('DefaultChatSystemChatEvents').OnMessageDoneFiltering
    -- xeventset
    getgenv().chatloggerhook = event.OnClientEvent:Connect(function(object)
       logIt(string.format("%s : %s", object.FromSpeaker, object.Message or ""),game.Players:FindFirstChild(object.FromSpeaker))
    end)
    getgenv().dwdtable = getgenv().AzfakeGlobalTables['dwd']



    local ddevtab= window:CreateTab(gameName)
    local esptab= window:CreateTab('Esp')
    local Configiuration= window:CreateTab('Configiuration')
    local ConfigSector = Configiuration:CreateSector('Themes','right')
    ConfigSector:AddColorpicker('Accent Colour',Color3.fromRGB(255, 255,255), function(ztx)
        library['theme']['accentcolor'] = ztx
        library['theme']['accentcolor2'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    ConfigSector:AddColorpicker('Background Colour',Color3.fromRGB(20, 20, 20), function(ztx)
        library['theme']['backgroundcolor'] = ztx
        wtm:UpdateTheme()
        window:UpdateTheme(library['theme'])
    end)
    local espsector = esptab:CreateSector('Cheats','left')
    local sector = ddevtab:CreateSector('Cheats','left')
    local tpsect = ddevtab:CreateSector('Cheats','left')
    local othersect = ddevtab:CreateSector('Cheats','right')
    local guisector = ddevtab:CreateSector('Cheats','right')
    getgenv().FlySpeedSlide = getgenv().FlySpeedSlide or 0
    getgenv().CFspeed = 50
    getgenv().CFloop = nil
    getgenv().Speeding = false
    getgenv().flying = false
    getgenv().NoclipFunction = nil
    getgenv().NoClip = nil
    getgenv().istyping = false
    game:GetService('UserInputService').InputBegan:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)

    getgenv().dwdsettings = {
        autoparry = true;
        distance = 0;
        rollnotparry = false;
        rollcancel = true;
        rollblatant = false;
        CurrentTween = nil;
        tptochests = false;
        safelocationaftertp = true;
        logchatlogger = false;
        safelocationcframe = CFrame.new(-9910.36914, 0.278607219, -6760.33105, 0.894830167, -1.18394041e-08, -0.446406752, 7.36884154e-09, 1, -1.17505898e-08, 0.446406752, 7.22528171e-09, 0.894830167);
        loopprima =false;
        quickdepths = true;
        safeunwipe = false;
        attributes = {
            'WeaponHeavy';
            'WeaponMedium';
            "WeaponLight";
            'Fortitude';
            'Strength';
            'ElementWind';
            'ElementFire';
            'ElementLight';
            'ElementShadow';
        };
        selectedatrribute = '';
        rollevent = false;
        autoassignstat = false; -- autoputstat
        autoopenchest = false;
        objects = {};
        parrywhitelist = {'All','Mobs'};
        selectedwhitelist = 'All';
        canswapchest = true;
        safedelay = 0.5;
        espsettings = {
            esp = false;
            displaytalents = false;
            estimatedlevel = false;
            espframework = '{name}    {distance}   {health}';--
        };
        mantras = {
            'Ash Slam';
            'Fire Blade';
            'Fire Palm';
            'Astral Wind';
            'Gale Lunge';
            'Wind Blade';
            'Crystal Impale';
            'Ice Blade';
            'Ice Lance';
            'Lightning Blade';
            'Thunder Kick';
            'Grand Javelin';
            'Shadow Gun';
            'Shadow Eruption';
            'Eclipse Kick';
            'Strong Left';
            'Shoulder Bash';
            'Rapid Punches';
        };
        selectedmantra = nil;
        alreadyparrying =false;
        noanims = false;
        nomantracd = false;
    
    } -- if they are asian and ur chatting to them online, you cant take that risk they might have small b
    -- getgenv()['dwdsettings']['objects'] could put getsynasset() stuff in here

    if game.PlaceId == 10495850838 then 
        sector:AddToggle("Safe Unwipe", false, function(e)
            getgenv().dwdsettings['safeunwipe'] = e
        end)
        sector:AddButton('UnWipe',function()
            local GUI_HIDETECHNIQUE = Instance.new('ScreenGui'); GUI_HIDETECHNIQUE.Name = 'deepwokendev';
            GUI_HIDETECHNIQUE.Parent = game.CoreGui;
            local FRAME_HIDE = Instance.new('Frame',GUI_HIDETECHNIQUE); FRAME_HIDE.Name = 'hideframe';
            FRAME_HIDE.BackgroundColor3 = Color3.fromRGB(0,0,0); FRAME_HIDE.Size = UDim2.new(0,0,0,0);
            if getgenv().dwdsettings['safeunwipe']  == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild('CharacterHandler') then game.Players.LocalPlayer.Character.CharacterHandler:Destroy() end
                local previous = tick()
                task.spawn(function()
                    repeat 
                        task.wait()
                        if game.Players.LocalPlayer.Character:FindFirstChild('CharacterHandler') then game.Players.LocalPlayer.Character.CharacterHandler:Destroy() end
                    until tick() - previous  > 3
                end)
            end
            task.wait(0.3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2982.47021, -2264.27026, 1577.85266, 0.992967784, 3.1591243e-09, -0.118385077, -2.68579803e-09, 1, 4.15773105e-09, 0.118385077, -3.81053455e-09, 0.992967784)-- game:GetService("Workspace").Live.Synapseing.HumanoidRootPart.CFrame -- CFrame.new()
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2982.47021, -2264.27026, 1577.85266, 0.992967784, 3.1591243e-09, -0.118385077, -2.68579803e-09, 1, 4.15773105e-09, 0.118385077, -3.81053455e-09, 0.992967784)
            task.wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2982.47021, -2264.27026, 1577.85266, 0.992967784, 3.1591243e-09, -0.118385077, -2.68579803e-09, 1, 4.15773105e-09, 0.118385077, -3.81053455e-09, 0.992967784)
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2982.47021, -2264.27026, 1577.85266, 0.992967784, 3.1591243e-09, -0.118385077, -2.68579803e-09, 1, 4.15773105e-09, 0.118385077, -3.81053455e-09, 0.992967784)
            game.Debris:AddItem(GUI_HIDETECHNIQUE,0.5)
        end)
        sector:AddSeperator('Depths Teleports')
        sector:AddButton('To YunShul',function()
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2202.72217, -2398.06323, 309.111298, 0.996405721, -7.00626899e-08, -0.0847091004, 6.78643488e-08, 1, -2.8831165e-08, 0.0847091004, 2.297881e-08, 0.996405721)
        end)
        sector:AddButton('To Campfire',function()
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2895.71606, 1132.78711, 1425.57703, 0.409853607, 4.33053167e-08, 0.912151337, -3.21711653e-08, 1, -3.30206724e-08, -0.912151337, -1.58113291e-08, 0.409853607)
        end)
        sector:AddLabel('Unwipe is not safe.')
        sector:AddSeperator('Main Game')
    end

            --[[
                Zenoman   -   50s
                       50/100
                Talents: 5    Power: 5
            ]]


    sector:AddToggle("Auto Parry", true, function(e)
        getgenv().dwdsettings['autoparry'] = e
    end)
    sector:AddSlider("Distance", 0, 0, 100, 1, function(xstate)
        getgenv().dwdsettings['distance'] = xstate
    end)

    local ParryWhitelist = sector:AddDropdown("Auto Parry Whitelist", getgenv()['dwdsettings']['parrywhitelist'], "", false, function(dropdownv)
        getgenv()['dwdsettings']['selectedwhitelist'] = dropdownv -- selectedatrribute
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)

    for i,v in pairs(game.Players:GetChildren()) do 
        if v:IsA('Player') then 
            table.insert(getgenv()['dwdsettings']['parrywhitelist'],v.Name)
            ParryWhitelist:Add(v.Name)
        end
    end
    game.Players.PlayerAdded:Connect(function(player)
        ParryWhitelist:Add(player.Name)
    end)
    game.Players.PlayerRemoving:Connect(function(player)
        ParryWhitelist:Remove(player.Name)
    end)
    sector:AddToggle("Roll Cancel", true, function(e)
        getgenv().dwdsettings['rollcancel'] = e
    end)
    sector:AddToggle("Roll Blatantly", false, function(e)
        getgenv().dwdsettings['rollblatant'] = e
    end)
    sector:AddSeperator('Adjust')
    sector:AddToggle("Roll Event", false, function(e)
        getgenv().dwdsettings['rollevent'] = e
    end)
    sector:AddToggle("Auto Loot", false, function(xstate)
        getgenv().AzfakeGlobalTables['dwd']['autoloot'] = xstate
    end)
    sector:AddToggle("No Mantra CD", false, function(xstate)
        getgenv().dwdsettings['nomantracd'] = xstate
    end)
    local nomantracdattachment = sector:AddKeybindAttachment('Reset Mantra Cooldowns'):AddKeybind();

    




    local speedbindtoggle = othersect:AddToggle("Speed", false, function(e)
        getgenv().Speeding = e
    end)
    local ToggleBindFlySpeed = othersect:AddToggle("Fly", false, function(e)
        getgenv().flying = e
        if getgenv().flying == false  then -- and getgenv().istyping == false
            -- getgenv().CFloop:Disconnect()
            --game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
            Head.Anchored = false
            -- getgenv().CFloop = nil
        elseif getgenv().flying == true and getgenv().istyping == false then

            Players = game.Players
            -- getgenv().flying = true
            task.spawn(function()
                repeat wait()
                until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                local mouse = game.Players.LocalPlayer:GetMouse()
                repeat wait() until mouse
                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                local plr = game.Players.LocalPlayer
                local torso = plr.Character.HumanoidRootPart
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = getgenv().CFspeed
                local speed = maxspeed  
                function Fly()
                    local bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                    bv.velocity = Vector3.new(0,0,0)
                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                    repeat task.wait(0.01)
                        if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") and not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild('exploitation') then 
                            bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                            bv.velocity = Vector3.new(0,0,0)
                            bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            local prevRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
                            speed = getgenv().CFspeed --Options.FlySpeedSlide.Value
                            maxspeed = getgenv().CFspeed
                            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = maxspeed * 2
                                -- if speed > maxspeed then
                                --     speed = maxspeed
                                -- end
                                if speed ~= maxspeed * 10 then
                                    speed = maxspeed * 2
                                end
                            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = 0
                                if speed < 0 then
                                    speed = 0
                                end
                            end
                                -- elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                            --     bv.velocity = ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector  )) *speed/2
                            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = (( game.Workspace.CurrentCamera.CoordinateFrame.lookVector  *  (ctrl.f+ctrl.b)  )) * speed -- ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p))
                                -- lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                if (ctrl.r) ~= 0  then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.r = ctrl.r - ctrl.l
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector  )) * speed
                                end
                                if (ctrl.l) ~= 0 then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.l = ctrl.l - ctrl.r
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector  )) * -speed
                                end
    
                            else
                                bv.velocity = Vector3.new(0,0,0)
                            end
                                --* CFrame.new((ctrl.l+ctrl.r),0,0) -- *50*speed/maxspeed * Vector3.new(0,0,0) --  
                        end

                    until getgenv().flying == false or getgenv().loopsUnload == true

                    ctrl = {f = 0, b = 0, l = 0, r = 0}
                    lastctrl = {f = 0, b = 0, l = 0, r = 0}
                    speed = 0
                    bv:Destroy()
                    plr.Character:WaitForChild('Humanoid').PlatformStand = false
                    print('stop flying')
                end
                mouse.KeyDown:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 1
                    elseif key:lower() == "s" then
                        ctrl.b = -1
                    elseif key:lower() == "a" then
                        ctrl.l = -1
                    elseif key:lower() == "d" then
                        ctrl.r = 1
                    end
                end)
                mouse.KeyUp:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 0
                        speed = 0
                    elseif key:lower() == "s" then
                        ctrl.b = 0
                    elseif key:lower() == "a" then
                        ctrl.l = 0
                    elseif key:lower() == "d" then
                        ctrl.r = 0
                    end
                end)
                Fly()  
            end)
        end
    end)
    local ToggleBindNoclip= othersect:AddToggle("Noclip", false, function(e)
        getgenv().NoClip = e 
        if getgenv().NoClip ==false and getgenv().istyping == false then
            getgenv().NoclipFunction:Disconnect()
        elseif getgenv().NoClip == true and getgenv().istyping == false then --  
            task.wait(0.1)
            local function NoclipLoop()
                pcall(function()
                    if getgenv().NoClip == true and game.Players.LocalPlayer.Character  and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >= 0 then
                        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(function()
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end)
                        end
                    else
                        getgenv().NoClip = false
                        ToggleBindNoclip:Set(false)
                    end
                end)
            end
            getgenv().NoclipFunction = game:GetService('RunService').Stepped:Connect(NoclipLoop)
        end
    end)
    local speedbind = speedbindtoggle:AddKeybind()
    local flybind = ToggleBindFlySpeed:AddKeybind()
    local noclipbind = ToggleBindNoclip:AddKeybind()
    othersect:AddButton('Remove Keybind',function()
        speedbind:Unbind()
        flybind:Unbind()
        noclipbind:Unbind()
    end)
    othersect:AddSlider("Speed", 0, 0, 200, 1, function(State)
        getgenv().Speed = State
    end)
    othersect:AddSlider("Fly Speed", 0, 200, 300, 1, function(State)
        getgenv().FlySpeedSlide = State
        getgenv().CFspeed = State
    end)
    othersect:AddToggle("Quick Depths", true, function(e)
        getgenv()['dwdsettings']['quickdepths'] = e
    end)
    othersect:AddButton('TO Depths',function()
        local GUI_HIDETECHNIQUE = Instance.new('ScreenGui'); GUI_HIDETECHNIQUE.Name = 'deepwokendev';
        GUI_HIDETECHNIQUE.Parent = game.CoreGui;GUI_HIDETECHNIQUE.Enabled = true
        local FRAME_HIDE = Instance.new('Frame',GUI_HIDETECHNIQUE); FRAME_HIDE.Name = 'hideframe'; FRAME_HIDE.Visible = true
        FRAME_HIDE.BackgroundColor3 = Color3.fromRGB(0,0,0); FRAME_HIDE.Size = UDim2.new(0,0,0,0);
        task.wait(.1)
        -- game:GetService('TeleportService'):teleport(10495850838)
        if getgenv()['dwdsettings']['quickdepths'] == true then 
            game:GetService('TeleportService'):teleport(10495850838)
        else
            if game.Players.LocalPlayer.Character:FindFirstChild('Left Leg') then 
                firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild('Left Leg'),game:GetService("Workspace").DepthsWhirlpool.Part,0)
            end
        end 
    end)
    othersect:AddButton('Rejoin',function()
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)
    
    othersect:AddButton('Safe Cheat',function()
        if game.Players.LocalPlayer.Character:FindFirstChild('CharacterHandler') then  game.Players.LocalPlayer.Character.CharacterHandler.Disabled = true end
        local previous = tick()
        task.spawn(function()
            while true do 
                task.wait()
                if game.Players.LocalPlayer.Character:FindFirstChild('CharacterHandler') then game.Players.LocalPlayer.Character.CharacterHandler:Destroy() end
            end
        end)
    end)



    -- sector:AddSeperator()

    tpsect:AddToggle("Teleport to Chests", false, function(xstate)
        getgenv()['dwdsettings']['tptochests'] = xstate
    end)
    tpsect:AddToggle("Safe Location", true, function(xstate)
        getgenv()['dwdsettings']['safelocationaftertp'] = xstate
    end)
    tpsect:AddToggle("Log Picks in Chatlogger", false, function(xstate)
        getgenv()['dwdsettings']['logchatlogger'] = xstate
    end)
    tpsect:AddToggle("Loop goto primadon", false, function(xstate)
        getgenv()['dwdsettings']['loopprima'] = xstate
    end)
    tpsect:AddSlider("Teleport Delay", 0, getgenv()['dwdsettings']['safedelay'], 1, 1000, function(xstate)
        getgenv()['dwdsettings']['safedelay'] = xstate
    end)
    tpsect:AddButton('Teleport to Safe Location',function()
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame  =  getgenv()['dwdsettings']['safelocationcframe']
    end)
    tpsect:AddSeperator('Cheats')
    tpsect:AddButton('Set safe location',function()
        getgenv()['dwdsettings']['safelocationcframe'] = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame
    end)

    tpsect:AddSeperator('Teleports')
    tpsect:AddButton('Set safe location',function()
        getgenv()['dwdsettings']['safelocationcframe'] = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame
    end)
    tpsect:AddButton('To Primadon Campfire',function()
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = game:GetService("Workspace").NPCs.MonkyCampfire.HumanoidRootPart.CFrame
    end)
    tpsect:AddButton('To Primadon',function()
        for _,v in next, workspace.Live:GetChildren() do 
            if v:FindFirstChild('MonkyController') then 
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v.HumanoidRootPart.CFrame
            end
        end
        -- game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = game:GetService("Workspace").NPCs.MonkyCampfire.HumanoidRootPart.CFrame
    end)
    tpsect:AddLabel('Safe Location After TP To the chest')
    -- game:GetService("Workspace").Live[".24monky"].MonkyController
    -- game:GetService("Workspace").NPCs.MonkyCampfire.HumanoidRootPart
    
    local Attach_to_back = sector:AddKeybindAttachment('Attach to back'):AddKeybind();

    local AttributeDropdown = sector:AddDropdown("Attributes", getgenv()['dwdsettings']['attributes'], "", false, function(dropdownv)
        getgenv()['dwdsettings']['selectedatrribute'] = dropdownv -- selectedatrribute
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    
    sector:AddToggle("Auto Assign Stat", false, function(xstate)
        getgenv()['dwdsettings']['autoassignstat'] = xstate
    end)
    sector:AddButton('Increase Attribute',function()

        local ohString1 = getgenv()['dwdsettings']['selectedatrribute']
        local ohBoolean2 = true
        local ohBoolean3 = true

        game:GetService("ReplicatedStorage").Requests.IncreaseAttribute:InvokeServer(ohString1, ohBoolean2, ohBoolean3)
    end)




    sector:AddToggle("Auto Open Chest", false, function(xstate)
        getgenv().dwdsettings['autoopenchest'] = xstate
    end)
    




    sector:AddButton('Load Own Character',function()
        if game.Players.LocalPlayer.Character:FindFirstChild('Shirt') then 

            game.Players.LocalPlayer.Character:FindFirstChild('Shirt'):Destroy()
        end
        if game.Players.LocalPlayer.Character:FindFirstChild('Pants') then 
    
            game.Players.LocalPlayer.Character:FindFirstChild('Pants'):Destroy()
        end
        game.Players.LocalPlayer.Character.Humanoid:ApplyDescriptionClientServer(game.Players:GetHumanoidDescriptionFromUserId(game.Players.LocalPlayer.UserId))
    

    end,{
        ask = 'Are you sure you want to Load your own character?',
        accept = 'Yes',
        reject = 'No'
    })


    sector:AddToggle('No Anims',false,function(xstate)
        getgenv().dwdsettings['noanims'] = xstate
    end)

    if getgenv().adminCheck == true and table.find(brokenfeaturewhitelist,game.Players.LocalPlayer.Name) then 
        sector:AddSeperator('Admin')
        sector:AddLabel('Dont abuse these features or it will become\nprivate.')
        sector:AddDropdown("Mantras", getgenv()['dwdsettings']['mantras'], "", false, function(dropdownv)
            getgenv()['dwdsettings']['selectedmantra'] = dropdownv -- selectedatrribute
            --PlayerTP:updateText(getgenv().selectedPlayer)
        end)
    
        sector:AddButton("Give Mantra", function()          
            game:GetService("ReplicatedStorage").Requests.TalentChoice:InvokeServer(getgenv()['dwdsettings']['selectedmantra'], false)
        end)    
    end



    guisector:AddButton('Enable Watermark',function()
        wtm:SetState('Active')
    end)
    guisector:AddButton('Disable Watermark',function()
        wtm:SetState('Disable')
    end)
    guisector:AddSeperator('Chat Logger')

    guisector:AddButton('Enable Chat Logger',function()
        if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger').Enabled = true end
    end)
    guisector:AddButton('Disable Chat Logger',function()
        if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger').Enabled = false end
    end)
    local function indexfire(info)
        if game.Players.LocalPlayer.Character:FindFirstChild('CharacterHandler') then 
            for i,v in next, game.Players.LocalPlayer.Character:WaitForChild('CharacterHandler').Requests:GetChildren() do 
                if info._ == i then        
                    v:FireServer(info.a)
                    break
                end
            end
        end
    end
     
    local function findvalue(info) -- findattribute
        local effects = require(game:GetService("ReplicatedStorage").EffectReplicator)
        local values = effects:GetEffects()
        local endvalue = false
        for _,v in next, values do 
            -- print(v.Class)
            if not v.Disabled then 
                if v.Class == info.value then 
                    --print(v.Class)
                    print('found')
                    endvalue = true
                    break
                end
            end
        end
        return endvalue
    end
    -- getgenv().OpenedParry = false
    getgenv().roll = function()
        task.spawn(function()
            pcall(function()
                print('roll')
                if getgenv().dwdsettings['rollevent'] == true then 
                    print('using the roll event')
                    for _,v in next, game:GetService("Workspace").Live:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.Requests:GetChildren() do 
                        if _ == 9 then
                            local ohString1 = "roll"
                            local ohNil2 = nil
                            local ohNil3 = nil
                            local ohBoolean4 = false
						    v:FireServer(ohString1, ohNil2, ohNil3, ohBoolean4)
                            break
                        end
                    end
                else
                    print('key press')
                    local inputManager = game:GetService('VirtualInputManager')
                    inputManager:SendKeyEvent(true,Enum.KeyCode.Q,false,game)
                    inputManager:SendKeyEvent(false,Enum.KeyCode.Q,false,game)
                    if getgenv().dwdsettings['rollblatant'] == true then 
                        task.wait(.05)
                    else
                        task.wait(.2)
                    end
                    if getgenv().dwdsettings['rollcancel'] == true then 
                        local m = game.Players.LocalPlayer:GetMouse();
                        inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                        inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                    end
                end

            end)
        end)
    end
    getgenv().alreadyparrying = false
    getgenv().parry = function()
        task.spawn(function()
            pcall(function()
                
                if getgenv().dwdsettings['rollnotparry'] == false then 
                    -- local inputManager = game:GetService('VirtualInputManager')
                    -- local m = game.Players.LocalPlayer:GetMouse();
                    -- inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                    -- inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                    -- local inputManager = game:GetService('VirtualInputManager')
                    -- inputManager:SendKeyEvent(true,Enum.KeyCode.F,false,game)
                    -- task.wait(.4)
                    -- inputManager:SendKeyEvent(false,Enum.KeyCode.F,false,game)
                    -- for _,v in next, game:GetService("Workspace").Live:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.Requests:GetChildren() do 
                    --     if _ == 3 then
                    --         v:FireServer()
                    --     end
                    -- end
                    -- logIt('waiting parry cooldown','x')
                    -- if findvalue{value = 'ParryCool'} then  -- findvalue(value == 'TrueStun')
                    --     getgenv().roll()
                    --     return
                    -- end
                    repeat task.wait(0.001) until findvalue{value = 'ParryCool'} == false and findvalue{value = 'Blocking'} == false -- and findvalue{value = 'Stun'} == false
                    -- logIt('no parry cd','x')
                    task.spawn(function()
                        indexfire{_=4;a=nil}
                        -- indexfire{_=3;a=nil}
                    end)
                    
                    -- if getgenv().dwdsettings['alreadyparrying'] == true then 
                    --     getgenv().dwdsettings['alreadyparrying'] = false
                    --     indexfire{_=3;a=nil}
                    --     indexfire{_=2;a=nil}
                    --     task.wait(.1)
                    --     indexfire{_=3;a=nil}
                    -- else
                    --     getgenv().dwdsettings['alreadyparrying'] = true
                    --     indexfire{_=2;a=nil}
                    --     task.wait(.1)
                    --     indexfire{_=3;a=nil}
                    --     getgenv().dwdsettings['alreadyparrying'] = false
                    -- end
                    
                    print('parry attack')
                    indexfire{_=3;a=nil}        
                    indexfire{_=3;a=nil}   
                    indexfire{_=3;a=nil}   
                    indexfire{_=3;a=nil}  
                    -- if find hit then return end (if the player was hit)
                    repeat task.wait(0.01) indexfire{_=2;a=nil} until findvalue{value = 'ParryCool'} or findvalue{value = 'Blocking'}
                    task.wait(.4)
                    indexfire{_=3;a=nil}        
                    indexfire{_=3;a=nil}   
                    indexfire{_=3;a=nil}   
                    indexfire{_=3;a=nil}               
                    -- indexfire{_=2;a=nil}
                    -- indexfire{_=2;a=nil}
                    -- indexfire{_=2;a=nil}
                    -- task.delay(.1,function()
                    --     indexfire{_=3;a=nil}
                    --     indexfire{_=3;a=nil}
                    --     indexfire{_=3;a=nil}

                    --     indexfire{_=3;a=nil}
                    --     indexfire{_=3;a=nil}

                    --     indexfire{_=3;a=nil}
                    --     indexfire{_=3;a=nil}

                    -- end)
                    -- task.wait(.4)

                    
                else
                    if getgenv().dwdsettings['rollevent'] == true then 
                        print('using the roll event')
                        for _,v in next, game:GetService("Workspace").Live:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.Requests:GetChildren() do 
                            if _ == 9 then
                                local ohString1 = "roll"
                                local ohNil2 = nil
                                local ohNil3 = nil
                                local ohBoolean4 = false
                                v:FireServer(ohString1, ohNil2, ohNil3, ohBoolean4)
                                break
                            end
                        end
                    else
                        print('key press')
                        local inputManager = game:GetService('VirtualInputManager')
                        inputManager:SendKeyEvent(true,Enum.KeyCode.Q,false,game)
                        inputManager:SendKeyEvent(false,Enum.KeyCode.Q,false,game)
                        if getgenv().dwdsettings['rollblatant'] == true then 
                            task.wait(.05)
                        else
                            task.wait(.2)
                        end
                        if getgenv().dwdsettings['rollcancel'] == true then 
                            local m = game.Players.LocalPlayer:GetMouse();
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                        end
                    end
    
                    getgenv().dwdsettings['rollnotparry'] = false
                end

            end)
        end)
    end
    getgenv().quickparry = function()
        task.spawn(function()
            pcall(function()
                
                if getgenv().dwdsettings['rollnotparry'] == false then 
                    -- local inputManager = game:GetService('VirtualInputManager')
                    -- local m = game.Players.LocalPlayer:GetMouse();
                    -- inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                    -- inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                    -- local inputManager = game:GetService('VirtualInputManager')
                    -- inputManager:SendKeyEvent(true,Enum.KeyCode.F,false,game)
                    -- task.wait(.4)
                    -- inputManager:SendKeyEvent(false,Enum.KeyCode.F,false,game)
                    -- for _,v in next, game:GetService("Workspace").Live:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.Requests:GetChildren() do 
                    --     if _ == 3 then
                    --         v:FireServer()
                    --     end
                    -- end
                    -- logIt('waiting parry cooldown','x')
                    -- if findvalue{value = 'TrueStun'} or findvalue{value = 'Stun'} then  -- findvalue(value == 'TrueStun')
                    --     getgenv().roll()
                    --     return
                    -- end
                    repeat task.wait(0.001) until findvalue{value = 'ParryCool'} == false and findvalue{value = 'Blocking'} == false -- and findvalue{value = 'Stun'} == false
                    -- logIt('no parry cd','x')
                    task.spawn(function()
                        indexfire{_=4;a=nil}
                        indexfire{_=3;a=nil}
                    end)
                    indexfire{_=4;a=nil}
                    print('quick parry attack')
                    indexfire{_=2;a=nil}
                    indexfire{_=2;a=nil}
                    indexfire{_=2;a=nil}
                    indexfire{_=2;a=nil}
                    indexfire{_=2;a=nil}
                    task.delay(.105,function()
                        indexfire{_=3;a=nil}
                    end)
                    -- task.wait(.4)

                    
                else
                    if getgenv().dwdsettings['rollevent'] == true then 
                        print('using the roll event')
                        for _,v in next, game:GetService("Workspace").Live:FindFirstChild(game.Players.LocalPlayer.Name).CharacterHandler.Requests:GetChildren() do 
                            if _ == 9 then
                                local ohString1 = "roll"
                                local ohNil2 = nil
                                local ohNil3 = nil
                                local ohBoolean4 = false
                                v:FireServer(ohString1, ohNil2, ohNil3, ohBoolean4)
                                break
                            end
                        end
                    else
                        print('key press')
                        local inputManager = game:GetService('VirtualInputManager')
                        inputManager:SendKeyEvent(true,Enum.KeyCode.Q,false,game)
                        inputManager:SendKeyEvent(false,Enum.KeyCode.Q,false,game)
                        if getgenv().dwdsettings['rollblatant'] == true then 
                            task.wait(.05)
                        else
                            task.wait(.2)
                        end
                        if getgenv().dwdsettings['rollcancel'] == true then 
                            local m = game.Players.LocalPlayer:GetMouse();
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                            inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
                        end
                    end
    
                    getgenv().dwdsettings['rollnotparry'] = false
                end

            end)
        end)
    end

    getgenv().ParryObjects = {}
    getgenv().ParryAct = function(v,animx)
        if not findvalue{value = 'HasWeapon'} then return end
        if getgenv()['dwdsettings']['selectedwhitelist'] ~= 'All' and 
        getgenv()['dwdsettings']['selectedwhitelist'] ~= 'Mobs' and 
        getgenv()['dwdsettings']['selectedwhitelist'] ~= v.Name then print('isnt all and isnt mobs so return end \nMode = '..getgenv()['dwdsettings']['selectedwhitelist'])return end
        
        if getgenv()['dwdsettings']['selectedwhitelist'] == 'Mobs' and game.Players:FindFirstChild(v.Name) then print('player when mob '..v.Name) return end
        -- local AlreadyRegistered = false 
        -- for _,v in next, getgenv().ParryObjects do 
        --     if v == anim then AlreadyRegistered = true end
        -- end
        -- if AlreadyRegistered then return end 
        -- repeat task.wait(0.001) until not findvalue{value = 'ParryCooldown'}
        local function detect(v,dect)
            local x = false
            if v:FindFirstChild('Humanoid') then 
                for i,anim in pairs(v.Humanoid:GetPlayingAnimationTracks()) do 
                    if anim.Animation.AnimationId == dect and animx.Animation.AnimationId == dect then
                        -- rconsoleprint('\ndetected '..anim.Animation.AnimationId)
                        x =  true
                        break
                    end
                end
            end
            return x
        end

        --[[
            we detect the animation
            another animation could run while the animation is still playing
            causing the parry to run TWICE or more

            to fix this
            i need to 
            check if the animation given is detected with parryact
            change the players animation id for the attack so we dont detect it
        ]]

        local cancelAll = false 

        local AnimationLength = animx.Length
        local CurrentLength = animx.TimePosition
        -- print('Animation Length = '..AnimationLength)
        local LengthReached = false
        local Feinted = false

        -- task.spawn(function()
        --     task.wait(AnimationLength)
        --     LengthReached = true
        -- end)

        -- local function 
        --     task.spawn(function()
        --         -- task.wait(.1)
        --         -- for i,animx in pairs(v:FindFirstChild('Humanoid'):GetPlayingAnimationTracks()) do 
        --         --     if anim.Animation.AnimationId == animx.Animation.AnimationId then 
        --         --         animx.Animation.AnimationId = ''
        --         --     end
        --         -- end
        --         table.insert(getgenv().ParryObjects,{
        --             holder = v 
        --             animation = anim
        --         })
        --     end)
        -- end

        task.spawn(function()
            task.wait(.1)
            local BreakThis = false

            repeat 
                task.wait(0.01)
                CurrentLength = animx.TimePosition
                -- if not detect(v,anim.Animation.AnimationId) and LengthReached == false then 
                --     Feinted = true;
                --     getgenv().dwdsettings['rollnotparry'] = true
                -- end
                if Feinted == false and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart'):FindFirstChild('Feint') and v:FindFirstChild('HumanoidRootPart'):FindFirstChild('Feint') .Playing == true then 
                    print('FEINTED')
                    Feinted = true;
                    getgenv().dwdsettings['rollnotparry'] = true
                    BreakThis = true;
                end
                if not detect(v,animx.Animation.AnimationId) and BreakThis == false then 
                    BreakThis = true      
                end
            until BreakThis == true
            -- for _,obj in next, getgenv().ParryObjects do 
            --     if obj['holder'] == v and obj['animation'] == animx then 
            --         table.remove(getgenv().ParryObjects,_)
            --     end
            -- end
        end)

        -- if v:FindFirstChild('Torso') and v:FindFirstChild('Torso'):FindFirstChild('CriticalCharge') and 
        --     v:FindFirstChild('Torso'):FindFirstChild('CriticalCharge').Playing == true or
        --     v:FindFirstChild('CharacterHandler') and v:FindFirstChild('CharacterHandler'):FindFirstChild('CriticalCharge') and 
        --     v:FindFirstChild('CharacterHandler'):FindFirstChild('CriticalCharge').Playing == true
        -- then 
        --     local Crit = v:FindFirstChild('Torso'):FindFirstChild('CriticalCharge') or v:FindFirstChild('CharacterHandler'):FindFirstChild('CriticalCharge')
        --     local foundCritical = false 
        --     for _,v in next, getgenv().ParryObjects do 
        --         if v == Crit then 
        --             foundCritical = true
        --             break
        --         end
        --     end
        --     if foundCritical == false then 
        --         -- task.wait(.26)
        --         print('CRITICAL DETECTED')
        --         table.insert(getgenv().ParryObjects,Crit)
        --         task.wait(Crit.TimeLength-1)
        --         print('PARRY CRITICAL')
        --         getgenv().parry()

        --         -- task.wait(.1)
        --         task.delay(.5,function()
        --             for _,v in next, getgenv().ParryObjects do 
        --                 if v == Crit then 
        --                     table.remove(getgenv().ParryObjects,_)
        --                     break
        --                 end
        --             end
        --         end)


        --         return
        --     else
        --         return
        --     end
        -- end





        if detect(v,'rbxassetid://10495930879') then -- Sword slash 1
            
            task.wait(.16)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495930927') then -- Sword slash 2
            
            task.wait(.16)
            getgenv().parry()
            
        end


        if detect(v,'rbxassetid://10495931227') then -- Sword Running attack
            
            task.wait(.2)
            getgenv().parry()
            
        end



        if detect(v,'rbxassetid://10495932450') then -- 2 HAND Sword slash 1
            print('sword 2')
            task.wait(.16)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495932503') then -- 2 HAND Sword slash 2
            print('sword 2')
            task.wait(.16)
            getgenv().parry()
            
        end




        if detect(v,'rbxassetid://10495933846') then -- Dagger-Slash1
            
            task.wait(.1)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495933923') then -- Dagger-Slash2
            
            task.wait(.1)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495933537') then -- Dagger-RunningAttack
            
            task.wait(.2)
            getgenv().parry()
            
        end












        if detect(v,'rbxassetid://10495934354') then -- Greataxe-Slash1
            
            task.wait(.25)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495934515') then -- Greataxe-Slash2
            
            task.wait(.25)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495934626') then -- Greataxe-Slash3
            
            task.wait(.25)
            getgenv().parry()
            
        end








        if detect(v,'rbxassetid://10495936565') then -- Spear-Slash1
            
            task.wait(.18)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495936682') then -- Spear-Slash2
            
            task.wait(.18)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495936961') then -- Spear-RunningAttack
            
            task.wait(.18)
            getgenv().parry()
            
        end





        if detect(v,'rbxassetid://10495937166') then -- 2 hand Spear-Slash1
            
            task.wait(.18)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495937257') then -- 2 hand Spear-Slash2
            
            task.wait(.18)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495937087') then -- 2 hand Spear-RunningAttack
            
            task.wait(.18)
            getgenv().parry()
            
        end





        if detect(v,'rbxassetid://10495939094') then -- Karate-Slash1
            
            
            task.wait(.15)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495938893') then -- Karate-Slash2
            
            task.wait(.15)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495938967') then -- Karate-Slash3
            
            task.wait(.15)
            getgenv().parry()
            
        end

        


        if detect(v,'rbxassetid://10495941011') then -- Greatsword-Slash1
            
            task.wait(.42)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495941091') then -- Greatsword-Slash2
            
            task.wait(.42)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495940225') then -- Greatsword-RunningAttack
            
            task.wait(.42)
            getgenv().parry()
            
        end



        if detect(v,'rbxassetid://10495940500') then -- 2 hand Greatsword-Slash1
            
            task.wait(.42)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495940398') then -- 2 hand Greatsword-Slash2
            
            task.wait(.42)
            getgenv().parry()
            
        end



        if detect(v,'rbxassetid://10495941409') then -- Club-Slash1
            
            task.wait(.13)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495941460') then -- Club-Slash2
            
            task.wait(.13)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495941515') then -- Club-Slash3
            
            task.wait(.13)
            getgenv().parry()
            
        end





        if detect(v,'rbxassetid://10495931657') then -- 2 hand Club-Slash1
            
            task.wait(.13)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495931803') then -- 2 hand Club-Slash2
            
            task.wait(.13)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495931908') then -- 2 hand Club-Slash3
            
            task.wait(.13)
            getgenv().parry()
            
        end







        if detect(v,'rbxassetid://10495943055') then -- Legion Kata-Slash1
            
            task.wait(.12)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495942809') then -- Legion Kata-Slash2
            
            task.wait(.12)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495942893') then -- Legion Kata-Slash3
            
            task.wait(.12)
            getgenv().quickparry()
            
        end

        if detect(v,'rbxassetid://10495943484') then -- Jus Karita-Slash3
            
            task.wait(.12)
            getgenv().quickparry()
            
        end




        if detect(v,'rbxassetid://10495943843') then -- Jus Karita-Slash1
            
            task.wait(.12)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495943734') then -- Jus Karita-Slash2
            
            task.wait(.12)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495943649') then -- Jus Karita-Slash3
            
            task.wait(.12)
            getgenv().quickparry()
            
        end



        if detect(v,'rbxassetid://10495943900') then -- Rapier-Slash1
            
            task.wait(.12)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495943948') then -- Rapier-Slash2
            
            task.wait(.12)
            getgenv().quickparry()
            
        end



        if detect(v,'rbxassetid://10495945813') then -- 2 hand FirstLight-Slash1
            task.wait(.15)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495945662') then -- 2 hand FirstLight-Slash2
            task.wait(.15)
            getgenv().parry()
            
        end





        if detect(v,'rbxassetid://10495947775') then -- SorenStyle-Slash2
            task.wait(.15)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495947838') then -- SorenStyle-Slash3
            task.wait(.15)
            getgenv().parry()
            
        end




        if detect(v,'rbxassetid://10495948728') then -- Railblade-Slash1
            task.wait(.3)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495948813') then -- Railblade-Slash2
            task.wait(.3)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495949033') then -- Railblade-Slash3
            task.wait(.3)
            getgenv().parry()
            
        end






        if detect(v,'rbxassetid://10495949493') then -- Rifle-Slash1
            task.wait(.2)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495949583') then -- Rifle-Slash2
            task.wait(.2)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495949661') then -- Rifle-Slash3
            task.wait(.2)
            getgenv().parry()
            
        end



        if detect(v,'rbxassetid://10495951019') then -- DualSword-Slash1
            print('duals 2')
            task.wait(.12)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495951118') then -- DualSword-Slash2
            task.wait(.12)
            getgenv().parry()
            
        end





        -- EXTRAS
        if detect(v,'rbxassetid://10495932256') then -- Sword-FollowupStrike2
            task.wait(.18)
            getgenv().parry()
            
        end

        if detect(v,'rbxassetid://10495932382') then -- Sword-AerialStab
            task.wait(.18)
            getgenv().parry()
            
        end


        if detect(v,'rbxassetid://10495934238') then -- Dagger-AerialStab
            task.wait(.13)
            getgenv().parry()
            
        end

        if detect(v,'rbxassetid://10495935670') then -- Greataxe-AerialStab
            task.wait(.23)
            getgenv().parry()
            
        end

        if detect(v,'rbxassetid://10495937661') then -- Spear-FollowupStrike1
            task.wait(.16) -- lowest swing speed *animation speed / 2
            getgenv().parry() -- lowest swing speed out of all the spears is the base spear swing speed
            
        end

        if detect(v,'rbxassetid://10495938570') then -- Karate-FollowupStrike1
            task.wait(.13)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495938664') then -- Karate-FollowupStrike2
            task.wait(.13)
            getgenv().parry()
            
        end

        if detect(v,'rbxassetid://10495941211') then -- Greatsword-FollowupStrike1
            task.wait(.23)
            getgenv().parry()
            
        end


        -- PARRY DAGGER

        
        if detect(v,'rbxassetid://10495935826') then -- Parry Dagger-SW1    
            task.wait(.02)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495935882') then -- Parry Dagger-SW2
            task.wait(.02)
            getgenv().parry()
            
        end



        -- TWO HAND MAIN SWORD STUFF

        if detect(v,'rbxassetid://10495935952') then -- DualSword-SW1    
            task.wait(.16)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10495936014') then -- Parry Dagger-SW2
            task.wait(.16)
            getgenv().parry()
            
        end


        -- prima

        -- rbxassetid://10495958133 -- triple stomp
        -- rbxassetid://10495958630 
        -- rbxassetid://10495958518 kick

        
        -- rbxassetid://10543211063 stomp

        -- rbxassetid://10543245128 kick

        -- rbxassetid://10543222215 -- triple stomp


        if detect(v,'rbxassetid://10543222215') then -- triple stomp
            print('prima stomp')   
            task.wait(.2)
            getgenv().parry()
            task.wait(.2)
            getgenv().parry()
            task.wait(.2)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10543211063') then -- stomp
            task.wait(.2)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://10543222215') then -- kick
            task.wait(.2)
            getgenv().roll()
            
        end

        --  Critical

        if detect(v,'rbxassetid://10495917979') then -- sword crit like fakewoken 3 base sword
            task.wait(.65)
            getgenv().parry()
            
        end
        if detect(v,'rbxassetid://11822301156') then -- spear
            task.wait(.45)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10495921213') then -- axe
            task.wait(.75)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10495921369') then -- shattered katana
            task.wait(.37)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10495921107') then -- Krulian knife
            task.wait(.37)
            getgenv().quickparry()
            task.wait(.37)
            getgenv().quickparry()
            task.wait(.37)
            getgenv().quickparry()
            
        end
        if detect(v,'rbxassetid://10495921302') then --greatsword
            task.wait(.8)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10495921432') then --Rapier
            task.wait(.4)
            getgenv().quickparry()
            task.wait(.2)
            getgenv().quickparry()
            task.wait(.15)
            getgenv().quickparry() -- paquickparryrry
        end
        if detect(v,'rbxassetid://11827357861') then --club
            task.wait(.5)
            getgenv().parry()
        end


        -- MANTRAS

        -- local mantraTiming = {
        --     ['rbxassetid://12480375718'] = .65
        -- }
        if detect(v,'rbxassetid://12480375718') then --fire blade
            task.wait(.6) -- 65
            getgenv().parry()
        end

        if detect(v,'rbxassetid://12474502093') then -- grand javelin .28
            task.wait(.28)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12484027120') then -- ash slam
            task.wait(.38)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12477380180') then -- gale lunge
            task.wait(.45)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12486582512') then -- ice lance
            task.wait(.45)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12485973064') then -- eclipse kick
            task.wait(.85)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12499110173') then -- fire palm
            task.wait(.75) -- 85
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12499110173') then -- shadow gun
            task.wait(.4)
            getgenv().parry()
        end

        if detect(v,'rbxassetid://12478259578') then -- astral wind
            task.wait(.4)
            getgenv().parry()
            task.wait(.1)
            getgenv().parry()
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12489065130') then -- crystal impale
            task.wait(.4)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12487832744') then -- ice blade
            task.wait(.4)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12494311563') then -- thunder kick
            task.wait(.4)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12484405342') then -- Shadow eruption
            task.wait(.4)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://12494468003') then -- lightning blade
            task.wait(.4)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()

            task.wait(.4)
            getgenv().parry()
            task.wait(.25)
            getgenv().parry()
        end
        
    end



    local function keepAlive(c)
        task.spawn(function()
            task.wait(1)
            repeat task.wait(.1) until getgenv().loopsUnload == true 
            c:Disconnect()
        end)
    end



    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv().CreatePlayerEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        -- 
            local esp = Drawing.new('Text')
            esp.Visible = false
            esp.Center = true 
            esp.Outline = true 
            esp.Font = 2 
            esp.Size = 13
            esp.Color = Color3.new(5,0,0)
            esp.Text = 'SEXY'

            local tracer = Drawing.new('Line')
            tracer.Visible = false
            tracer.Color = Color3.new(1,0,0)
            tracer.Thickness = 1 
            tracer.Transparency = 1 
            
            
            local box_o = Drawing.new('Square')
            box_o.Visible = false
            box_o.Color = Color3.new(0,0,0)
            box_o.Thickness = 2
            box_o.Transparency =1 
            box_o.Filled = false
            
            local box = Drawing.new('Square')
            box.Visible = false
            box.Color = Color3.new(1,0,0)
            box.Thickness = 1.5
            box.Transparency =1 
            box.Filled = false
        
            local hb_o = Drawing.new('Square')
            hb_o.Visible = false
            hb_o.Color = Color3.new(0,0,0)
            hb_o.Thickness = 1
            hb_o.Transparency =1 
            hb_o.Filled = false
            
            local hb = Drawing.new('Square')
            hb.Visible = false
            hb.Color = Color3.new(1,0,0)
            hb.Thickness = 1
            hb.Transparency =1 
            hb.Filled = true
            local health = Drawing.new('Text')
            health.Visible = false
            local distancex = Drawing.new('Text')
            distancex.Visible = false
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            cam = workspace.CurrentCamera
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv()['dwdsettings']['espsettings']['esp'] and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    local vroot = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv()['dwdsettings']['espsettings']['esp'] and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))

    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end

                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true

                        local Talents = #v.Backpack:GetChildren()-1
                        local Power = Talents--#Talents-1
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,-15)
                        local preframework = getgenv()['dwdsettings']['espsettings']['espframework']
                        
                        preframework = string.gsub(
                            preframework,
                            '{health}',
                            '['..math.floor(v.Character.Humanoid.Health)..'/'..math.floor(v.Character.Humanoid.MaxHealth)..']'
                        )

                        if getgenv()['dwdsettings']['espsettings']['displaytalents'] == true then 
                            preframework = string.gsub(
                                preframework,
                                '{Talents}',
                                'Talents = '..Talents
                            )
                        else
                            preframework = string.gsub(
                                preframework,
                                '{Talents}',
                                ''
                            )
                        end
                        -- if getgenv()['dwdsettings']['espsettings']['estimatedlevel'] == true then 
                        --     preframework = string.gsub(
                        --         preframework,
                        --         '{Power}',
                        --         Talents
                        --     )
                        -- else
                        --     preframework = string.gsub(
                        --         preframework,
                        --         '{Power}',
                        --         ''
                        --     )
                        -- end
                        preframework =string.gsub(
                            preframework,
                            '{name}',
                            v.Name
                        )
                        preframework = string.gsub(
                            preframework,
                            '{distance}',
                            tostring(math.floor(distance))..'s'
                        )
                        esp.Text = preframework
                        if getgenv()['dwdsettings']['espsettings']['esp'] == true then esp.Visible = true end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true or getgenv()['dwdsettings']['espsettings']['esp'] == false then 
                    xkeeprunning:Disconnect()
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)

    end




    espsector:AddToggle('Esp', false, function(xstate)
        getgenv()['dwdsettings']['espsettings']['esp'] = xstate
        for _,v in next, game:GetService('Players'):GetPlayers() do 
            if getgenv()['dwdsettings']['espsettings']['esp'] == true then 
                getgenv().CreatePlayerEsp(v)
            end 
        end    
    end)
    espsector:AddToggle('Display Talents', false, function(xstate)
        getgenv()['dwdsettings']['espsettings']['displaytalents'] = xstate    
    end)
    espsector:AddToggle('Estimate Level', false, function(xstate)
        getgenv()['dwdsettings']['espsettings']['estimatedlevel'] = xstate
    end)



    

    local function waitforchildwhichisa(v,x)
        repeat task.wait() until v:FindFirstChild(x)
        return v:FindFirstChild(x)
    end


    local quickfilteranim = {
        'idle';
        'walk';
        'run';
    }
    local quickremoveanim = {
        'http'
    }--[|]


    for _,v in next, workspace.Live:GetChildren() do 
        print('on '..v.Name)
        if v.Name ~= game.Players.LocalPlayer.Name then 
            local workChar = v -- and not table.find(quickfilteranim,anim.Animation.Name)
            task.spawn(function()
                --workChar:WaitForChild('Humanoid')
                local connection; connection = v:FindFirstChildWhichIsA('Humanoid').AnimationPlayed:Connect(function(anim)
                    -- print('played '..v.Name)
                    task.spawn(function()
                        if getgenv()['dwdsettings']['autoparry'] == true and workChar:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            -- print('a playing')
                            local dist = (workChar:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                            if dist <= getgenv().dwdsettings['distance'] and not table.find(quickfilteranim,anim.Animation.Name) and not table.find(quickremoveanim,anim.Animation.AnimationId:sub(1,4)) and anim.Animation.AnimationId:sub(1,3) == 'rbx'then  -- 
        
                                getgenv().ParryAct(workChar,anim)
                                -- print('act '..v.Name)
                            else
                                -- if dist <= getgenv().dwdsettings['distance'] then print('ew') 
                                --     --print(anim.Animation.AnimationId:sub(1,3))
                                -- end
                                -- if getgenv().dwdsettings['distance'] > 0 then 
                                --     task.spawn(function()
                                --         local repeating = 0
                                --         repeat 
                                --             task.wait(0.1)
                                --             repeating +=.1
                                --             if repeating < 0.2 and workChar and workChar:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                --                 dist = (workChar:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                --                 if dist <= getgenv().dwdsettings['distance'] then 
                                --                     -- getgenv().ParryAct(workChar,anim)
                                --                     repeating = 0.2
                                --                 end
                                --             else
                                --                 repeating = 0.2
                                --             end
        
                                --         until repeating >= 0.2
                                --     end)
                                -- end
                            end
                        end
                    end)
    
                end)
    
                v:FindFirstChildWhichIsA('Humanoid').Died:Connect(function()
                    connection:Disconnect()
                    print'died'
                end)
    
                keepAlive(connection)
            end)
        end
    end





    local connectionAdded;connectionAdded = workspace.Live.ChildAdded:Connect(function(xchild)
        if xchild.Name ~= game.Players.LocalPlayer.Character.Name then
            local workChar = xchild
            -- print(xchild.Name..' added')
            task.spawn(function()
                --workChar:WaitForChild('Humanoid')
                local connection; connection = workChar:FindFirstChildWhichIsA('Humanoid').AnimationPlayed:Connect(function(anim)
                    task.spawn(function()
                        if getgenv()['dwdsettings']['autoparry'] == true and workChar:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            -- print('anim')
                            local dist = (workChar:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                            if dist <= getgenv().dwdsettings['distance'] and not table.find(quickfilteranim,anim.Animation.Name) and not table.find(quickremoveanim,anim.Animation.AnimationId:sub(1,4)) and anim.Animation.AnimationId:sub(1,3) == 'rbx' then 
                                -- print('in distance')
                                getgenv().ParryAct(workChar,anim)
                            else
                                --if dist <= getgenv().dwdsettings['distance'] then print('ew') end
                                -- if getgenv().dwdsettings['distance'] > 0 then 
                                --     task.spawn(function()
                                --         local repeating = 0
                                --         repeat 
                                --             task.wait(0.1)
                                --             repeating +=1 
                                --             if repeating < 0.2 and workChar and workChar:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                --                 dist = (workChar:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                --                 if dist <= getgenv().dwdsettings['distance'] then 
                                --                     getgenv().ParryAct(workChar,anim)
                                --                     repeating = 0.2
                                --                 end
                                --             else
                                --                 repeating = 0.2
                                --             end
                                --         until repeating >= 0.2
                                --     end)
                                -- end
                            end
                        end
                    end)
    
                end)
    
                keepAlive(connection)
    
                if getgenv()['dwdsettings']['espsettings']['esp'] == true and game:GetService('Players'):FindFirstChild(xchild.Name) then 
                    getgenv().CreatePlayerEsp(game:GetService('Players'):FindFirstChild(xchild.Name))
                end 
            end)
        end
    end)








    task.spawn(function()
        task.wait(1)
        repeat task.wait(.5) until getgenv().loopsUnload == true 
        print('workspace added loop break'); connectionAdded:Disconnect()
    end)
    

































    getgenv().DontStop = {

    }
    getgenv().stopAnims = function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
            if not table.find(getgenv().DontStop,v.Animation.AnimationId) or table.find(getgenv().DontStop,v.Animation.Name) then 
                v:Stop()
            end
            for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do 
                if not table.find(getgenv().DontStop,v.Animation.AnimationId) or table.find(getgenv().DontStop,v.Animation.Name) then 
                    v:Stop()
                end
            end
        end
    end




    Configiuration:CreateConfigSystem()

    task.spawn(function()
        while task.wait() do -- getgenv().est
            if getgenv().loopsUnload == true then print('dwd loop break') break end
            if nomantracdattachment:IsPressed() == true then 
                for _,v in next, game:GetService("Players").LocalPlayer:WaitForChild('PlayerGui'):WaitForChild('BackpackGui'):WaitForChild('MainFrame'):GetChildren() do 
                    if v:FindFirstChild('Cooldown') and v:FindFirstChild('Cooldown').Visible == true and v:FindFirstChild('Cooldown').AbsoluteSize ~= Vector2.new(60,0) then  -- 
                        v:FindFirstChild('Cooldown').Visible = false
                        if v:FindFirstChild('Cooldown') and v:FindFirstChild('Cooldown').AbsoluteSize == Vector2.new(60,0) then return end
                        --v:FindFirstChild('Cooldown').AbsoluteSize = Vector2.new(60,0)
                        local tool = nil       --and v:FindFirstChild('Cooldown').Visible == true                   
                        local function settool(x)
                            for _,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do if v.Name:find(x) then tool = v break end  end
                            pcall(function() tool.Parent = game.Players.LocalPlayer.Character end)
                            for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do if v.Name:find(x) then tool = v break end  end
                        end
                        local toolname = ''
                        local firstbracketreached = false;
                        for i=1, string.len(v.Name) do 
                            if v.Name:sub(i,i) == '{' and firstbracketreached == false then 
                                firstbracketreached = true 
                            elseif v.Name:sub(i,i) == '{' and firstbracketreached == true then 
                                firstbracketreached = 'registername'
                            elseif v.Name:sub(i,i) == '}' then 
                                firstbracketreached = false
                            elseif firstbracketreached == 'registername' then 
                                toolname = toolname..v.Name:sub(i,i)
                            end
                        end
                        if toolname ~= '' then 
                            pcall(function()
                                settool(toolname)
                                tool:Activate()
                                tool:Deactivate()
                                repeat task.wait(); tool.Parent = game.Players.LocalPlayer.Backpack 
                                until tool.Parent == game.Players.LocalPlayer.Backpack 
                                
                                
                            end)
                        end
                    end
                    --game:GetService("Players").LocalPlayer.PlayerGui.BackpackGui.MainFrame["003Mantra:StrongPunchFire{{Ash Slam}}"].Cooldown
                end
            end
            if getgenv().dwdsettings['nomantracd'] == true then 
                getgenv().dwdsettings['nomantracd']  = nil 
                task.spawn(function()
                    repeat 
                        task.wait(.5)
                        for _,v in next, game:GetService("Players").LocalPlayer:WaitForChild('PlayerGui'):WaitForChild('BackpackGui'):WaitForChild('MainFrame'):GetChildren() do 
                            if v:FindFirstChild('Cooldown') and v:FindFirstChild('Cooldown').Visible == true and v:FindFirstChild('Cooldown').AbsoluteSize ~= Vector2.new(60,0) then  -- 
                                v:FindFirstChild('Cooldown').Visible = false
                                if v:FindFirstChild('Cooldown') and v:FindFirstChild('Cooldown').AbsoluteSize == Vector2.new(60,0) then return end
                                --v:FindFirstChild('Cooldown').AbsoluteSize = Vector2.new(60,0)
                                local tool = nil       --and v:FindFirstChild('Cooldown').Visible == true                   
                                local function settool(x)
                                    for _,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do if v.Name:find(x) then tool = v break end  end
                                    pcall(function() tool.Parent = game.Players.LocalPlayer.Character end)
                                    for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do if v.Name:find(x) then tool = v break end  end
                                end
                                local toolname = ''
                                local firstbracketreached = false;
                                for i=1, string.len(v.Name) do 
                                    if v.Name:sub(i,i) == '{' and firstbracketreached == false then 
                                        firstbracketreached = true 
                                    elseif v.Name:sub(i,i) == '{' and firstbracketreached == true then 
                                        firstbracketreached = 'registername'
                                    elseif v.Name:sub(i,i) == '}' then 
                                        firstbracketreached = false
                                    elseif firstbracketreached == 'registername' then 
                                        toolname = toolname..v.Name:sub(i,i)
                                    end
                                end
                                local foundtool = false
                                for _,v in next, getgenv().dwdsettings['objects'] do 
                                    if v == tool then 
                                        foundtool = true
                                    end
                                end
                                if toolname ~= '' and foundtool == false then 
                                    table.insert(getgenv().dwdsettings['objects'],tool)
                                    task.delay(2,function()
                                        for _,v in next, getgenv().dwdsettings['objects'] do 
                                            if v == tool then 
                                                table.remove(getgenv().dwdsettings['objects'],_)
                                                -- foundtool = false
                                            end
                                        end
                                    end)
                                    pcall(function()
                                        settool(toolname)
                                        tool:Activate()
                                        tool:Deactivate()
                                        repeat task.wait(); tool.Parent = game.Players.LocalPlayer.Backpack 
                                        until tool.Parent == game.Players.LocalPlayer.Backpack 
                                        
                                        -- task.wait(2)
                                    end)
                                end
                            end
                            --game:GetService("Players").LocalPlayer.PlayerGui.BackpackGui.MainFrame["003Mantra:StrongPunchFire{{Ash Slam}}"].Cooldown
                        end
                    until getgenv().dwdsettings['nomantracd'] == false or getgenv().loopsUnload == true
                end)


            end
            if getgenv().dwdsettings['noanims'] == true then 
                getgenv().stopAnims()
            end
            if getgenv().AzfakeGlobalTables['dwd']['autoloot'] == true and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt') then 
               for _,inst in pairs(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt').ChoiceFrame.Options:GetChildren()) do 
                    if inst:IsA('TextButton') then
                        --print('text buttone')
                        -- print('@'..tostring(inst.BackgroundColor3))
                        game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt').Choice:FireServer(inst.Name)
                        if getgenv()['dwdsettings']['logchatlogger'] == true then 
                            logIt('Picked Item: '..inst.Name..' Enchanted = ','')
                        end
                    end
                    --print(inst.ClassName)
                end
            end
            if getgenv().Speeding == true and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                --accidentally put health
                -- print('supposed to speed')
                getgenv().Speeding = nil

                local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPropertyChangedSignal('WalkSpeed'):Connect(function()-- getpropertychangedsignal could be used here 
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().Speed
                end) 
                task.spawn(function()
                    repeat task.wait() until getgenv().Speeding == false or getgenv().loopsUnload == true 
                    connection:Disconnect()
                end)

            end
            --autoassign
            if getgenv()['dwdsettings']['autoassignstat'] == true then 
                getgenv()['dwdsettings']['autoassignstat'] = nil 
                task.spawn(function()
                    repeat 
                        task.wait(.5)
                        local ohString1 = getgenv()['dwdsettings']['selectedatrribute']
                        local ohBoolean2 = true
                        local ohBoolean3 = true
                
                        game:GetService("ReplicatedStorage").Requests.IncreaseAttribute:InvokeServer(ohString1, ohBoolean2, ohBoolean3)
                    until getgenv()['dwdsettings']['autoassignstat'] == false
                end)
            end

            if getgenv().dwdsettings['autoopenchest'] == true then 
                getgenv().dwdsettings['autoopenchest'] = nil 
                task.spawn(function()
                    repeat  
                        task.wait(1) 
                        for _,v in next,workspace:FindFirstChild('Thrown'):GetChildren() do 
                            local alreadyinserted = false
                            for _i,xf in next, getgenv()['dwdsettings']['objects'] do 
                                if xf == v then 
                                    alreadyinserted = true
                                end
                            end
                            pcall(function()
                                if v:FindFirstChild('Pick') and v.Name == 'Model' and alreadyinserted == false and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt') then 
                                    -- print('Found chest')
                                    if v:FindFirstChildWhichIsA('MeshPart') then 
                                        local dist = (v:FindFirstChildWhichIsA('MeshPart').Position -game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position )
                                        if dist.Magnitude <= 4 then 
                                            local inputManager = game:GetService('VirtualInputManager')
                                            inputManager:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                                            inputManager:SendKeyEvent(false,Enum.KeyCode.E,false,game)
                                            task.delay(1,function()
                                                task.spawn(function()
                                                    repeat task.wait(0.01) until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt') -- until it finds ??
                                                    table.insert(getgenv()['dwdsettings']['objects'],v)
                                                end)
                                                
                                            end)
                                        end
                                    else
                                        return
                                    end
                                end
                            end)

                        end
                    until getgenv().dwdsettings['autoopenchest'] == false
                end)
            end
            if Attach_to_back:IsPressed() == true  then -- and getgenv().istyping == false
                print('attadh pressed')
                task.spawn(function()
                    repeat 
                        local Closest = nil 
                        local closestpos = nil
                        task.wait(0.01)
                        for _,v in pairs(workspace.Live:GetChildren()) do 
                            if (v:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                if dist.Magnitude <= getgenv().dwdsettings['distance'] then 
                                    
                                    if Closest == nil then 
                                        Closest = v 
                                        closestpos = dist.Magnitude
                                    else
                                        if closestpos < dist.Magnitude then 
                                            Closest = v 
                                            closestpos = dist.Magnitude
                                        end
                                    end

                                end
                            end
                        end
                        if Closest ~= nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            if closestpos >3 and getgenv().dwdsettings['CurrentTween'] == nil then 
                                -- local TweenSpeedProCalculation = tonumber('0.'..math.floor(closestpos)) + math.floor(closestpos/getgenv().Distance) + math.floor(closestpos/(getgenv().dwdsettings['distance']*2))
                                -- print('Tween Speed: '..TweenSpeedProCalculation)
                                -- getgenv().dwdsettings['CurrentTween'] = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.5),{
                                --     CFrame = Closest:FindFirstChild('HumanoidRootPart').CFrame
                                -- })
                                -- getgenv().dwdsettings['CurrentTween']:Play()
                                -- --or getgenv().fw3localFw3['CurrentTween'].Completed == true
                                -- task.spawn(function()
                                --     repeat task.wait() until Attach_to_back:IsPressed() == false 
                                --     getgenv().dwdsettings['CurrentTween']:Pause()
                                --     getgenv().dwdsettings['CurrentTween'] = nil
                                -- end)
                                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Closest:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,3)
                            elseif closestpos <5 then
                                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Closest:FindFirstChild('HumanoidRootPart').CFrame
                            end
                            
                        end
                    until Attach_to_back:IsPressed() == false      
                end)
            end






            if getgenv().dwdsettings['tptochests'] == true and getgenv()['dwdsettings']['canswapchest'] == true then 
                if workspace:FindFirstChild('Thrown') then 
                    if workspace:FindFirstChild('Thrown'):FindFirstChild('Model') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        for _,v in next,workspace:FindFirstChild('Thrown'):GetChildren() do 
                            if v:FindFirstChild('Pick') and v.Name == 'Model' then 
                                getgenv()['dwdsettings']['canswapchest'] = false
                                -- print('Found chest')
                                pcall(function()
                                    
                                end)
                                if v:FindFirstChildWhichIsA('MeshPart') then 
                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChildWhichIsA('MeshPart').CFrame 
                                end
                                -- if v:FindFirstChild('Part') then 
                                --     game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('Part').CFrame 
                                -- end
                                task.spawn(function()
                                    pcall(function()
                                        repeat task.wait(0.0001) until game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame == v:FindFirstChildWhichIsA('MeshPart').CFrame 
                                        task.wait(.01)
                                        local inputManager = game:GetService('VirtualInputManager')
                                        inputManager:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                                        inputManager:SendKeyEvent(false,Enum.KeyCode.E,false,game)
                                        task.wait(.011)
                                        inputManager:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                                        inputManager:SendKeyEvent(false,Enum.KeyCode.E,false,game)
                                    end)

                                end)
                                task.delay(getgenv()['dwdsettings']['safedelay'],function()
                                    if getgenv()['dwdsettings']['safelocationaftertp'] == true then 
                                        local inputManager = game:GetService('VirtualInputManager')
                                        inputManager:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                                        inputManager:SendKeyEvent(false,Enum.KeyCode.E,false,game)
                                        task.wait(.01)
                                        inputManager:SendKeyEvent(true,Enum.KeyCode.E,false,game)
                                        inputManager:SendKeyEvent(false,Enum.KeyCode.E,false,game)
                                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv()['dwdsettings']['safelocationcframe']
                                    end
                                end)
                                task.spawn(function()
                                    repeat task.wait(0.01) until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ChoicePrompt')
                                    getgenv()['dwdsettings']['canswapchest'] = true
                                end)

                            end
                        end
                    end
                end
            end
            if getgenv().dwdsettings['loopprima'] == true then 
                for _,v in next, workspace.Live:GetChildren() do 
                    if v:FindFirstChild('MonkyController') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:WaitForChild('LFeet').CFrame * CFrame.new(-1,-1,9)
                    end
                end
            end
        end
    end)

    -- Notify('','Fastest AutoLoot','untilClick')
    -- fakewoken 3 next


elseif game.PlaceId == 4282985734 then 
    getgenv().parrys = { 

        "rbxassetid://6851070581"; --Slash1
        "rbxassetid://6856107396"; --Slash2
        "rbxassetid://6856274327"; --Slash3
        "rbxassetid://7047913825"; --Slash1
        "rbxassetid://7048081494"; --Slash2
        "rbxassetid://7076137002"; --Slash3
        "rbxassetid://9130608399"; --Flourish
        "rbxassetid://9130724565"; --Flourish
        "rbxassetid://6133492098"; --Slash1
        "rbxassetid://6133492666"; --Slash2
        "rbxassetid://6133494118"; --Slash3
        "rbxassetid://9130407288"; --Flourish
        "rbxassetid://9130659525"; --Slash2
        "rbxassetid://9130656296"; --Slash1
        "rbxassetid://9130665273"; --Slash4
        "rbxassetid://9006661896"; --Flourish
        "rbxassetid://9130662282"; --Slash3
        "rbxassetid://6243326071"; --Slash3
        "rbxassetid://6243325311"; --Slash2
        "rbxassetid://6243323055"; --Slash1
        "rbxassetid://6145119463"; --Slash3
        "rbxassetid://6145118595"; --Slash2
        "rbxassetid://6145117792"; --Slash1
        "rbxassetid://6145038858"; --Slash1
        "rbxassetid://6145039913"; --Slash2
        "rbxassetid://6145041133"; --Slash3
        "rbxassetid://6423003415"; --Stomp
        "rbxassetid://7250159015"; --SideKick
        "rbxassetid://10027131143"; --Flourish
        "rbxassetid://10583004808"; --Slash1
        "rbxassetid://8999185608"; --Flourish
        "rbxassetid://10650976875"; --Flourish
        "rbxassetid://9131147793"; --Flourish
        "rbxassetid://9130923210"; --Flourish
        "rbxassetid://10080111463"; --Flourish
        "rbxassetid://10079924391"; --Flourish
        "rbxassetid://8927510348"; --Flourish
        "rbxassetid://9130864613"; --Flourish
        "rbxassetid://7533335921"; --Slash3
        "rbxassetid://7533334962"; --Slash2
        "rbxassetid://7533333743"; --Slash1
        "rbxassetid://8799311055"; --Flourish
        "rbxassetid://8799319983"; --Slash3
        "rbxassetid://8799318064"; --Slash2
        "rbxassetid://8799315678"; --Slash1
        "rbxassetid://8918766046"; --Flourish
        "rbxassetid://8928653136"; --Flourish
        "rbxassetid://9130475107"; --Flourish
        "rbxassetid://10027205747"; --Slash3
        "rbxassetid://10027210160"; --Slash2
        "rbxassetid://10024441313"; --Slash1
        "rbxassetid://10080879138"; --Flourish
        "rbxassetid://9130798160"; --Flourish
        "rbxassetid://9602879381"; --Flourish
        "rbxassetid://10079937798"; --Flourish
        "rbxassetid://9615256593"; --Flourish
        "rbxassetid://10650976875"; --Flourish
        "rbxassetid://8876287739"; --Flourish
        "rbxassetid://9692247305"; --Flourish
        "rbxassetid://10080182165"; --Flourish
    }
    local Top = window:CreateTab(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name);
    local sector = Top:CreateSector('Cheats','left')
    getgenv().Distance = 0
    getgenv().AutoParrying = false
    sector:AddSlider("AutoParry Distance", 0, 0, 100, 1, function(State)
        getgenv().Distance = State
    end)

    sector:AddToggle("Auto Parry", false, function(xstate)
        getgenv().AutoParrying = xstate
    end)

    getgenv().parry = function()
        keypress(0x46)
        keyrelease(0x46)
    end


elseif game.PlaceId == 011 then --//ro beat, fnf
    local Top = window:CreateTab(gameName);
    getgenv().AutoPlay = false
    sector:AddToggle("Auto Play", false, function(xstate)
        getgenv().AutoPlay = xstate
    end)


    -- detect distance by minusing y from moving circle to the base circle.
    -- if it has a line then hold until the line isnt there.
elseif game.PlaceId == 6379910076 then 
    local Top = window:CreateTab(gameName);
    sector = Top:CreateSector('Cheats','left')
    getgenv().headclose = false
    getgenv().infgas = false

    local mouse= game.Players.LocalPlayer:GetMouse();
    local function getexploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getscriptenvs and "Calamari") or
            (unit and not syn and "Unit") or
            (OXYGEN_LOADED and "Oxygen U") or
            (IsElectron and "Electron") or
            ("Unsupported")
      
        return exploit
    end
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    if make_writeable then make_writeable(mt) end 
    if getexploit() == 'Krnl' or setreadonly then 
        setreadonly(mt,false)
    end
    local xtra = ''
    local oldind = mt.__index; 
    local yYes,nNo = pcall(function()
        mt.__namecall = newcclosure(function(self,...)
            if  getnamecallmethod() == 'FireServer' and tostring(self) == 'GasDepleteEvent' and getgenv().infgas then --// checkcaller -- not checkcaller() and
                local args = {...}
                return
            end
            return namecall(self,...)
        end)
    end)
    
    local tgl = sector:AddToggle("To Nearest Head", false, function(xstate)
        getgenv().headclose = xstate
    end); tgl:AddKeybind()

    sector:AddToggle("Inf Gas", false, function(xstate)
        getgenv().infgas = xstate
    end);
    while task.wait() do 
        if getgenv().headclose then 
            local closest_root = nil 
            local closest_rootps = nil 
            for _,v in next, workspace:GetChildren() do 
                if v.Name == 'Titan' then 
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Humanoid').Health > 0 then 
                        local dist =  (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if closest_root == nil and dist <= 100 then 
                            closest_root = v:FindFirstChild('HumanoidRootPart');
                            closest_rootps = dist
                        elseif closest_root ~= nil and dist <= 100 then 
                            if closest_rootps > dist then 
                                closest_root = v:FindFirstChild('HumanoidRootPart');
                                closest_rootps = dist
                            end
                        end
                    end
                end
            end
    
            if closest_root ~= nil then 
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-8,5)}
                ):Play()
                task.wait(.1)
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-8,-5)}
                ):Play()
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-4,3)}
                ):Play()
                task.wait(.1)
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-8,3)}
                ):Play()
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-8,-1)}
                ):Play()
                game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(.01),
                    {CFrame = closest_root.Parent.Head.CFrame * CFrame.new(0,-6,1)}
                ):Play()
                tickwait = 0
                repeat 
                    task.wait(0.1)
                    tickwait += 0.1
                    local ohNil1 = nil
                    local ohInstance2 = closest_root.Parent.Humanoid --[[ PARENTED TO NIL OR DESTROYED ]]
                    local ohString3 = "&@&*&@&"
                    local ohInstance4 = closest_root.Parent --[[ PARENTED TO NIL OR DESTROYED ]]
        
                    game:GetService("ReplicatedStorage").DamageEvent:FireServer(ohNil1, ohInstance2, ohString3, ohInstance4)
                until tickwait > 1
            end
        end
    end


elseif game.PlaceId == 318978013 then -- // kick off
    local Top = window:CreateTab(gameName);
    sector = Top:CreateSector('Cheats','left')
    getgenv().setcframe = false
    getgenv().Speed = 0
    getgenv().SpeedOn = false
    getgenv().KickOnTarget = true
    local l__Name__2 = game.Players.LocalPlayer.Team.Name;

    local v8 = nil;
    -- if require(game.ReplicatedStorage:WaitForChild("DeviceModule")).Device() == "console" then
    --     script.Parent.BackScroll.Space.Visible = true;
    -- end;
    
    if l__Name__2 == "USA" then
        v8 = workspace.MapHolder:GetChildren()[1]:WaitForChild("RedGoal").Position;
    elseif l__Name__2 == "Brazil" then
        v8 = workspace.MapHolder:GetChildren()[1]:WaitForChild("BlueGoal").Position;
    end;

    -- local mt = getrawmetatable(game)
    -- local namecall = mt.__namecall
    -- if make_writeable then make_writeable(mt) end 
    -- mt.__namecall = newcclosure(function(self,...)
    --     if  getnamecallmethod() == 'FireServer' and tostring(self) == 'MasterKey' then --// checkcaller -- not checkcaller() and
    --         local args = {...}
    --         --for _,v in next, args do print('\n'.._..' '..v) end
    --         local distance = (v8 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    --         if args[1] == "Kick" and getgenv().KickOnTarget == true and distance <= 40 then
    --             local ohVector35 = v8--Vector3.new(-24.45448112487793, 37.95000076293945, -8.682209014892578)
    --             local ohVector36 = v8--Vector3.new(-103.99867248535156, -96.29850006103516, -376.18243408203125)
    --             local ohVector37 = v8--Vector3.new(-128.35227966308594, -119.29850006103516, -384.8288269042969)
    --             --args[4] = 100
    --             args[5] = ohVector35
    --             args[6] = ohVector36
    --             args[7] = ohVector37 -- namecall(self,unpack(args))
    --             return namecall(self,args[1],args[2],args[3],args[4],args[5],args[6],args[7]) -- instead of it firing invoke(args <args = table> ) it will invoke(arg[1],arg[2]) etc
    --             -- namecall(self,...) would do invoke(arg[1],arg[2]) etc
    --         end
            
             
    --     end
    --     return namecall(self,...)
    -- end)
    sector:AddButton('Give Ball',function()
        if workspace:FindFirstChild('SoccerBall') then 
            if workspace:FindFirstChild('SoccerBall').Owner.Value ~= game.Players.LocalPlayer.Name and workspace:FindFirstChild('SoccerBall'):FindFirstChild('Weld') then 
                workspace:FindFirstChild('SoccerBall').Weld.Part0 = nil
            end
            workspace:FindFirstChild('SoccerBall').CFrame = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame
        end
    end)
    sector:AddButton('Reset',function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end)
    sector:AddButton('Rejoin',function()
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)
    sector:AddSeperator()
    local tgl = sector:AddToggle("Ball Set CFrame", false, function(xstate)
        getgenv().setcframe = xstate
    end); 
    -- sector:AddToggle("Auto Target", true, function(xstate)
    --     getgenv().KickOnTarget = xstate
    -- end);
    sector:AddSlider("Speed", 0, 0, 200, 1, function(State)
        getgenv().Speed = State
    end)
    local speedtgl = sector:AddToggle("Speed Toggle", false, function(xstate)
        getgenv().SpeedOn = xstate
    end); speedtgl:AddKeybind()
    getgenv().animsplayed = {}
    getgenv().anims = {}
    for _,v in next, game:GetService("ReplicatedStorage").Animations:GetChildren() do 
        local animTable = {}

        table.insert(getgenv().anims,v.Name)
    end
    sector:AddSeperator()
    getgenv().getanimplay = nil
    sector:AddDropdown("Animation", getgenv().anims, "", false, function(dropdownv)
        local anim = Instance.new'Animation'; anim.AnimationId = game:GetService("ReplicatedStorage").Animations[dropdownv].Value --'http://www.roblox.com/HandStandKick-item?id=318972469'
        print(game:GetService("ReplicatedStorage").Animations[dropdownv].Value)
        getgenv().getanimplay = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):LoadAnimation(anim)
        table.insert(getgenv().animsplayed,anim)
    end)
    sector:AddButton('Play',function()
        --pcall(function()
            getgenv().getanimplay:Play()
        --end)
    end)
    sector:AddButton('stop anims',function()
        for _,v in next,getgenv().animsplayed do 
            v:Stop() 
        end
    end)
    -- http://www.roblox.com/HandStandKick-item?id=318972469
    -- https://www.roblox.com/Breakdance-item?id=472691731
    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(jit)
        if jit == 'g' and getgenv().setcframe == true then 
            if workspace:FindFirstChild('SoccerBall') then 
                if workspace:FindFirstChild('SoccerBall').Owner.Value ~= game.Players.LocalPlayer.Name and workspace:FindFirstChild('SoccerBall'):FindFirstChild('Weld') then 
                    workspace:FindFirstChild('SoccerBall').Weld.Part0 = nil
                end
                workspace:FindFirstChild('SoccerBall').CFrame = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame
            end
        end
    end)

    task.spawn(function()
        while task.wait() do 
            if getgenv().SpeedOn == true and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
            end
        end
    end)

elseif game.PlaceId == 5941294866 then --// cameo game 2

    local tab = window:CreateTab('Cameo Game 2')
    local cameo = tab:CreateSector('Cheats','left')
    local cameoetc = tab:CreateSector('Cheats','right')
    getgenv().AddPlayerList(cameo)

    getgenv().cameogame2={
        nocd = false;
        nofd = true;
        manapoint = 0;
        chargemana = false;
        charging = false;
        attachtoback = false;
        attachkeybind = ''
    }

    local function getexploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getscriptenvs and "Calamari") or
            (unit and not syn and "Unit") or
            (OXYGEN_LOADED and "Oxygen U") or
            (IsElectron and "Electron") or
            ("Unsupported")
      
        return exploit
    end
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    if make_writeable then make_writeable(mt) end 
    if getexploit() == 'Krnl' or setreadonly then 
        setreadonly(mt,false)
    end
    local xtra = ''
    local oldind = mt.__index; 
    local yYes,nNo = pcall(function()
        mt.__namecall = newcclosure(function(self,...)
            if  not checkcaller() and getnamecallmethod() == 'FireServer' and tostring(self) == 'ManaChargeEnd' and getgenv().chargemana == true then --// checkcaller -- not checkcaller() and
                local args = {...}
                return
            end
            return namecall(self,...)
        end)
    end)

    getgenv().npcs = {}
    for _,v in next, game.Workspace['NPCs']:GetChildren() do 
        table.insert(getgenv().npcs,v.Name)
    end

    --cameo:AddSeperator()

    local nocdtoggle = cameo:AddToggle('No Cooldown',false, function(xstate)
        getgenv().cameogame2['nocd'] = xstate--nocd value changed makes the toggle value change?
    end)
    cameo:AddToggle('No Fall Damage',true, function(xstate)
        getgenv().cameogame2['nofd'] = xstate
    end)
    cameo:AddSlider("Mana Point", 0, 0, 100, 1, function(State)
        getgenv().cameogame2['manapoint'] = State
    end)
    cameo:AddSlider("Climb Multiplier", 0, 0, 100, 1, function(State)
        game.Players.LocalPlayer.Character.Stats.ClimbMult.Value = State
    end)
    cameo:AddToggle("Charge Mana Point", false, function(xstate)
        getgenv().cameogame2['chargemana'] = xstate
    end)
    local attach = cameo:AddToggle("Attach to Back", false, function(xstate)
        getgenv().cameogame2['attachtoback'] = xstate
    end)
    getgenv().cameogame2['attachkeybind'] = attach:AddKeybind()
    getgenv().npctpto = nil
    getgenv().npcnametp = ''
    getgenv().npcnametpto = nil
    local npclist = cameo:AddDropdown("NPC Teleportation", getgenv().npcs, "", false, function(dropdownv)
        getgenv().npctpto = game.Workspace['NPCs'][dropdownv]

        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)

    cameo:AddTextbox('npc name tp',nil,function(State)
        getgenv().npcnametp = State
        for _,v in next, game.Workspace['NPCs']:GetChildren() do 
            if v.Name:sub(1,string.len(getgenv().npcnametp))== getgenv().npcnametp then
                getgenv().npcnametpto = v 
                break
            end
        end
    end)
    
    cameo:AddButton('Teleport', function()
        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
            
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv().npctpto.HumanoidRootPart.CFrame
        end
    end)
    cameo:AddButton('Teleport To Name', function()
        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
            
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv().npcnametpto.HumanoidRootPart.CFrame
        end
    end)
    cameo:AddSeperator()
    cameo:AddButton('Un/Anchor', function()
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored
    end)
    cameo:AddButton('Loop Through Trinkets', function()
        -- for _,v in next, game:GetService("Workspace").MouseIgnore:GetChildren() do 
        --     if v:FindFirstChild('ClickDetector') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
            
        --         game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v.CFrame
        --     end
        -- end
        for _,v in next, game:GetService("Workspace").MouseIgnore:GetChildren() do 
            if v:FindFirstChild('ClickDetector') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                task.wait(.02)
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v.CFrame
                task.wait(.1)
                fireclickdetector(v.ClickDetector,1)
                fireclickdetector(v.ClickDetector,1)
                task.wait(.05)
            end
        end
    end)
    getgenv().spammingpunches = false
    local puncheestoggle = cameoetc:AddToggle('Spam Punches',false,function(xstate)
        getgenv().spammingpunches = xstate 
        if getgenv().spammingpunches == true then 
            task.spawn(function()
                r = 0
                repeat
                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                task.wait(0.001)
                r+=0.1
                game.Players.LocalPlayer.Character.M1:FireServer()
                until getgenv().spammingpunches == false
            end)
        end
    end)

    getgenv().enemy = {}
    getgenv().enemyfarming = nil
    getgenv().farming = false
    local enemylist = cameoetc:AddDropdown("NPC Farm", getgenv().enemy, "", false, function(dropdownv)
        getgenv().enemyfarming = game.Workspace[dropdownv]
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)
    for _,v in next, game.Workspace:GetChildren() do 
        local enemynames = {
            'Valentine';
            'fat santa';
            
        }
        
        for _n,name in next, enemynames do 
            if v.Name:sub(1,string.len(name)) == name then 
                enemylist:Add(v.Name)
                table.insert(getgenv().enemy,v.Name)
            end
        end
        -- for index,en_name in next, getgenv().enemy do 
        --     enemylist:Add(en_name)
        -- end
    end
    game.Workspace.ChildAdded:Connect(function(child)
        local enemynames = {
            'Valentine';
            'fatsanta';
            
        }
        getgenv().enemy = {}
        for _,name in next, enemynames do 
            if child.Name:sub(1,string.len(name)) == name then 
                table.insert(getgenv().enemy,child.Name)
                enemy:Add(child.Name)
            end
        end
        -- for index,en_name in next,  getgenv().enemy do 
        --     enemylist:Add(en_name)
        -- end

    end)
    game.Workspace.ChildRemoved:Connect(function(child)
        local enemynames = {
            'Valentine';
            'fatsanta';
            
        }
        getgenv().enemy = {}
        for _,name in next, enemynames do 
            if child.Name:sub(1,string.len(name)) == name then 
                --table.insert(getgenv().enemy,child.Name)
                enemylist:Remove(child.Name)
            end
        end

        

    end)



    local farmnpctoggle = cameoetc:AddToggle('Farm NPC',false, function(xstate)
        getgenv().cameogame2['farming'] = xstate
        if getgenv().cameogame2['farming'] == true then 
            if getgenv().enemyfarming ~= nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().enemyfarming.HumanoidRootPart.CFrame
                waspreviouslyfalse = false
                if getgenv().cameogame2['nocd'] == false then 
                    waspreviouslyfalse = true 
                    nocdtoggle:Set(true)
                end
                nocdtoggle:Set(true)
                task.spawn(function()
                    r = 0
                    repeat
                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                    task.wait(0.001)
                    r+=0.1
                    game.Players.LocalPlayer.Character.M1:FireServer()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().enemyfarming.HumanoidRootPart.CFrame
                    until getgenv().enemyfarming.Humanoid.Health <= 0
                    if waspreviouslyfalse == true then  
                        nocdtoggle:Set(false)
                    end
                end)
            else
                farmnpctoggle:Set(false)
            end
        end
    end)
    -- cameo:AddButton('Slow Down Mana', function()
    --     local slow = Instance.new('Folder'); slow.Name = 'SpellHold'; slow.Parent = game.Players.LocalPlayer.Character
    -- end)
    -- game:GetService("Workspace").MouseIgnore


    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('cameo loop break end') break end
            task.spawn(function()
                if getgenv().cameogame2['chargemana'] == true and getgenv().cameogame2['manapoint'] ~= 0 then --check if bigger than 0
                    if not game.Players.LocalPlayer.Character:FindFirstChild('Poison') and game.Players.LocalPlayer.Character:FindFirstChild('ManaChargeStart') and not game.Players.LocalPlayer.Character:FindFirstChild('Running') and getgenv().cameogame2['charging'] == false and getgenv().cameogame2['manapoint'] >= game:GetService("Players").LocalPlayer.Character.Stats.Mana.Value then 
                        getgenv().cameogame2['charging'] = true
                        task.wait(.0001)
                        game:GetService("Players").LocalPlayer.Character.ManaChargeStart:FireServer(nil)
                        task.wait(.0001)
                        --game:GetService("Players").LocalPlayer.Character.ManaChargeStart:FireServer(nil)
                        task.spawn(function()
                            repeat task.wait()  until game.Players.LocalPlayer.Character:FindFirstChild('manashield') or game.Players.LocalPlayer.Character:FindFirstChild('Blocking') or game.Players.LocalPlayer.Character:FindFirstChild('Poison') or not game.Players.LocalPlayer.Character:FindFirstChild('Stats') or game.Players.LocalPlayer.Character:FindFirstChild('Climbing') or game.Players.LocalPlayer.Character:FindFirstChild('Running') or game:GetService("Players").LocalPlayer.Character.Stats.Mana.Value >= getgenv().cameogame2['manapoint']
                            --print('stopped, Mana: '..game:GetService("Players").LocalPlayer.Character.Stats.Mana.Value..', Point: '..getgenv().cameogame2['manapoint'])
                            getgenv().cameogame2['charging'] = false
                            game:GetService("Players").LocalPlayer.Character.ManaChargeEnd:FireServer(nil)
                        end)
                    end
                end
            end)
            if getgenv().cameogame2['nofd']== true and not game.Players.LocalPlayer.Character:FindFirstChild('FallDamageImmune') then 
                local r=Instance.new('Folder'); r.Name = 'FallDamageImmune'; r.Parent = game.Players.LocalPlayer.Character
            end
            if getgenv().cameogame2['nocd'] == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild('Comboing') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Comboing'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('PunchCooldown') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('PunchCooldown'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Busy') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Busy'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('manashield') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('manashield'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Blocking') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Blocking'):Destroy()
                end
                -- if game.Players.LocalPlayer.Character:FindFirstChild('Running') then 
                --     game.Players.LocalPlayer.Character:FindFirstChild('Running').Name = 'Destroy()'
                -- end
                if game.Players.LocalPlayer.Character:FindFirstChild('SnapCooldown') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('SnapCooldown'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Staggered') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Staggered'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('IgnisCooldown') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('IgnisCooldown'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Flames') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Flames'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Helpless') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Helpless'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('IgnisCasting') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('IgnisCasting'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('DruidCooldown') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('DruidCooldown'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('IgnisStaggered') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('IgnisStaggered'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('PUNCHM2COOLDOWN') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('PUNCHM2COOLDOWN'):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Poison') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Poison'):Destroy()
                end
                -- PUNCHM2COOLDOWN
                if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool') then 
                    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Cooldown') then 
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Cooldown'):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('MainCooldown') then 
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('MainCooldown'):Destroy()
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('DaCooldown') then 
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('DaCooldown').Value = false
                    end
                end
            end

        end
    end)
elseif game.PlaceId == 10889408214 then --// deflect
    local tab = window:CreateTab(gameName)
    local deflect = tab:CreateSector('Cheats','left')

    getgenv().deflecttbl = {
        autodeflect = true;
        distance = 5;
    }

    deflect:AddToggle('Auto Deflect',true,function(xstate)
        getgenv().deflecttbl['autodeflect'] = xstate
    end)

    deflect:AddButton('Rejoin',function()
        -- rejoin
        local valid = isfile("placem1xlog.txt")
        if  valid then   
            appendfile("placem1xlog.txt", game.PlaceId..' joined/rejoin '..game.JobId)
        else
            writefile("placem1xlog.txt", game.PlaceId..' joined/rejoin '..game.JobId)
        end
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)
    deflect:AddButton('Reset',function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end)

    deflect:AddSlider("Distance", -10, 5, 10, 10, function(State)
        getgenv().deflecttbl['distance'] = State
    end)
    -- game:GetService('RunService').RenderStepped:Connect(function()
    
    -- end)
    task.spawn(function()
        while task.wait(0.01) do 
            if getgenv().loopsUnload == true then break end
            if getgenv().deflecttbl['autodeflect'] == true and workspace:FindFirstChild('Ball') and workspace:FindFirstChild('Ball'):FindFirstChild('Tracking') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                local ball = workspace:FindFirstChild('Ball')
                local pos = ball:FindFirstChild('Main').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position
                -- pos.Magnitude >= dist-pos.Magnitude: 30 10
                -- check for red highlight
                if ball.Tracking.Value == game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Highlight')  then 
                    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                    if vs == 'debug' then 
                        print('Tracking')
                    end
                    if pos.Magnitude <= getgenv().deflecttbl['distance'] *1 then 
                        print('Deflecting')
                        game.Players.LocalPlayer.Character.Deflection.Remote:FireServer('Deflect', workspace.CurrentCamera.CFrame.lookVector)
                    else
                        if pos.Magnitude <=getgenv().deflecttbl['distance'] * 1.2 then 
                            local loopongoingfortoolong = false
                            local stoploop = false;
                            local looponfor = 0
                            task.spawn(function()
                                repeat 
                                    task.wait(0.1)
                                    looponfor += 0.1
                                    if looponfor >= 1 then 
                                        stoploop = true ;
                                        loopongoingfortoolong = true;
                                    end
                                    if pos.Magnitude <=getgenv().deflecttbl['distance'] and stoploop == false then 
                                        stoploop = true ;
                                        game.Players.LocalPlayer.Character.Deflection.Remote:FireServer('Deflect', workspace.CurrentCamera.CFrame.lookVector)
                                    end
                                    if not workspace:FindFirstChild('Ball') then stoploop = true end
                                until loopongoingfortoolong == true or stoploop == true
                            end)
                        end
                    end
                end

            end
        end
    end)

elseif game.PlaceId == 8246874626 then -- dbz
    local tab = window:CreateTab(gameName)
    local dbzgame = tab:CreateSector('Cheats','left')
    getgenv().dbzgametbl = {
        killaura = false;
        distance = 50;
    }

    dbzgame:AddToggle('Kill Aura',false,function(xstate)
        getgenv().dbzgametbl['killaura'] = xstate
    end)

    dbzgame:AddSlider("Distance", 0, 50, 100, 5, function(State)
        getgenv().dbzgametbl['distance'] = State
    end)

    getgenv().EnemyTpInstance = nil
    getgenv().enemynametp = ''
    getgenv().enemy = {}
    getgenv().enemyfarming = nil
    dbzgame:AddTextbox('Enemy TP',nil,function(State)
        getgenv().enemynametp = State
        for _,v in next, game.Workspace.Main.Live:GetChildren() do 
            if v.Name:sub(1,string.len(getgenv().enemynametp))== getgenv().enemynametp then
                getgenv().EnemyTpInstance = v 
                break
            end
        end
    end)


    local enemylist = dbzgame:AddDropdown("NPC Farm", getgenv().enemy, "", false, function(dropdownv)
        getgenv().enemyfarming = game.Workspace.Main.Live[dropdownv]
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)

    dbzgame:AddButton('Teleport',function()
        if getgenv().enemyfarming ~= nil then 
            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().enemyfarming.HumanoidRootPart.CFrame
            end
        end
    end)
    for _,v in next, game.Workspace.Main.Live:GetChildren() do  
        -- for _n,name in next, enemynames do 
        --     if v.Name:sub(1,string.len(name)) == name then 
        --         enemylist:Add(v.Name)
        --         table.insert(getgenv().enemy,v.Name)
        --     end
        -- end
        if not game.Players:FindFirstChild(v.Name) and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') then 
            table.insert(getgenv().enemy,v.Name)
            enemylist:Add(v.Name)
        end
    end
    game.Workspace.Main.Live.ChildAdded:Connect(function(child)
        -- for _,name in next, enemynames do 
        --     if child.Name:sub(1,string.len(name)) == name then 
        --         table.insert(getgenv().enemy,child.Name)
        --         enemy:Add(child.Name)
        --     end
        -- end
        if not game.Players:FindFirstChild(child.Name) and child:FindFirstChild('Humanoid') and child:FindFirstChild('HumanoidRootPart') then 
            table.insert(getgenv().enemy,child.Name)
            enemy:Add(child.Name)
        end

    end)

    game.Workspace.Main.Live.ChildRemoved:Connect(function(child)

        getgenv().enemy = {}
        for _,v in next, game.Workspace.Main.Live:GetChildren() do  
            -- for _n,name in next, enemynames do 
            --     if v.Name:sub(1,string.len(name)) == name then 
            --         enemylist:Add(v.Name)
            --         table.insert(getgenv().enemy,v.Name)
            --     end
            -- end
            if not game.Players:FindFirstChild(v.Name) and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') then 
                table.insert(getgenv().enemy,v.Name)
            end
        end
        if not game.Players:FindFirstChild(child.Name) and child:FindFirstChild('Humanoid') and child:FindFirstChild('HumanoidRootPart') then 

            enemylist:Remove(child.Name)
        end


    end)



    -- HumanoidRootPart Players LocalPlayer Character Humanoid
    
    local l__ReplicatedStorage__2 = game:GetService("ReplicatedStorage");
    v5 = require(l__ReplicatedStorage__2.Modules:WaitForChild("Helper"));
    local u32 = {
        Type = 'Light', 
        AnimSet = '', 
        CurrentHeavy = 5, 
        CurrentLight = 5, 
        CurrentLightCombo = 1
    };
    
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('loop break') break end 
            
            if getgenv().dbzgametbl['killaura'] then 
                for _,v in next,workspace:FindFirstChild('Main'):FindFirstChild('Live'):GetChildren() do 
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and v:FindFirstChild('Humanoid').Health > 0 then 
                        local dist = (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude 
                        
                        if dist <= getgenv().dbzgametbl['distance'] then 
                            v5.TryAttack(game.Players.LocalPlayer.Character, u32);
                            --task.wait(.0005)
                            -- local ohTable1 = {
                            -- 	["Victim"] = v,
                            -- 	["Type"] = "Light",
                            -- 	["VictimPosition"] = v:FindFirstChild('HumanoidRootPart').Position,
                            -- 	["LocalInfo"] = {
                            -- 		["Flying"] = false
                            -- 	},
                            -- 	["CurrentLight"] = 6,
                            -- 	["CurrentLightCombo"] = 1,
                            -- 	["CurrentHeavy"] = 6,
                            -- 	["AnimSet"] = "Android17"
                            -- }
                            -- game:GetService("ReplicatedStorage").Events.TryAttack:FireServer(ohTable1)
                            
                        end
                    end
                end
            end

        end
    end)

elseif game.PlaceId == 6812437958 then 


    local tab = window:CreateTab(gameName)
    local beyblade = tab:CreateSector('Cheats','left')

    getgenv().copybey = false
    local function getexploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getscriptenvs and "Calamari") or
            (unit and not syn and "Unit") or
            (OXYGEN_LOADED and "Oxygen U") or
            (IsElectron and "Electron") or
            ("Unsupported")
      
        return exploit
    end
    local mt = getrawmetatable(game)
    local namecall = mt.__namecall
    if make_writeable then make_writeable(mt) end 
    if getexploit() == 'Krnl' or setreadonly then 
        setreadonly(mt,false)
    end
    local xtra = ''
    local oldind = mt.__index; 
    local yYes,nNo = pcall(function()
        mt.__namecall = newcclosure(function(self,...)
            if  checkcaller() and getnamecallmethod() == 'FireServer' and tostring(self) == 'spawnEvent' and getgenv().copybey == true then --// checkcaller -- not checkcaller() and
                local args = {...}
                return
            end
            return namecall(self,...)
        end)
    end)
    getgenv().Players = {}
    for _,v in next, game.Players:GetChildren() do 
        if v:IsA('Player') then table.insert(getgenv().Players,v.Name) end
    end
    getgenv().selectedPlayer = ''
    local beycopy = beyblade:AddDropdown("Player Bey Copy", getgenv().Players, "", false, function(dropdownv)
        getgenv().selectedPlayer = dropdownv -- could put selectedplayer inside Players Table
        --PlayerTP:updateText(getgenv().selectedPlayer)
    end)

    beyblade:AddButton('Spawn',function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohInstance1 = game.Players.LocalPlayer.Character
        local ohInstance2 = workspace[getgenv().selectedPlayer].beyPreview.Base
        local ohInstance3 = workspace[getgenv().selectedPlayer].beyPreview.Weight
        local ohInstance4 = workspace[getgenv().selectedPlayer].beyPreview.Tip

        game:GetService("ReplicatedStorage").Events.spawnEvent:FireServer(ohInstance1, ohInstance2, ohInstance3, ohInstance4)
    end)
    beyblade:AddButton('crash server',function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        repeat 
            task.wait()
            local ohInstance1 = game.Players.LocalPlayer.Character
            local ohInstance2 = game.Players.LocalPlayer.Character.beyPreview.Base
            local ohInstance3 = game.Players.LocalPlayer.Character.beyPreview.Weight
            local ohInstance4 = game.Players.LocalPlayer.Character.beyPreview.Tip
    
            game:GetService("ReplicatedStorage").Events.spawnEvent:FireServer(ohInstance1, ohInstance2, ohInstance3, ohInstance4)
        until (1 == 2)

    end)
    game.Players.PlayerAdded:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        beycopy:Add(xchild.Name)
    end)
    game.Players.PlayerRemoving:Connect(function(xchild)
        getgenv().Players = {}
        for _,dChild in pairs(game.Players:GetChildren()) do 
            if dChild:IsA('Player') then 
                table.insert(getgenv().Players,dChild.Name)
            end
        end
        beycopy:Remove(xchild.Name)
    end)


elseif game.PlaceId == 9380307595 then 
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')



elseif game.PlaceId == 7162704734 then -- fighting game 
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')

    getgenv().fightlocalgame = {
        trinketesp = false;
        showinvisibletrinkets = false;
        mobesp = false;
    }
    getgenv().CreateTrinketEsp = function(v) 
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                local vect,onscreen = cam:worldToViewportPoint(v.Position)
                local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                
                if onscreen and getgenv().fightlocalgame['trinketesp'] == true then 
                    sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,1)
                    if getgenv().fightlocalgame['showinvisibletrinkets'] == false then 
                        if v.Transparency == 0 then 
                            sectionesp.Visible = true
                        elseif v.Transparency == 1 then
                            sectionesp.Visible = false
                        end
                    else
                        sectionesp.Visible = true
                    end


                    sectionesp.Text = 'Trinket\nDistance: '..math.floor(distance)
                elseif getgenv().fightlocalgame['trinketesp'] == false then 
                    sectionesp:Remove()
                else

                    sectionesp.Visible = false
                end
                if getgenv().destroy == true then 
                    sectionesp:Remove()
                end
            end)
        end
        coroutine.wrap(updPosition)()
    end 
    sector:AddToggle("Trinket ESP", false, function(xstate)
        getgenv().fightlocalgame['trinketesp'] = xstate
        for _,v in next, DIR:GetChildren() do 
            if xstate == true then 
                getgenv().CreateTrinketEsp(v)
            end
        end
    end)
    sector:AddToggle("Show Invisible Trinkets", false, function(xstate)
        getgenv().fightlocalgame['showinvisibletrinkets'] = xstate
    end) -- show if showing function something else showing for a sector or toggle etc
    sector:AddToggle("Mob ESP", false, function(xstate)
        getgenv().fightlocalgame['mobesp'] = xstate
    end)




    local DIR = game:GetService("Workspace").Folder
    for _,v in next, DIR:GetChildren() do 
        if getgenv().fightlocalgame['trinketesp'] == true then 
            getgenv().CreateTrinketEsp(v)
        end
    end
    

    workspace.Folder.ChildAdded:Connect(function(xchild)
        getgenv().CreateTrinketEsp(xchild)
    end)


    local lp = game.Players.LocalPlayer
    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv().DefaultEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        local esp = Drawing.new('Text')
        esp.Visible = false
        esp.Center = true 
        esp.Outline = true 
        esp.Font = 2 
        esp.Size = 13
        esp.Color = Color3.new(5,0,0)
        esp.Text = 'SEXY'
    
        -- local function upd()
        --     local c 
        --     c = game:GetService('RunService').RenderStepped:Connect(function()
        --         task.wait()
        --         if v.Character and v~= game.Players.LocalPlayer  and v.Character:FindFirstChild('HumanoidRootPart') then 
        --             local espv,onscreen = workspace.CurrentCamera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
    
        --             if onscreen and getgenv().playeresp == true then 
        --                 esp.Position = Vector2.new(espv.X,espv.Y ) + Vector2.new(0,1)
        --                 if getgenv().streamermode == false then 
        --                     esp.Text = v.Name
        --                 else
        --                     esp.Text = v.Name:sub(1,2)..'cummybuttermilk'
        --                 end
    
        --                 if getgenv().playeresp == true then esp.Visible = true end
                     
    
        --             else
        --                 esp.Visible = false
        --             end
    
        --         else
        --             if game.Players:FindFirstChild(v.Name) == nil then c:Disconnect() end
        --             esp.Visible = false
        --         end
        --     end)
        -- end
    
    
        local tracer = Drawing.new('Line')
        tracer.Visible = false
        tracer.Color = Color3.new(1,0,0)
        tracer.Thickness = 1 
        tracer.Transparency = 1 
        
        
        local box_o = Drawing.new('Square')
        box_o.Visible = false
        box_o.Color = Color3.new(0,0,0)
        box_o.Thickness = 2
        box_o.Transparency =1 
        box_o.Filled = false
        
        local box = Drawing.new('Square')
        box.Visible = false
        box.Color = Color3.new(1,0,0)
        box.Thickness = 1.5
        box.Transparency =1 
        box.Filled = false
        
        local hb_o = Drawing.new('Square')
        hb_o.Visible = false
        hb_o.Color = Color3.new(0,0,0)
        hb_o.Thickness = 1
        hb_o.Transparency =1 
        hb_o.Filled = false
        
        local hb = Drawing.new('Square')
        hb.Visible = false
        hb.Color = Color3.new(1,0,0)
        hb.Thickness = 1
        hb.Transparency =1 
        hb.Filled = true
        local health = Drawing.new('Text')
        health.Visible = false
        local distancex = Drawing.new('Text')
        distancex.Visible = false
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            cam = workspace.CurrentCamera
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer.Character and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv().playeresp and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v and v:FindFirstChild('Head') and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer.Character  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.HumanoidRootPart.Position)
                    
                    local vroot = v.HumanoidRootPart
                    local head = v.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv().playeresp and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))
    
    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end
    
                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true
    
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,1)
                        esp.Text = '['..v.Character.Humanoid.Health..'/'..v.Character.Humanoid.MaxHealth..']'..v.Name
                        if getgenv().playeresp == true then esp.Visible = true end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true  then 
                    xkeeprunning:Disconnect()
                    task.wait(1)
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)
    
    end
    for _,v in next, workspace.Live:GetChildren() do 
        if not game.Players:FindFirstChild(v.Name) then 
            getgenv().DefaultEsp(v)
        end
    end
    workspace.Live.ChildAdded:Connect(function(xchild)
        if not game.Players:FindFirstChild(xchild.Name) then 
            getgenv().DefaultEsp(xchild)
        end
    end)









elseif game.PlaceId == 6678877691 then -- zo
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')

    getgenv().zo1zo = {
        autoparry = true;
        distance = 0;
        connections = {}
    }

    getgenv().autoparryconnections = getgenv().autoparryconnections or {}

    for _,v in next,getgenv().autoparryconnections do 
        v:Disconnect()
        print('Disconnected function index, '.._)
    end

    sector:AddToggle('AutoParry',true,function(xstate)
        getgenv().zo1zo['autoparry'] = xstate 
    end)

    sector:AddSlider("Distance", 0, 0, 100, 1, function(State)
        getgenv().zo1zo['distance'] = State
    end)

    local function detect(v,dect)
        local x = false
        if v:FindFirstChild('Humanoid') then 
            for i,anim in pairs(v.Humanoid:GetPlayingAnimationTracks()) do 
                if anim.Animation.AnimationId == dect then
                    x =  true
                end
            end
        end

        return x
    end
     

    getgenv().parry = function()
        task.spawn(function()
            pcall(function()
                print('parry')
                local inputManager = game:GetService('VirtualInputManager')
                local m = game.Players.LocalPlayer:GetMouse();
                inputManager:SendMouseButtonEvent(m.X,m.Y,1,true,game,0)
                task.wait(.2)
                inputManager:SendMouseButtonEvent(m.X,m.Y,1,false,game,0)
            end)
        end)
    end

    getgenv().ParryAct = function(v)

        if not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then return end
        if (v:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude > getgenv().zo1zo['distance'] then return end

        local cancelAll = false 



        if detect(v,'rbxassetid://6678919174') then -- sword swing 1
            print('swung')
            task.wait(.2)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6678919949') then -- sword swing 1
            task.wait(.2)
            getgenv().parry()
        end
        


        -- rbxassetid://10894792030
        -- rbxassetid://6708118912
        -- SPEARS

        if detect(v,'rbxassetid://6708118912') then --  1
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6835409260') then --  2
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6708121991') then --  3
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6708121121') then --  4
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10894792030') then -- 1 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10894797599') then -- 2 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10894802358') then -- 3 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10894812313') then -- 4 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end


        --TANTO
        if detect(v,'rbxassetid://10895051471') then -- 1 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10895055618') then -- 2 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10895060290') then -- 3 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10895066920') then -- 4 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        

        -- 2 = "rbxassetid://7845695236" -- one hand
        -- 3 = "rbxassetid://7845696985" -- one hand
        -- 4 = "rbxassetid://7845696360" -- one hand
        -- 1 = "rbxassetid://7845695759" -- one hand


        if detect(v,'rbxassetid://7845695759') then --  1
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://7845695236') then --  2
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://7845696985') then --  3
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://7845696360') then --  4
            task.wait(.1)
            getgenv().parry()
        end


        -- SWORD

        if detect(v,'rbxassetid://6678908798') then --  1
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6678909967') then --  2
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6678913068') then --  3
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://6678914641') then --  4
            task.wait(.1)
            getgenv().parry()
        end


        if detect(v,'rbxassetid://10845243083') then -- 1 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10845245059') then -- 2 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10845246818') then -- 3 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        if detect(v,'rbxassetid://10845248893') then -- 4 - 2 hand
            task.wait(.1)
            getgenv().parry()
        end
        


    end

    for _,v in next, game:GetService('Players'):GetChildren() do 
        if v ~= game.Players.LocalPlayer then 
            workspace:WaitForChild(v.Name) 
            local workChar = workspace:WaitForChild(v.Name) 
            local connection; connection = v.Character:WaitForChild('Humanoid').AnimationPlayed:Connect(function(anim)
                getgenv().ParryAct(workChar)
            end)
            table.insert(getgenv().autoparryconnections,connection)
        end
    end
    game:GetService('Players').ChildAdded:Connect(function(xchild)
        if v ~= game.Players.LocalPlayer then
            workspace:WaitForChild(v.Name) 
            local workChar = workspace:WaitForChild(v.Name) 
            local connection; connection = v.Character:WaitForChild('Humanoid').AnimationPlayed:Connect(function(anim)
                getgenv().ParryAct(workChar)
            end)
            table.insert(getgenv().autoparryconnections,connection)
        end
    end)


elseif game.PlaceId == 6679968919 then -- fly race
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')
    getgenv().fly1race = {
        autofarm = false;
        loops = 0;
    }
    sector:AddToggle('Auto Farm',false,function(xstate)
        getgenv().fly1race['autofarm'] = xstate
    end)
    sector:AddSlider("Amount of times to loop", 0, 0, 1000, 1, function(State)
        getgenv().fly1race['loops'] = State
    end)


    while task.wait() do 
        if getgenv().loopsUnload == true then print('simulator break') break end
        if getgenv().fly1race['autofarm']  == true then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =game:GetService("Workspace").Worlds['4']['Launch'].CFrame
            task.wait(2)   
            local ticks = 0
            repeat
                task.wait(0.0001)
                -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                ticks+=1
            firetouchinterest(
                game.Players.LocalPlayer.Character['HumanoidRootPart'],
                game:GetService("Workspace").Worlds['4']['Launch'],
            0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").LandSpots4.End.CFrame
            until ticks > getgenv().fly1race['loops']
        end
    end
elseif game.PlaceId == 914010731 then --  ro ghoul
    local tab = window:CreateTab('Ro Ghoul')
    local Configuration = window:CreateTab('Configuration')
    local sector = tab:CreateSector('Cheats','left')
    local othercheats = tab:CreateSector('Cheats','right')
    game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
    getgenv().roghoulsettings = {
        farmables = {
            'Humans';
            'Investigators';
            'Aogiri';
        };
        farmingtarget = '';
        farming = false;
        etofarm = false ;
        nishkifarm = false ;
        amonfarm = false ;
        gykatfarm = false ;
        distance = 7;
        tweenspeed = 0.5;
        autoabsorb = true;
        playerx = 0;
        playery = 0 ;
        playerz = 0;
        hasntstarted = true;
        FinalChoice = nil;
        autotrainer = false;
        intervalteleport = false;
        division = 0;
        delay = 0;
        usee = false;
        user = false;
        usef = false;
        usec = false;
        action = 'canquest';
        stages = {
            'One';
            'Two';
            'Three';
            'Four';
            'Five';
            'Six';
        };
        activestage = '';
        autoquest = false;
        isquesting = false;
        tscode = '';
        calledagain =false;
        callednotice =false;
        anotherexecutedwhentweening = false;
        cancelcurrenttween = false;
        tweens = {};
        click = true;
        dontidle = false;
        autoinstakill = false;
    }
    getgenv().divious_teleport = function(info)

        pcall(function()
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true
            local position = info.distance
    
            local division = info.division 
        
            local tweening = info.tween 
            local ToDivideX = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.X - position.X) / division
            local ToDivideY = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.Y - position.Y) / division
            local ToDivideZ = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.Z - position.Z) / division
            -- print('To Divide = '..ToDivide)
            -- print('Player X = '..game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.X)
            -- print('Distance Space = '..tostring(Distance_In_Space))
            -- print('Minused Distance = '..(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.X - position.X))
            for i=1, division do -- Our distance - X / i (X)
        

        
                if tweening == false and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    local PlayerX = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.X
                    local PlayerY = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
                    local PlayerZ = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame.Z
                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(PlayerX-ToDivideX,PlayerY-ToDivideY,PlayerZ-ToDivideZ) 
                end
                task.wait(info.delay)
            end
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
        end)


    end
    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
    local get = setmetatable({}, {
        __index = function(a, b)
            return game:GetService(b) or game[b]
        end
    })
    local findobj, findobjofclass, waitforobj, fire, invoke = get.FindFirstChild, get.FindFirstChildOfClass, get.WaitForChild, Instance.new("RemoteEvent").FireServer, Instance.new("RemoteFunction").InvokeServer    
    sector:AddDropdown("Targets", getgenv().roghoulsettings['farmables'], "", false, function(dropdownv)
        getgenv().roghoulsettings['farmingtarget'] = dropdownv
    end)
    sector:AddToggle('Auto Farm',false,function(xstate)
        getgenv()['roghoulsettings']['farming'] = xstate
    end)
    sector:AddToggle('Auto Quest',false,function(xstate)
        getgenv()['roghoulsettings']['autoquest'] = xstate
    end)
    sector:AddToggle('Auto Insta Kill',false,function(xstate)
        getgenv()['roghoulsettings']['autoinstakill'] = xstate
    end)
    -- sector:AddSlider("Distance", 0, 5, 10, 5, function(State)
    --     getgenv().roghoulsettings['distance'] = State
    -- end)
    sector:AddToggle('Teleport Intervals',false,function(xstate)
        getgenv()['roghoulsettings']['intervalteleport'] = xstate
    end)
    sector:AddSlider("Intervals", 0, 0, 20, 1, function(State)
        getgenv().roghoulsettings['division'] = State
    end)
    sector:AddSlider("Delay", 0, 0, 15, 5, function(State) -- Delau
        getgenv().roghoulsettings['delay'] = State
    end)
    sector:AddSlider("Tween Speed", 0, 0.5, 300, 5, function(State)
        getgenv().roghoulsettings['tweenspeed'] = State
    end)
    sector:AddSeperator('-')
    sector:AddToggle('Farm Eto',false,function(xstate)
        getgenv()['roghoulsettings']['etofarm'] = xstate
    end)
    sector:AddToggle('Farm Nishki',false,function(xstate)
        getgenv()['roghoulsettings']['nishkifarm'] = xstate
    end)
    sector:AddToggle('Farm Amon',false,function(xstate)
        getgenv()['roghoulsettings']['amonfarm'] = xstate
    end)
    sector:AddToggle('Farm Gyakusatsu',false,function(xstate) 
        getgenv()['roghoulsettings']['gykatfarm'] = xstate
    end)
    sector:AddSeperator('-')
    sector:AddToggle('Auto Absorb',true,function(xstate)
        getgenv()['roghoulsettings']['autoabsorb'] = xstate
    end)
    sector:AddSlider("Player X", -25, 0, 25, 5, function(State)
        getgenv().roghoulsettings['playerx'] = State
    end)
    sector:AddSlider("Player Y", -25, 0, 30, 5, function(State)
        getgenv().roghoulsettings['playery'] = State
    end)
    sector:AddSlider("Player Z", -25, 0, 25, 5, function(State)
        getgenv().roghoulsettings['playerz'] = State
    end)
    sector:AddButton('Rejoin',function(xstate)
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)

    othercheats:AddToggle('Auto Trainer',false,function(xtstae)
        getgenv().roghoulsettings['autotrainer'] = xtstae
    end)
    othercheats:AddDropdown("Stages", getgenv().roghoulsettings['stages'], "", false, function(dropdownv)
        getgenv().roghoulsettings['activestage'] = dropdownv
    end)
    othercheats:AddToggle('Use E',false,function(xtstae)
        getgenv().roghoulsettings['usee'] = xtstae
    end)
    othercheats:AddToggle('Use R',false,function(xtstae)
        getgenv().roghoulsettings['user'] = xtstae 
    end)
    othercheats:AddToggle('Use F',false,function(xtstae)
        getgenv().roghoulsettings['usef'] = xtstae
    end)
    othercheats:AddToggle('Use C',false,function(xtstae)
        getgenv().roghoulsettings['usec'] = xtstae
    end)
    othercheats:AddToggle('Click',true,function(xtstae)
        getgenv().roghoulsettings['click'] = xtstae
    end)
    othercheats:AddButton('Attempt Insta Kill',function(xstate)
        local dir = game:GetService("Workspace").NPCSpawns
        for _,c in next, dir:GetChildren() do 
            for _,v in next,c:GetChildren() do 
                if v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then 
                    if isnetworkowner(v.PrimaryPart) then
                        pcall(function()
                            v:FindFirstChild('Head'):Destroy()
                        end)
                    end
                end 
            end

        end  
    end)
    game.Players.LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)

    -- foolio

    local function find(x)
        local found = false
        if game.Players.LocalPlayer.Character:FindFirstChild(x) then 
            -- found =  true
            -- print(x..' found')
        end
        return found
    end
    getgenv().GetClosestTarget = function()
        local oldSet = nil 
        local oldpos = nil
        local lookingFor = ''
        if getgenv().roghoulsettings['farmingtarget'] ==  'Humans' then lookingFor = 'Human' end 
        if getgenv().roghoulsettings['farmingtarget'] ==  'Investigators' then lookingFor = 'CCG' end 
        if getgenv().roghoulsettings['farmingtarget'] ==  'Aogiri' then lookingFor = 'Ghoul' end 
        if getgenv().roghoulsettings['isquesting'] == true then 
            local complete = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('CurrentQuest'):FindFirstChild('Complete')
            local quest = '';
            if complete:FindFirstChildWhichIsA('StringValue') then quest = complete:FindFirstChildWhichIsA('StringValue').Name end 
            if quest:find('Aogiri') then lookingFor = 'Ghoul' end
        end
        for _,v in next, workspace.NPCSpawns:GetChildren() do 
            if v.Name:find(lookingFor) and v:FindFirstChildWhichIsA('Model') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('Humanoid') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart') then 
                local target = v:FindFirstChildWhichIsA('Model')
                local targetroot = target:FindFirstChild('HumanoidRootPart')
                if oldSet == nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart') then 
                    getgenv()['roghoulsettings']['FinalChoice'] = v:FindFirstChildWhichIsA('Model')
                    -- if getgenv()['roghoulsettings']['FinalChoice'] ~= nil and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('Humanoid').Health >0 then 
                    -- else
                    --     getgenv()['roghoulsettings']['FinalChoice'] = nil
                    -- end
                    -- pcall(function()
                    oldSet = getgenv()['roghoulsettings']['FinalChoice']
                    oldpos = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position).Magnitude
                    -- end)

                elseif oldSet~=nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart')  then -- and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart')
                    --print('Already chosen')
                    if oldpos > (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position).Magnitude then 
                        getgenv()['roghoulsettings']['FinalChoice'] = v:FindFirstChildWhichIsA('Model')
                        -- if getgenv()['roghoulsettings']['FinalChoice'] ~= nil and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('Humanoid').Health >0 then 
                        -- else
                        --     getgenv()['roghoulsettings']['FinalChoice'] = nil
                        -- end
                        -- pcall(function()
                        print('Swapped distance '..oldpos)
                        oldSet = getgenv()['roghoulsettings']['FinalChoice']
                        oldpos = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position)
                        print('To '..oldpos)
                        -- end)
                        
                    end
                end



            end
        end
    end
    local function setaction(x)
        print(' prev: '..getgenv().roghoulsettings['action']..' new: '..x)
        -- if getgenv().roghoulsettings['dontidle'] == false then 
        --     print(getgenv().roghoulsettings['action']..' idle: '..tostring(getgenv().roghoulsettings['dontidle'])..' A')
        --     getgenv().roghoulsettings['action'] = x
        --     getgenv().roghoulsettings['dontidle'] = false;
        -- elseif getgenv().roghoulsettings['action'] == 'tweening' and getgenv().roghoulsettings['dontidle'] == true and x == 'idle' then 
        --     print(getgenv().roghoulsettings['action']..' idle: '..tostring(getgenv().roghoulsettings['dontidle'])..' B')
        --     getgenv().roghoulsettings['dontidle'] = false;
        -- end
        getgenv().roghoulsettings['action'] = x
    end
    local function tweenpoint(point,obj)
        local savedaction = getgenv().roghoulsettings['action']
        if savedaction == 'tweening' then print('already tweening'); getgenv().roghoulsettings['anotherexecutedwhentweening'] = true end
        print('called')
        getgenv().roghoulsettings['action'] = 'tweening'
        local function holdtween()
            local rootpos = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position
            local dist = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position)
    
    
            local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
            TweenInfo.new(dist.Magnitude/getgenv()['roghoulsettings']['tweenspeed'], Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{CFrame = point})   
            tween:Play()
            table.insert(getgenv().roghoulsettings['tweens'],tween)
            local completedtween = false 
            tween.Completed:Connect(function() completedtween =true end)
            local wascancelledduetonodile = false;
            local differentChoice = false
            local registedchoice = getgenv()['roghoulsettings']['FinalChoice']
            local rname = registedchoice.Name
            local function getState()
                local cancel = false 
                if getgenv()['roghoulsettings']['farming'] == false then cancel = true end 
                if not obj:FindFirstChild('HumanoidRootPart') then cancel = true end 
                if not obj then cancel = true end 
                if getgenv().roghoulsettings['anotherexecutedwhentweening'] == true then print('another executed') getgenv().roghoulsettings['anotherexecutedwhentweening'] = false; cancel = true end
                -- if getgenv().roghoulsettings['dontidle'] ==true then 
                --     getgenv().roghoulsettings['dontidle'] = false 
                --     wascancelledduetonodile = true;
                --     cancel = true;
                -- end
                return cancel
            end
            local holdState = getState()
    
    
            local hasalreadychecked = false;
            
    
    
    
    
            repeat 
                task.wait(0.01)
                holdState = getState()
                -- if registedchoice ~= getgenv()['roghoulsettings']['FinalChoice'] then differentChoice = true end;
                -- if hasalreadychecked == false then 
                --     hasalreadychecked = true
                --     -- task.delay(2,function()
                --     --     getgenv().GetClosestTarget()
                --     -- end)
                -- end
            until completedtween == true or holdState == true or differentChoice == true
            if holdState== true then 
                tween:Cancel()
            end
            setaction('canquest')
        end
        local rootpos = game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position
        local dist = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - obj:FindFirstChild('HumanoidRootPart').Position)


        local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
        TweenInfo.new(dist.Magnitude/getgenv()['roghoulsettings']['tweenspeed'], Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{CFrame = point})   
        tween:Play()
        table.insert(getgenv().roghoulsettings['tweens'],tween)
        local completedtween = false 
        tween.Completed:Connect(function() completedtween =true end)
        local wascancelledduetonodile = false;
        local differentChoice = false
        local registedchoice = getgenv()['roghoulsettings']['FinalChoice']
        local rname = registedchoice.Name
        local function getState()
            local cancel = false 
            if getgenv()['roghoulsettings']['farming'] == false then cancel = true end 
            if not obj:FindFirstChild('HumanoidRootPart') then cancel = true end 
            if not obj then cancel = true end 
            if getgenv().roghoulsettings['anotherexecutedwhentweening'] == true then print('another executed') getgenv().roghoulsettings['anotherexecutedwhentweening'] = false; cancel = true end
            if registedchoice ~= getgenv()['roghoulsettings']['FinalChoice'] then differentChoice = true end -- ;cancel = true
            -- if getgenv().roghoulsettings['dontidle'] ==true then 
            --     getgenv().roghoulsettings['dontidle'] = false 
            --     wascancelledduetonodile = true;
            --     cancel = true;
            -- end
            return cancel
        end
        local holdState = getState()


        local hasalreadychecked = false;
        




        repeat 
            task.wait(0.01)
            holdState = getState()
            -- if registedchoice ~= getgenv()['roghoulsettings']['FinalChoice'] then differentChoice = true end;
            -- if hasalreadychecked == false then 
            --     hasalreadychecked = true
            --     -- task.delay(2,function()
            --     --     getgenv().GetClosestTarget()
            --     -- end)
            -- end
            -- print('In Loop')
        until completedtween == true or holdState == true or differentChoice == true
        if holdState== true then 
            print('HoldState is true')
            tween:Cancel()
            setaction('canquest')
            --return holdState
        end
        if differentChoice == true then 
            print('Different Choice, '..rname..' new = '..getgenv()['roghoulsettings']['FinalChoice'].Name)
            tween:Cancel()
            setaction('canquest')
            -- tween:Cancel()
           -- holdtween()
        end
        for _,v in next, getgenv().roghoulsettings['tweens'] do 
            --if v == tween then table.remove(getgenv().roghoulsettings['tweens'],_) break end
        end

        -- if differentChoice == true then 
        --     tween:Cancel()
        --     local dist = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position)
        --     local tween_new = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
        --     TweenInfo.new(dist.Magnitude/getgenv()['roghoulsettings']['tweenspeed'], Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{CFrame = point})   
        --     tween_new:Play()
        --     local completednew = false 
        --     tween_new.Completed:Connect(function() completednew =true end)

        --     repeat 
        --         task.wait(0.01)
        --         holdState = getState()
        --         if registedchoice ~= getgenv()['roghoulsettings']['FinalChoice'] then differentChoice = true end;
        --     until completednew == true or holdState == true or differentChoice == true
        --     if holdState== true or differentChoice == true then 
        --         tween_new:Cancel()
        --     end
        -- end
        -- while task.wait() do 
        --     if not find('HumanoidRootPart') then tween:Cancel() end 
        --     if getgenv()['roghoulsettings']['farming'] == false then tween:Cancel() end 
        --     -- if completed then break end
        --     if completedtween == true then 
        --         break
        --     end
        -- end
        -- game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = point
        --print('broken tween')
        -- if getgenv().roghoulsettings['calledagain'] == false  then 
        --     if getgenv().roghoulsettings['callednotice'] == true then 
        --         getgenv().roghoulsettings['callednotice'] = false
        --         getgenv().roghoulsettings['action'] = 'tweening'
        --     else
        --         getgenv().roghoulsettings['callednotice'] = true
        --         getgenv().roghoulsettings['action'] = 'idle'
        --     end
        -- end
        -- if getgenv().roghoulsettings['dontidle'] == true then 

        -- else
        --     getgenv().roghoulsettings['action'] = 'idle'
        -- end
        -- if differentChoice == false then 
        --     getgenv().roghoulsettings['action'] = 'idle'
        -- end
        -- getgenv().roghoulsettings['anotherexecutedwhentweening'] = false;


        -- if getgenv().roghoulsettings['anotherexecutedwhentweening'] == true and saveaction == 'tweening' then 
        --     getgenv().roghoulsettings['action'] = 'idle'
        -- else
        --     getgenv().roghoulsettings['action'] = 'idle'
        -- -- elseif 
        -- end

        getgenv().roghoulsettings['anotherexecutedwhentweening'] = false;
        -- if wascancelledduetonodile == false then 
        --     setaction('idle')
        -- end
        -- local foundself = false
        -- for _,v in next, getgenv().roghoulsettings['tweens'] do 
        --     if type(v) == 'table' and v['caughtlacking'] == tween then 
        --         foundself = true;
        --     end
        -- end
        -- if foundself == false then 
        --     setaction('idle')
        -- end
        if differentChoice == false then 
           
        end --ndebug
        if holdState == false and differentChoice == false then 
            setaction('idle')
        end

        -- getgenv().roghoulsettings['action'] = 'idle'
        
        return holdState
    end
    local function getclosest()
        local oldSet = nil 
        local oldpos = nil
    end 
    local function findobj(v,x)
        if not v:FindFirstChild(x) then 
            return false
        else
            return true
        end
    end
    local key,trainers = nil,nil
    repeat 
        for i,v in pairs(getgc(true)) do
            if not key and type(v) == "function" and getinfo(v).source:find(".ClientControl") then
                for i2,v2 in pairs(getconstants(v)) do
                    if v2 == "KeyEvent" then
                        local keyfound = getconstant(v, i2 + 1)
                        if #keyfound >= 100 then
                            key = keyfound
                            break
                        end
                    end
                end
            elseif type(v) == "table" and ((table.find(v, "(S1) Kureo Mado") and team == "CCG") or (table.find(v, "(S1) Ken Kaneki"))) then
                trainers = v
            end
        end
        wait()
    until key
    local function pressKey(topress)
        if game.Players.LocalPlayer.Character:FindFirstChild('Remotes') then 
            fire(game.Players.LocalPlayer.Character:FindFirstChild('Remotes'):FindFirstChild('KeyEvent'), key, topress, "Down", game.Players.LocalPlayer:GetMouse().Hit, nil, workspace.Camera.CFrame)
        end
    end
    local function getquest(x)
        getgenv().roghoulsettings['action'] = 'getting quest'
        game:GetService("Workspace").CCGBuilding:FindFirstChild('Yoshitoki'):FindFirstChild('HumanoidRootPart')
        local obj = game:GetService("Workspace"):FindFirstChild('TrainerModel'):FindFirstChild('ClickIndicator')
        if x.type == 'CCG' then 
            obj = game:GetService("Workspace").CCGBuilding:FindFirstChild('Yoshitoki'):FindFirstChild('TaskIndicator')
        else
            obj = game:GetService("Workspace").Anteiku:FindFirstChild('Yoshimura'):FindFirstChild('TaskIndicator')
        end
        local dist = (game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position - obj.Position)
        local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
        TweenInfo.new(dist.Magnitude/getgenv()['roghoulsettings']['tweenspeed'], Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{CFrame = obj.CFrame})   
        tween:Play()
        local completedtween = false 
        tween.Completed:Connect(function() completedtween =true end)
        local function getState()
            local cancel = false 
            if getgenv()['roghoulsettings']['farming'] == false then cancel = true end 
            if not obj then cancel = true end 
            return cancel
        end
        local holdState = getState()
        repeat 
            task.wait(0.01)
            holdState = getState()
        until completedtween == true or holdState == true
        if holdState == true then 
            tween:Cancel()
        end
        task.delay(6,function()
            if getgenv().roghoulsettings['action'] == 'getting quest' then 
                getgenv().roghoulsettings['action'] = 'canquest'
                getgenv().roghoulsettings['isquesting'] = true
            end
        end)
        fireclickdetector(obj.ClickDetector)
        task.wait(1)
        game:GetService("ReplicatedStorage").Remotes.Yoshitoki.Task:InvokeServer()
        game:GetService("ReplicatedStorage").Remotes.Yoshimura.Task:InvokeServer()
        -- local GetTasksButton = nil
        -- for _,v in next, game.Players.LocalPlayer.PlayerGui:GetChildren() do 
        --     if v:FindFirstChild('Back') and v:FindFirstChild('Back'):FindFirstChild('Tasks') then 
        --         GetTasksButton = v:FindFirstChild('Back'):FindFirstChild('TaskFrame'):FindFirstChild('TaskButton')
        --     end
        -- end
        -- if GetTasksButton then 
        --     firesignal(GetTasksButton.MouseButton1Click)
        -- end
        
        getgenv().roghoulsettings['action'] = 'canquest'
        getgenv().roghoulsettings['isquesting'] = true
    end
    local function getaction()
        return getgenv().roghoulsettings['action']
    end
    -- get key function

    local function toquest()
        
    end

    Configuration:CreateConfigSystem()
    task.spawn(function()
        while task.wait(0.01) do 
            if getgenv().loopsUnload == true then print('ro ghoul break') break end
            local level = tonumber(game.Players.LocalPlayer:WaitForChild('PlayerFolder'):WaitForChild('Stats'):WaitForChild('Level').Value)
            -- local FinalChoice = nil 
            local typeofnpc = 'humanoid'
            local oldSet = nil 
            local oldpos = nil
            local typeweapon = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('Customization').Team.Value
            if typeweapon == 'CCG' then typeweapon='Quinque' end 
            if typeweapon == 'Ghoul' then typeweapon='Kagune' end 
            if getgenv().roghoulsettings['farming'] == true then 
                if not game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >0 then 
                    -- print('waiting for quinque')
                    print('waiting for '..string.lower(typeweapon))
                    pressKey(getgenv().roghoulsettings['activestage'])
                    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) 
                    if getgenv().roghoulsettings['usec'] == true then 
                        pressKey('C')
                    end
                    -- task.wait(3)
                    print(string.lower(typeweapon)..' active')
                    -- print('quinque active')
                end
            end
            if getaction() == 'canquest' or getaction() == 'usequest' and getgenv()['roghoulsettings']['hasntstarted'] == true  then 

                if getgenv().roghoulsettings['farmingtarget'] ~= '' then 
                    local lookingFor = ''
                    if getgenv().roghoulsettings['farmingtarget'] ==  'Humans' then lookingFor = 'Human' end 
                    if getgenv().roghoulsettings['farmingtarget'] ==  'Investigators' then lookingFor = 'CCG' end 
                    if getgenv().roghoulsettings['farmingtarget'] ==  'Aogiri' then lookingFor = 'Ghoul' end 
                    if getgenv().roghoulsettings['isquesting'] == true then 
                        local complete = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('CurrentQuest'):FindFirstChild('Complete')
                        local quest = '';
                        if complete:FindFirstChildWhichIsA('StringValue') then quest = complete:FindFirstChildWhichIsA('StringValue').Name end 
                        if quest:find('Aogiri') then lookingFor = 'Ghoul' end
                    end
                    for _,v in next, workspace.NPCSpawns:GetChildren() do 
                        if v.Name:find(lookingFor) and v:FindFirstChildWhichIsA('Model') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('Humanoid') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart') then 

                            if oldSet == nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart') then 
                                getgenv()['roghoulsettings']['FinalChoice'] = v:FindFirstChildWhichIsA('Model')
                                -- if getgenv()['roghoulsettings']['FinalChoice'] ~= nil and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('Humanoid').Health >0 then 
                                -- else
                                --     getgenv()['roghoulsettings']['FinalChoice'] = nil
                                -- end
                                -- pcall(function()
                                oldSet = getgenv()['roghoulsettings']['FinalChoice']
                                oldpos = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                -- end)

                            elseif oldSet~=nil and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart')  then -- and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart')
                                --print('Already chosen')
                                if oldpos > (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position).Magnitude then 
                                    getgenv()['roghoulsettings']['FinalChoice'] = v:FindFirstChildWhichIsA('Model')
                                    -- if getgenv()['roghoulsettings']['FinalChoice'] ~= nil and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('Humanoid').Health >0 then 
                                    -- else
                                    --     getgenv()['roghoulsettings']['FinalChoice'] = nil
                                    -- end
                                    -- pcall(function()
                                    print('Swapped distance '..oldpos)
                                    oldSet = getgenv()['roghoulsettings']['FinalChoice']
                                    oldpos = (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position)
                                    print('To '..oldpos)
                                    -- end)
                                    
                                end
                            end



                        end
                    end
                end
                if getgenv()['roghoulsettings']['nishkifarm'] == true and level >= 250 then 
                    typeofnpc = 'boss'
                    local quicksub = 'Nishiki'
                    for _,v in next, workspace.NPCSpawns:GetChildren() do 
                        if v.Name == 'BossSpawns' then 
                            for k,c in next, v:GetChildren() do 
                                if c.Name:find(quicksub) then 
                                    print(c.Name)
                                    getgenv()['roghoulsettings']['FinalChoice'] = c
                                end
                            end
                        end
                    end
                end
                if getgenv()['roghoulsettings']['amonfarm'] == true and level >= 750 then 
                    typeofnpc = 'boss'
                    local quicksub = 'Amon'
                    for _,v in next, workspace.NPCSpawns:GetChildren() do 
                        if v.Name == 'BossSpawns' then 
                            for k,c in next, v:GetChildren() do 
                                if c.Name:find(quicksub) then 
                                    getgenv()['roghoulsettings']['FinalChoice'] = c
                                end
                            end
                        end
                    end
                end
                if getgenv()['roghoulsettings']['etofarm'] == true and level >= 1250 then 
                    typeofnpc = 'boss'
                    local quicksub = 'Eto'
                    for _,v in next, workspace.NPCSpawns:GetChildren() do 
                        if v.Name == 'BossSpawns' then 
                            for k,c in next, v:GetChildren() do 
                                if c.Name:find(quicksub) then 
                                    getgenv()['roghoulsettings']['FinalChoice'] = c
                                end
                            end
                        end
                    end
                end
                if getgenv()['roghoulsettings']['gykatfarm'] == true and level >= 1250 then 
                    typeofnpc = 'gykat'
                    local quicksub = 'Gy'
                    for _,v in next, workspace:GetChildren() do 
                        if v.Name == 'Gyakusatsu' then 
                            getgenv()['roghoulsettings']['FinalChoice'] = v
                        end
                    end
                end
            end
            local function gettypeofnpc()
                local hasfound = false
                local npctypetable = {'gykat','boss'}
                if table.find(npctypetable,typeofnpc) then 
                    hasfound = true 
                end
                return hasfound
            end
            task.spawn(function()
                if  typeofnpc~= 'gykat' and  getaction() == 'canquest' and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and getgenv()['roghoulsettings']['FinalChoice'] ~= nil and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart') and getgenv()['roghoulsettings']['hasntstarted'] == true and getgenv()['roghoulsettings']['farming'] == true  then 
                    getgenv()['roghoulsettings']['action'] = 'choosing'
                    if not game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >0 then 
                        -- print('waiting for quinque')
                        print('waiting for '..string.lower(typeweapon))
                        pressKey(getgenv().roghoulsettings['activestage'])
                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) 
                        if getgenv().roghoulsettings['usec'] == true then 
                            pressKey('C')
                        end 
                        -- task.wait(3)
                        print(string.lower(typeweapon)..' active')
                        -- print('quinque active')
                    end
                    local registedchoice = nil;
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart') then 
                        local dist = nil;
                        pcall(function()
                            dist =  (game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position)
                        end)
                        if dist == nil then 
                            getgenv()['roghoulsettings']['action'] = 'canquest';
                            return
                        end
                       

                        local results
                        if getgenv().roghoulsettings['intervalteleport'] == true then 
    
                            getgenv().divious_teleport{
                                distance = getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').CFrame * 
                                CFrame.new(
                                    getgenv()['roghoulsettings']['playerx'],
                                    getgenv()['roghoulsettings']['playery'],
                                    getgenv()['roghoulsettings']['playerz']
                                );
                                division = getgenv()['roghoulsettings']['division'];
                                delay = getgenv()['roghoulsettings']['delay'];
                                tween = false
                            }
    
                        else
                            
                            -- if typeofnpc == 'gykat' then 
                            --     local CFrame = workspace.Gyakusatsu:FindFirstChild():FindFirstChild('Spawn').CFrame * CFrame.new(0,-getgenv()['roghoulsettings']['playerz'],0) * CFrame.Angles(math.rad(90),0,0)
                            -- end

                            registedchoice = getgenv()['roghoulsettings']['FinalChoice']
                            results = tweenpoint(getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').CFrame *CFrame.new(getgenv()['roghoulsettings']['playerx'],getgenv()['roghoulsettings']['playery'],getgenv()['roghoulsettings']['playerz']),getgenv()['roghoulsettings']['FinalChoice'])
    
    
                            -- if not getgenv()['roghoulsettings']['FinalChoice'] or not getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart') then 
                            --     tween:Cancel()
                            -- end
                            --repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') or not getgenv()['roghoulsettings']['FinalChoice'] or completed == true--(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').Position).Magnitude < 10
                            
                        end
                        -- print('x')
                        -- task.spawn(function()
                        --     local brokenchoice =false
                        --     task.delay(0.1,function()
                        --         if typeofnpc ~='boss' then 
                        --             getgenv().GetClosestTarget()
                        --         end 
                        --     end)
                        --     repeat 
                        --         task.wait(.1)
                        --         -- if gettypeofnpc() == false then 
                        --         --     getgenv().GetClosestTarget()
                        --         -- end 
                        --         getgenv().GetClosestTarget() -- brokenchoice == false and
                        --         if  getgenv()['roghoulsettings']['FinalChoice'] ~= registedchoice and getgenv()['roghoulsettings']['action'] ~= 'idle'  then 
                        --             -- getgenv().roghoulsettings['anotherexecutedwhentweening'] = true;
                        --             -- getgenv().roghoulsettings['cancelcurrenttween'] = true;
                        --             --getgenv().roghoulsettings['dontidle'] = true
                        --             print('Changed Target')
                        --             registedchoice = getgenv()['roghoulsettings']['FinalChoice']

                        --             for _,v in next, getgenv().roghoulsettings['tweens'] do
                        --                 table.insert(getgenv().roghoulsettings['tweens'],{
                        --                     caughtlacking = v
                        --                 }) 
                        --                 -- pcall(function()
                        --                 --     v:Cancel()
                        --                 -- end)
                        --                 if v then 
                        --                     pcall(function()
                        --                         v:Cancel()
                        --                     end)
                        --                 end
                        --                 print('cancel tween') 
                        --                 table.remove(getgenv().roghoulsettings['tweens'],_)
                        --             end
                        --             -- if getgenv()['roghoulsettings']['FinalChoice'] and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart') then 
                                        
                        --             -- end
                                    
                        --             -- getgenv().roghoulsettings['anotherexecutedwhentweening'] = false;
                        --             -- getgenv().roghoulsettings['cancelcurrenttween'] = false;
                        --             -- repeat task.wait(); until getaction() == 'idle'
                        --             --brokenchoice = true 
                        --             -- getgenv().roghoulsettings['dontidle'] = false;
                        --         end
                        --     until getaction() == 'idle' --or swapped == true --brokenchoice == true
                        --     print('set to idle')
                        --     -- getgenv().roghoulsettings['dontidle'] =false;
                        -- end)



                        if results == true then 
                            getgenv()['roghoulsettings']['action'] = 'canquest'
                            getgenv().roghoulsettings['callednotice'] = false;
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                            
                            return
                        end
    
                        
                        if not game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >0 then 
                            -- print('waiting for quinque')
                            print('waiting for '..string.lower(typeweapon))
                            pressKey(getgenv().roghoulsettings['activestage'])
                            pressKey(getgenv().roghoulsettings['activestage'])
                            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) 
                            if getgenv().roghoulsettings['usec'] == true then 
                                pressKey('C')
                            end
                            -- task.wait(3)
                            print(string.lower(typeweapon)..' active')
                            -- print('quinque active')
                        end

                        -- if results == true then 
                        --     getgenv()['roghoulsettings']['action'] = 'canquest'
                        --     getgenv()['roghoulsettings']['hasntstarted'] = true
                        --     return
                        -- end
                        repeat task.wait(); getgenv().GetClosestTarget() until getaction() == 'idle' or getaction() == 'canquest'
                        if getaction() == 'canquest' then 
                            getgenv().roghoulsettings['callednotice'] = false;
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                        return end
                        
                        if getgenv()['roghoulsettings']['hasntstarted'] == false then
                            getgenv()['roghoulsettings']['action'] = 'canquest'
                            getgenv().roghoulsettings['callednotice'] = false;
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                        return end
                        getgenv()['roghoulsettings']['action'] = 'attack'
                        getgenv()['roghoulsettings']['hasntstarted'] = false



                        if registedchoice ~= getgenv()['roghoulsettings']['FinalChoice'] then 
                            getgenv()['roghoulsettings']['action'] = 'canquest'
                            getgenv().roghoulsettings['callednotice'] = false;
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                            return
                        end
                        task.spawn(function()
                            repeat task.wait(0.01) 
                                if getgenv()['roghoulsettings']['FinalChoice'] and getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >0  then 
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >0 then 
                                        -- print('waiting for quinque')
                                        print('waiting for '..string.lower(typeweapon))
                                        pressKey(getgenv().roghoulsettings['activestage'])
                                        pressKey(getgenv().roghoulsettings['activestage'])
                                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild(typeweapon) 
                                        if getgenv().roghoulsettings['usec'] == true then 
                                            pressKey('C')
                                        end
                                        -- task.wait(3)
                                        print(string.lower(typeweapon)..' active')
                                        -- print('quinque active')
                                    end
                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart').CFrame * 
                                    CFrame.new(
                                        getgenv()['roghoulsettings']['playerx'],
                                        getgenv()['roghoulsettings']['playery'],
                                        getgenv()['roghoulsettings']['playerz']
                                    )
                                    if getgenv().roghoulsettings['click'] then 
                                        task.delay(.1,function()
                                            pressKey('Mouse1')
                                        end)
                                    end
                                    -- CFrame.Angles(math.rad(90),0,0) upside down for gykatsu
                                    task.spawn(function()
                                        if getgenv().roghoulsettings['usee'] == true then 
                                            pressKey('E')
                                            task.wait(1)
                                        end
                                        if getgenv().roghoulsettings['user'] == true then 
                                            pressKey('R')
                                            task.wait(1)
                                        end
                                        if getgenv().roghoulsettings['usef'] == true then 
                                            pressKey('F')
                                            task.wait(1)
                                        end
                                    end)

                                    if getgenv()['roghoulsettings']['autoinstakill'] then 
                                        task.delay(.1,function()
                                            local dir = game:GetService("Workspace").NPCSpawns
                                            for _,c in next, dir:GetChildren() do 
                                                for _,v in next,c:GetChildren() do 
                                                    if v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then 
                                                        if isnetworkowner(v.PrimaryPart) then
                                                            pcall(function()
                                                                v:FindFirstChild('Head'):Destroy()
                                                            end)
                                                        end
                                                    end 
                                                end
                                    
                                            end  
                                        end)
                                    end

                                end
                                
                            until not getgenv()['roghoulsettings']['FinalChoice'] or not getgenv()['roghoulsettings']['FinalChoice']:FindFirstChild('HumanoidRootPart')
                            or getgenv().loopsUnload == true or getgenv()['roghoulsettings']['farming'] == false
                            print('break')
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                            if getgenv()['roghoulsettings']['autoabsorb'] == true and getgenv()['roghoulsettings']['FinalChoice'] ~= nil then 
                                for _,v in next, getgenv()['roghoulsettings']['FinalChoice']:GetChildren() do 
                                    if v.Name:find('Corpse') then 
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('ClickPart').CFrame * CFrame.new(0,1.7,0)
                                            task.wait(.2)
                                            game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):MoveTo(v:FindFirstChild('ClickPart').Position)
                                            game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):MoveTo(v:FindFirstChild('ClickPart').Position)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('ClickPart').CFrame * CFrame.new(0,1.7,0)
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('ClickPart').CFrame * CFrame.new(0,1.7,0)
                                            task.wait(.1)
                                            repeat 
                                                task.wait(0.01)
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('ClickPart').CFrame * CFrame.new(0,1.7,0)
                                                fireclickdetector(v:FindFirstChild('ClickPart'):FindFirstChildWhichIsA('ClickDetector'))
                                            until not getgenv()['roghoulsettings']['FinalChoice']
                                            fireclickdetector(v:FindFirstChild('ClickPart'):FindFirstChildWhichIsA('ClickDetector'))
                                            fireclickdetector(v:FindFirstChild('ClickPart'):FindFirstChildWhichIsA('ClickDetector'))
                                            fireclickdetector(v:FindFirstChild('ClickPart')[''])
                                            fireclickdetector(v:FindFirstChild('ClickPart'):FindFirstChildWhichIsA('ClickDetector'))
                                            fireclickdetector(v:FindFirstChild('ClickPart'):FindFirstChildWhichIsA('ClickDetector'))
                                            fireclickdetector(v:FindFirstChild('ClickPart')[''])
                                        end)
                                        -- task.wait(.3)
                                    end
                                end
                                -- game:GetService("Workspace").NPCSpawns.HumanSpawns.Human["Human Corpse"].
                            end
                            if getgenv()['roghoulsettings']['autoquest'] == true then 
                                if game.Players.LocalPlayer:FindFirstChild('PlayerFolder') and game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('CurrentQuest') then 
                                    local complete = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('CurrentQuest'):FindFirstChild('Complete')
                                    local quest = '';
                                    if complete:FindFirstChildWhichIsA('StringValue') then quest = complete:FindFirstChildWhichIsA('StringValue').Name end 
                                    if complete:FindFirstChild(quest) and complete:FindFirstChild(quest).Value == complete:FindFirstChild(quest):FindFirstChild('Max').Value then 
                                        getquest{type = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('Customization').Team.Value}
                                    elseif not complete:FindFirstChildWhichIsA('StringValue') then 
                                        getquest{type = game.Players.LocalPlayer:FindFirstChild('PlayerFolder'):FindFirstChild('Customization').Team.Value}
                                    end
                                end
                            end
                            getgenv()['roghoulsettings']['action'] = 'canquest'
                            getgenv()['roghoulsettings']['hasntstarted'] = true
                            getgenv().roghoulsettings['callednotice'] = false;
                        end)
                    else
                        getgenv()['roghoulsettings']['action'] = 'canquest'
                        getgenv().roghoulsettings['callednotice'] = false;
                        getgenv()['roghoulsettings']['hasntstarted'] = true;
                        return
                    end
                elseif getgenv().roghoulsettings['farming'] == true and game:GetService("Workspace"):FindFirstChild('Gyakusatsu') and typeofnpc == 'gykat' and  getaction() == 'canquest' and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    getgenv()['roghoulsettings']['action'] = 'fighting';
                    local gykatcurrently = nil
                    local PlacesWithBlobs = {
                        'BL';
                        'BR';
                        'FL';
                        'FR';
                    }
                    local wasfound = false
                    local CFrameMultiplication = CFrame.new(getgenv()['roghoulsettings']['playerx'],getgenv()['roghoulsettings']['playery'],getgenv()['roghoulsettings']['playerz']) * CFrame.Angles(math.rad(90),0,0)
                    local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
                    TweenInfo.new(4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),
                    {CFrame = game:GetService("Workspace").Gyakusatsu:FindFirstChild('BL').Spawn.CFrame* CFrameMultiplication})
                    tween:Play()
                    task.wait(4)
                    for _,v in next, game:GetService("Workspace").Gyakusatsu:GetChildren() do 
                        if table.find(PlacesWithBlobs,v.Name) then 
                            wasfound = true 
                            local stopteleporting = false
                            task.spawn(function()
                                repeat 
                                    task.wait(0.01)
                                    if game:GetService("Workspace").Gyakusatsu:FindFirstChild(v.Name) and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('Spawn').CFrame * CFrame.new(getgenv()['roghoulsettings']['playerx'],getgenv()['roghoulsettings']['playery'],getgenv()['roghoulsettings']['playerz']) * CFrame.Angles(math.rad(90),0,0)
                                    elseif not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game:GetService("Workspace").Gyakusatsu:FindFirstChild(v.Name) then
                                        
                                    else
                                        stopteleporting = true
                                    end
                                until stopteleporting == true
                            end)
                            repeat task.wait() until not game:GetService("Workspace").Gyakusatsu:FindFirstChild(v.Name) or getgenv().loopsUnload ==true or getgenv().roghoulsettings['farming'] == false
                            stopteleporting = true
                        end
                    end
                    if wasfound == false then 
                        local spawn = game:GetService("Workspace"):FindFirstChild('Gyakusatsu').Body.Spawn.CFrame
                        local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
                        TweenInfo.new(4,Enum.EasingStyle.Linear,Enum.EasingDirection.Out),
                        {CFrame = spawn* CFrameMultiplication})
                        tween:Play()
                        repeat 
                            task.wait(0.01)
                            game:GetService("ReplicatedStorage").Remotes.CamCF:FireServer(ohCFrame1)
                        until not game:GetService("Workspace"):FindFirstChild('Gyakusatsu')
                    end
                    
                end
            end)

            if getgenv().roghoulsettings['autotrainer'] == true then 
                getgenv().roghoulsettings['autotrainer'] = nil 
                local backconnection = game.Players.LocalPlayer.Backpack.DescendantAdded:Connect(function(child)
                    if child.Name == 'TSCodeVal'  then 
                        getgenv()['roghoulsettings']['tscode'] = child.Value
                    end
                end)  
                game:GetService("ReplicatedStorage").Remotes.Trainers.RequestTraining:InvokeServer(
                game:GetService("Players").LocalPlayer:WaitForChild('PlayerFolder'):WaitForChild('Trainers'):WaitForChild('GhoulTrainer').Value) 
                game:GetService("ReplicatedStorage").Remotes.Trainers.RequestTraining:InvokeServer(
                game:GetService("Players").LocalPlayer:WaitForChild('PlayerFolder'):WaitForChild('Trainers'):WaitForChild('CCGTrainer').Value) 
                -- task.wait(1)
                local Session = nil
                task.wait(.3)
                for i,v in pairs(workspace.TrainingSessions:GetChildren()) do
                    if v:WaitForChild('Player').Value == game.Players.LocalPlayer then
                        Session = v
                        print('training player')
                        break
                    end
                end
                if Session ~= nil then 
                    task.spawn(function()
                        Session.Comm:FireServer("Finished", getgenv()['roghoulsettings']['tscode'], false)
                    end)
                end
                print('Backconnection disconnect')
                backconnection:Disconnect()
                task.spawn(function()
                    repeat task.wait(30); 
                        pcall(function()
                            local backconnection = game.Players.LocalPlayer.Backpack.DescendantAdded:Connect(function(child) -- waitforchild backpack
                                if child.Name == 'TSCodeVal'  then 
                                    getgenv()['roghoulsettings']['tscode'] = child.Value
                                end
                            end)                    
                            game:GetService("ReplicatedStorage").Remotes.Trainers.RequestTraining:InvokeServer(
                            game:GetService("Players").LocalPlayer:WaitForChild('PlayerFolder'):WaitForChild('Trainers'):WaitForChild('GhoulTrainer').Value) 
                            game:GetService("ReplicatedStorage").Remotes.Trainers.RequestTraining:InvokeServer(
                            game:GetService("Players").LocalPlayer:WaitForChild('PlayerFolder'):WaitForChild('Trainers'):WaitForChild('CCGTrainer').Value) 
                            -- task.wait(1)
                            -- for i,v in pairs(workspace.TrainingSessions:GetChildren()) do
                            --     if v:FindFirstChild('Player').Value == game.Players.LocalPlayer then
                            --         print('training player')
                            --         fire(waitforobj(v, "Comm"), "Finished", getgenv()['roghoulsettings']['tscode'], false)
                            --         break
                            --     end
                            -- end
                            local Session = nil
                            task.wait(.3)
                            for i,v in pairs(workspace.TrainingSessions:GetChildren()) do
                                if v:WaitForChild('Player').Value == game.Players.LocalPlayer then
                                    Session = v
                                    print('training player')
                                    break
                                end
                            end
                            if Session ~= nil then 
                                task.spawn(function()
                                    Session.Comm:FireServer("Finished", getgenv()['roghoulsettings']['tscode'], false)
                                end)
                            end
                            backconnection:Disconnect()
                        end)

                    until getgenv().roghoulsettings['autotrainer'] == false
                end)
            end
        end
    end)

elseif game.PlaceId == 6735572261 then -- pilgrammed
    window = library:CreateWindow("Azfake V3{"..game.PlaceId..'}', Vector2.new(700, 598), Enum.KeyCode.LeftAlt)
    local tab = window:CreateTab(gameName)
    local Configuration = window:CreateTab('Configurations')
    local esptab = window:CreateTab('Esp')
    local sector = tab:CreateSector('Cheats','left')
    local othersector = tab:CreateSector('Cheats','left')
    local espsector = esptab:CreateSector('Cheats','left')
    local otheresp = esptab:CreateSector('Cheats','right')
    local farmingsector = tab:CreateSector('Cheats','right')
    Configuration:CreateConfigSystem()





    local function createLogger()
        pcall(function() if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger'):Destroy() end end)
        
        local ChatLogger = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Logs = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local tmp = Instance.new("Folder")
        local tmp_2 = Instance.new("TextLabel")
        
        --Properties:
        
        ChatLogger.Name = "ChatLogger"
        ChatLogger.Parent = game.CoreGui
        ChatLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ChatLogger
        Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Frame.BackgroundTransparency = 0.600
        Frame.Position = UDim2.new(0.707954645, 0, 0.372806996, 0)
        Frame.Size = UDim2.new(0, 458, 0, 285)
        
        UICorner.Parent = Frame
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TextLabel.BackgroundTransparency = 0.600
        TextLabel.Size = UDim2.new(0, 458, 0, 38)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "Chat Logger"
        TextLabel.TextColor3 = Color3.fromRGB(54, 54, 54)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextStrokeTransparency = 9.000
        TextLabel.TextWrapped = true
        
        UICorner_2.Parent = TextLabel
        
        Logs.Name = "Logs"
        Logs.Parent = Frame
        Logs.Active = true
        Logs.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Logs.BackgroundTransparency = 0.900
        Logs.BorderSizePixel = 0
        Logs.Position = UDim2.new(0.0218340605, 0, 0.164912283, 0)
        Logs.Size = UDim2.new(0, 436, 0, 230)
        Logs.ScrollBarThickness = 6
        
        UIListLayout.Parent = Logs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        tmp.Name = "tmp"
        tmp.Parent = Logs
        
        tmp_2.Name = "tmp"
        tmp_2.Parent = tmp
        tmp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tmp_2.BackgroundTransparency = 1.000
        tmp_2.Size = UDim2.new(0, 429, 0, 46)
        tmp_2.Visible = false
        tmp_2.Font = Enum.Font.SourceSans
        tmp_2.Text = "[Player1][]: Hello"
        tmp_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tmp_2.TextSize = 25.000
        tmp_2.TextWrapped = true
        tmp_2.TextXAlignment = Enum.TextXAlignment.Left
        game.CoreGui.ChatLogger.Frame.Active = true
    
        local UIS = game:GetService("UserInputService")
        local frame = game.CoreGui.ChatLogger.Frame
        
        local dragToggle = nil
        local dragSpeed = 0.1
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    createLogger()
    local function logIt(msg,plr)
        local xplus = 0
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,0)
        local add = 1
        -- for i=0, #game.CoreGui.ChatLogger.Frame.Logs:GetChildren() do 
        --     -- if i > 15 then 
        --     --     for i,v in pairs(game.CoreGui.ChatLogger.Frame.Logs:GetChildren()) do if v:IsA('TextLabel') then v:Destroy() end end
        --     -- end
        --     add -= 0.01
        --     if i > 20 then 
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 6
        --     else
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 23.5
        --     end
    
        -- end
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,game.CoreGui.ChatLogger.Frame.Logs.UIListLayout.AbsoluteContentSize.Y+50)
        local x = game.CoreGui.ChatLogger.Frame.Logs.tmp.tmp:Clone();
        x.RichText = true;
        local name = ''--plr.Name --''
        local ourname = game.Players.LocalPlayer.Name--''
        -- for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
        --     if v:FindFirstChild('RealName') and v:FindFirstChild('RealName').Value ~= '' and v:FindFirstChild('RealName').Value == plr.Name and v:FindFirstChild('DisplayName') and v:FindFirstChild('DisplayName').Value ~= ''  then 
        --         name = v.DisplayName.Value
        --     end
        --     if v.RealName.Value == game.Players.LocalPlayer.Name then 
        --         ourname = v.DisplayName.Value
        --     end
        -- end -- Logs.ChildAdded
        -- could make it so for chakra sense it makes the colour blue; when hovered it changes to [CHAKRA SENSER]
        local splitName = string.split(msg,' ')
        game.CoreGui.ChatLogger.Frame.Logs.CanvasPosition += Vector2.new(0,10000000) --* xplus
        if string.lower(splitName[3]) == 'clipped' or string.lower(splitName[3]) == string.lower(game.Players.LocalPlayer.Name) then print('hard text') x.TextColor3 = Color3.fromRGB(255, 25, 86) end
        
        if game.Players:FindFirstChild(splitName[1]) and tostring(string.lower(splitName[3])) == string.lower(ourname:sub(1,string.len(splitName[3])))  then 
            Notify('','name was said',2)
            -- if game.ReplicatedStorage.Cooldowns:FindFirstChild(splitName[1]):FindFirstChild('Chakra Sense') then 
            --     task.spawn(function()
            --         local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
            --         Notification.Notify("AZFAKE", "We think somebody is watching;", "rbxassetid://4914902889");
            --     end)
            -- end
        end
        if splitName[1] == 'Picked' then 
            x.TextColor3 = Color3.fromRGB(255, 25, 86)
        end
        if splitName[1] == 'AZFAKE-SERVER' then 
            x.TextColor3 = Color3.fromRGB(100, 155, 255)
        end
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end
        x.Text = '['..name..']['..splitName[1]..']: '..text
        x.Parent = game.CoreGui.ChatLogger.Frame.Logs
        x.Visible = true
    end










    if getgenv().pilgrammedsettings ~= nil and getgenv().pilgrammedsettings['oresconnections'] ~= nil then 
        for _,v in next, getgenv().pilgrammedsettings['oresconnections'] do 
            v:Disconnect()
        end
    end
    if getgenv().pilgrammedsettings ~= nil and getgenv().pilgrammedsettings['farmingconnections'] ~= nil then 
        for _,v in next, getgenv().pilgrammedsettings['farmingconnections'] do 
            v:Disconnect()
        end
    end
    if getgenv().pilgrammedsettings ~= nil and getgenv().pilgrammedsettings['globalconnections'] ~= nil then 
        for _,v in next, getgenv().pilgrammedsettings['globalconnections'] do 
            v:Disconnect()
        end
    end
    getgenv().FlySpeedSlide = getgenv().FlySpeedSlide or 0
    getgenv().CFspeed = 50
    getgenv().CFloop = nil
    getgenv().istyping = false
    game:GetService('UserInputService').InputBegan:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)

    getgenv().pilgrammedsettings = {
        nocooldown = false;
        registeredcooldowns = {
            'Cooldown';
            'CD';
        };
        oresesp = false; 
        playeresp = false;
        oresespcolour = Color3.new(255,255,255);
        playerespcolour = Color3.new(255,255,255);
        chestespcolour = Color3.new(255,255,255);
        espframework = '{name}     {distance}     {health}';
        speedtoggle = false;
        speed = 0;
        chestfarm = false;
        oresconnections = {};
        oreslocations = {};
        orestp = nil;
        killaura = false;
        godmode = false;
        tweenchest = false;
        tweenspeed = 0;
        datastop = false;
        noclip = false;
        noclipfunction =nil;
        flying = false;
        flyspeed = 0;
        farmablenpcs = {
            'King Sandpod';
            'Sandpod';
            'Sandpod Larva';
            'Creepy Crab';          
            'Eye Spy';
            'Mummy Eye';
            'Raider';
            'Thief';
            'Mummy';
            'Raider Ranger';
            'Skeleton Warrior';
            'Pro Thief';
            'Green Slime';
            'Blue Slime';
            'Shark';
            'Artilleryman';
            'Cactus Man';
            'Froglo';
            'Wicked Witch';
            'Urchin';
            'Marauder';
            'Copper Ant';
            'Mercenary';
            'Archmage';
            'Pebble';
            'Ogre';
            'Prism Troll';
            'Kai Guy';
            'Magma Turtle';
            'Substantial Sizzling Slime';
            'Sizzling Slime';
            'Giant Thief';
            'Cannoneer';
            'Swashbuckler';
            'Bigfish';
            'Pop Off Pirate';
            'Highway Son';
            'Eye Fly';
            'Tangerini';
            'Empyrean Knight';
            'Bushwalker';
            'Highland Warden';
            'Hunter';
            'Frost Assassin';
            'Ice Golem';
            'Ice King';
            'Pop Off Pirate';
            'Granny';
            'Mondo Squid';
            'Old Fart';
            'Brown Bear';
            'Chalkman';
            'Yalgaroth';
            'Viperhead';
            'Abidominal Snowman';
            'Mondo Prism';
            'The Matris';
            'N';
            --'BOONDA' - npc
        };
        farmingconnections = {};
        farmingnpc = nil;
        selectednpc = nil;
        farmnpc = false;
        tweenmode = false;
        farmtween = 0;
        rotation = 0;
        playerx = 0;
        playery = 0;
        playerz = 0;
        noshadows = false;
        chestesp = false;
        nofalldamage = false;
        godmodefail = false;
        failcframe = CFrame.new(2269.52832, -112.244843, -2150.00293, -0.668285847, 0.000216084649, 0.743904531, 0.000615683093, 0.999999762, 0.000262624701, -0.743904293, 0.000633517804, -0.668285847);
        alreadyfailtp = false;
        storefailcframe = nil;
        infinitejump = false;
        nofog = false;
        nosky = false;
        globalconnections = {};
        npcesp =false;
        mobesp =false;
        npcespcolour = Color3.new(255,255,255);
        mobespcolour = Color3.new(255,255,255);
        alwaysday = false;
        cabinetcframe = CFrame.new(805.30426, 9.00002766, -424.262085, 0.955899119, -1.71145444e-08, -0.293695271, -8.7016403e-09, 1, -8.6594639e-08, 0.293695271, 8.53313651e-08, 0.955899119);
        savecpu = false;
        savecpudistance = 0;
        chestdelay = 0;
        buyingitem = '';
        gamemod = false;
        brightness = 0;
        exposurecompensation = 0;
        moneymanaging = '';
        bossspawns = {
            ['archmage'] = CFrame.new(-969.154602, 127.212181, 1711.52966, 0.848035753, 5.63108458e-08, -0.529938996, -7.15024484e-08, 1, -8.1628011e-09, 0.529938996, 4.48142821e-08, 0.848035753);
            ['grannyspawn'] = CFrame.new(1407.22717, 37.6016922, -3756.67407, 0.700541377, -5.33524513e-08, 0.713611782, 3.77432379e-08, 1, 3.77120344e-08, -0.713611782, 5.15177956e-10, 0.700541377);
            ['old fart'] = CFrame.new(7374.5708, -459.5, 935.879028, 1, 0, 0, 0, 1, 0, 0, 0, 1);
            ['the matris'] = CFrame.new(-3124.96094, -33.0356293, -4391.34473, 0.984812498, -0, -0.173621148, 0, 1, -0, 0.173621148, 0, 0.984812498);
        };
        
        notifywhenmeteor = false;
        selectedboss = '';
        itemequip = '';
        killauram2 = false;
        notoolcd = false;
        notoolcdhold = false;
        buttonUp = false;
        notoolcdholddelay = 0;
        attackauradelay = 0.5;
        notoolcdclick = false;
        platformstanding = false;
        attemptkill = false;
    }

    local ctn; ctn = game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
        if getgenv()['pilgrammedsettings']['notoolcdclick'] == true then 
            for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do 
                if v:IsA('Tool') then 
                    v:Activate()
                    v:Deactivate()
                end
            end
        end
        getgenv().pilgrammedsettings.buttonUp = true -- check if no tool cd hold is true
    end)
    local gpn; gpn = game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
        getgenv().pilgrammedsettings.buttonUp = false
    end)

    task.spawn(function()
        repeat task.wait(.5) until getgenv().loopsUnload == true 
        gpn:Disconnect(); ctn:Disconnect();
    end)
    sector:AddToggle('No Cooldown',false,function(xstate)
        getgenv().pilgrammedsettings['nocooldown'] = xstate
    end)
    sector:AddToggle('No Fall Damage',false,function(xstate)
        getgenv().pilgrammedsettings['nofalldamage'] = xstate
    end)
    -- sector:AddToggle('Infinite Jump',false,function(xstate)
    --     getgenv().pilgrammedsettings['infinitejump'] = xstate
    -- end)
    sector:AddToggle('God Mode',false,function(xstate)
        getgenv().pilgrammedsettings['godmode'] = xstate
    end)
    -- sector:AddToggle('Teleport When Fail Godmode',false,function(xstate)
    --     getgenv().pilgrammedsettings['godmodefail'] = xstate
    -- end)
    sector:AddToggle('Attack Aura',false,function(xstate)
        getgenv().pilgrammedsettings['killaura'] = xstate
    end)
    sector:AddSlider('Attack Aura Delay',0,0.5,5,100,function(xtstae)
        getgenv().pilgrammedsettings['attackauradelay'] = xtstae
    end) -- 0.5,100
    sector:AddToggle('Attack Heavy',false,function(xstate)
        getgenv().pilgrammedsettings['killauram2'] = xstate
    end)
    farmingsector:AddToggle('Chest Farm',false,function(xstate)
        getgenv().pilgrammedsettings['chestfarm'] = xstate
    end)
    local tweentochest = farmingsector:AddToggle('Tween To Chest',false,function(xstate)
        getgenv().pilgrammedsettings['tweenchest'] = xstate
    end)-- make tweenspeed be visible
    local tweenspeedchest = farmingsector:AddSlider("Tween Speed", 0, 0, 10, 1, function(State)
        getgenv().pilgrammedsettings['tweenspeed'] = State
    end)
    local chestdelay = farmingsector:AddSlider("Chest Delay", 0, 0, 10, 100, function(State)
        getgenv().pilgrammedsettings['chestdelay'] = State
    end)
    tweentochest:MakeVisibleIfActive(tweenspeedchest)
    tweentochest:MakeVisibleIfActive(chestdelay)
    farmingsector:AddToggle('Data Stop',false,function(xstate)
        getgenv().pilgrammedsettings['datastop'] = xstate
        if getgenv()['pilgrammedsettings']['datastop'] == true then 

            if game:GetService("ReplicatedStorage").Remotes:FindFirstChild('UseData') then 
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild('UseData'):Destroy()
            end
            if game:GetService("ReplicatedStorage").Remotes:FindFirstChild('LoadData') then 
                game:GetService("ReplicatedStorage").Remotes:FindFirstChild('LoadData'):Destroy()
            end

            task.spawn(function()
                local dsMeta = getrawmetatable(DS)
    
                for _,x in next, dsMeta do 
                    print(_,x)       
                    if type(x)=='function' then
                        pcall(function()
                            y = x('player-'..game.Players.LocalPlayer.UserId)
                            print(y)
                        end)
                    end
                end
                settings().Network.IncomingReplicationLag =  50
                local data = game.Players.LocalPlayer:SaveData()
                task.spawn(function()
                    repeat
                        task.wait(0.0000001)
                        game.Players.LocalPlayer:LoadData(data)
                    until getgenv().loopsUnload == true or getgenv()['pilgrammedsettings']['datastop'] == false
                end)
                task.spawn(function()
                    while task.wait(0.000000000000000000000001) do
                        if getgenv().loopsUnload == true or getgenv()['pilgrammedsettings']['datastop'] == false then print('data break') break end
                        game.Players.LocalPlayer:LoadData(data)
                    end
                end)
            end)
        end
    end)
    local npcselection = farmingsector:AddDropdown("Target Selection", getgenv()['pilgrammedsettings']['farmablenpcs'], "", false, function(dropdownv)
        local foundnpcs = nil
        for _,v in next, workspace.Mobs:GetChildren() do 
            for k,c in next, v:GetChildren() do 
                if c.Name == dropdownv then 
                    foundnpcs = c
                    break
                end
            end
        end
        getgenv()['pilgrammedsettings']['selectednpc'] = foundnpcs.Name
    end)
    farmingsector:AddButton('Teleport To Target',function()
        if getgenv()['pilgrammedsettings']['selectednpc'] ~= nil then 
            local foundnpcs = nil
            for _,v in next, workspace.Mobs:GetChildren() do 
                for k,c in next, v:GetChildren() do 
                    if c.Name == getgenv()['pilgrammedsettings']['selectednpc'] then 
                        foundnpcs = c
                        break
                    end
                end
            end
            if foundnpcs ~= nil then 
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = foundnpcs:FindFirstChild('HumanoidRootPart').CFrame
            end
            
        end
    end)

    farmingsector:AddSeperator()
    -- task.spawn(function()
    --     for _,v in next, game:GetService("Workspace").Mobs:GetChildren() do 
    --         for k,c in next, v:GetChildren() do 
    --             -- npcselection:Add(c.Name)
    --             local connection; connection = v.ChildAdded:Connect(function(child)
    --                 table.insert(getgenv()['pilgrammedsettings']['farmablenpcs'],child)
    --                 -- print('waiting for humanoid')
    --                 --local humanoidfound = child:FindFirstChild('Humanoid') or child:FindFirstChild('Human')
    --                 repeat task.wait(0.01) until child:FindFirstChildWhichIsA('Humanoid')
    --                 -- print('found humanoid')
    --                 child:FindFirstChildWhichIsA('Humanoid').Died:Connect(function()
    --                     for _i,vx in next,getgenv()['pilgrammedsettings']['farmablenpcs'] do 
    --                         if vx == child then 
    --                             table.remove(getgenv()['pilgrammedsettings']['farmablenpcs'],_i)
    --                             npcselection:Remove(child.Name)
    --                             break
    --                         end
    --                     end
    --                 end)
    --             end)
    --             table.insert(getgenv()['pilgrammedsettings']['farmablenpcs'],c)
    --             repeat task.wait(0.01) until c:FindFirstChildWhichIsA('Humanoid')
    --             c:FindFirstChildWhichIsA('Humanoid').Died:Connect(function()
    --                 for _i,vx in next,getgenv()['pilgrammedsettings']['farmablenpcs'] do 
    --                     if vx == c then 
    --                         table.remove(getgenv()['pilgrammedsettings']['farmablenpcs'],_i)
    --                         npcselection:Remove(c.Name)
    --                         break
    --                     end
    --                 end
    --             end)
    --         end
    --     end
    -- end)


    farmingsector:AddSlider("Farming Tween Speed", 0, 0, 10, 1, function(State)
        getgenv().pilgrammedsettings['farmtween'] = State
    end)
    farmingsector:AddToggle('Tween Mode',false,function(xstate)
        getgenv().pilgrammedsettings['tweenmode'] = xstate
    end)
    farmingsector:AddToggle('Farm NPC',false,function(xstate)
        getgenv().pilgrammedsettings['farmnpc'] = xstate
    end)


    farmingsector:AddSlider("Player X", -20, 0, 20, 5, function(State)
        getgenv().pilgrammedsettings['playerx'] = State
    end)
    farmingsector:AddSlider("Player Y", -20, 0, 20, 5, function(State)
        getgenv().pilgrammedsettings['playery'] = State
    end)
    farmingsector:AddSlider("Player Z", -20, 0, 20, 5, function(State)
        getgenv().pilgrammedsettings['playerz'] = State
    end)


    farmingsector:AddSlider("Farming Rotation", 0, 0, 360, 1, function(State)
        getgenv().pilgrammedsettings['rotation'] = State
    end)

    farmingsector:AddSeperator()
    local infinitejumpattachment = sector:AddKeybindAttachment('Infinite Jump'):AddKeybind()
    local infinitejump = sector:AddToggle('Infinite Jump',false,function(xstate)
        getgenv().pilgrammedsettings['infinitejump'] = xstate-- mode to hold or not
    end)

    local speedtgl = sector:AddToggle('Speed',false,function(xstate)
        getgenv().pilgrammedsettings['speedtoggle'] = xstate
    end)


    local ToggleBindFlySpeed = sector:AddToggle("Fly", false, function(e)
        getgenv()['pilgrammedsettings']['flying'] = e
        if getgenv()['pilgrammedsettings']['flying'] == false  then -- and getgenv().istyping == false
            -- getgenv().CFloop:Disconnect()
            --game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
            Head.Anchored = false
            -- getgenv().CFloop = nil
        elseif getgenv()['pilgrammedsettings']['flying'] == true and getgenv().istyping == false then

            Players = game.Players
            -- getgenv().flying = true
            task.spawn(function()
                repeat wait()
                until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                local mouse = game.Players.LocalPlayer:GetMouse()
                repeat wait() until mouse
                local plr = game.Players.LocalPlayer
                local torso = plr.Character:WaitForChild('HumanoidRootPart')
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = getgenv()['pilgrammedsettings']['flyspeed']
                local speed = maxspeed  
                function Fly()
                    local bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                    bv.velocity = Vector3.new(0,0,0)
                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                    repeat task.wait(0.01)
                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild('exploitation') then 
                            bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                            bv.velocity = Vector3.new(0,0,0)
                            bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            local prevRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
                            speed = getgenv()['pilgrammedsettings']['flyspeed'] --Options.FlySpeedSlide.Value
                            maxspeed = getgenv()['pilgrammedsettings']['flyspeed']
                            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = maxspeed * 2
                                -- if speed > maxspeed then
                                --     speed = maxspeed
                                -- end
                                if speed ~= maxspeed * 10 then
                                    speed = maxspeed * 2
                                end
                            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = 0
                                if speed < 0 then
                                    speed = 0
                                end
                            end
                                -- elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                            --     bv.velocity = ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector  )) *speed/2
                            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = (( game.Workspace.CurrentCamera.CoordinateFrame.lookVector  *  (ctrl.f+ctrl.b)  )) * speed -- ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p))
                                -- lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                if (ctrl.r) ~= 0  then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.r = ctrl.r - ctrl.l
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector  )) * speed
                                end
                                if (ctrl.l) ~= 0 then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.l = ctrl.l - ctrl.r
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector    ))  * -speed
                                end
    
                            else
                                bv.velocity = Vector3.new(0,0,0)
                            end
                                --* CFrame.new((ctrl.l+ctrl.r),0,0) -- *50*speed/maxspeed * Vector3.new(0,0,0) --  
                        end

                    until getgenv()['pilgrammedsettings']['flying']  == false or getgenv().loopsUnload == true

                    ctrl = {f = 0, b = 0, l = 0, r = 0}
                    lastctrl = {f = 0, b = 0, l = 0, r = 0}
                    speed = 0
                    bv:Destroy()
                    plr.Character:WaitForChild('Humanoid').PlatformStand = false
                    print('stop flying')
                end
                mouse.KeyDown:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 1
                    elseif key:lower() == "s" then
                        ctrl.b = -1
                    elseif key:lower() == "a" then
                        ctrl.l = -1
                    elseif key:lower() == "d" then
                        ctrl.r = 1
                    end
                end)
                mouse.KeyUp:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 0
                        speed = 0
                    elseif key:lower() == "s" then
                        ctrl.b = 0
                    elseif key:lower() == "a" then
                        ctrl.l = 0
                    elseif key:lower() == "d" then
                        ctrl.r = 0
                    end
                end)
                Fly()  
            end)
        end
    end)

    local ToggleBindNoclip= sector:AddToggle("Noclip", false, function(e)
        getgenv()['pilgrammedsettings']['noclip'] = e 
        if getgenv()['pilgrammedsettings']['noclip']  ==false and getgenv().istyping == false then
            getgenv()['pilgrammedsettings']['noclipfunction']:Disconnect()
        elseif getgenv()['pilgrammedsettings']['noclip']  == true and getgenv().istyping == false then --  
            -- task.wait(0.1)
            -- local function NoclipLoop()
            --     if getgenv()['pilgrammedsettings']['noclip']  == true and game.Players.LocalPlayer.Character  and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >= 0 then
            -- end
            getgenv()['pilgrammedsettings']['noclipfunction'] = game:GetService('RunService').Stepped:Connect(function()
                for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Part") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
            end)
        end
    end)
    sector:AddSlider("Speed", 0, 0, 250, 1, function(State)
        getgenv().pilgrammedsettings['speed'] = State
    end)
    sector:AddSlider("Fly", 0, 0, 250, 1, function(State)
        getgenv().pilgrammedsettings['flyspeed'] = State
    end)
    sector:AddToggle('Platform Standing',false,function(xstate)
        getgenv().pilgrammedsettings['platformstanding'] = xstate
    end)

    local speedbinds = speedtgl:AddKeybind()
    local flybind = ToggleBindFlySpeed:AddKeybind()
    local noclipbind = ToggleBindNoclip:AddKeybind()

    sector:AddSeperator()


    for _,v in next, game:GetService("Workspace").Ores:GetChildren() do 
        table.insert(getgenv()['pilgrammedsettings']['oreslocations'],v.Name)
    end

    sector:AddDropdown("Ores TP", getgenv()['pilgrammedsettings']['oreslocations'], "", false, function(dropdownv)
        getgenv()['pilgrammedsettings']['orestp'] = dropdownv
    end)


    
    sector:AddButton('Teleport To Ore',function()
        if getgenv()['pilgrammedsettings']['orestp'] ~= nil and game:GetService("Workspace").Ores:FindFirstChild(getgenv()['pilgrammedsettings']['orestp']):FindFirstChildWhichIsA('Model') then 
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = game:GetService("Workspace").Ores:FindFirstChild(getgenv()['pilgrammedsettings']['orestp']):FindFirstChildWhichIsA('Model'):FindFirstChild('Part').CFrame
        end
    end)




    othersector:AddButton('Teleport To All Mirrors',function()
        for _,v in next, workspace.Mirrors:GetChildren() do 
            for k,c in next, v:GetChildren() do 
                if c:FindFirstChild('ProximityPrompt') then 
                    task.wait(.1)
                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = c.CFrame
                    task.wait(.2)
                    local inputManager = game:GetService('VirtualInputManager')
                    inputManager:SendKeyEvent(true,Enum.KeyCode.G,false,game)
                    inputManager:SendKeyEvent(false,Enum.KeyCode.G,false,game)
                    inputManager:SendKeyEvent(true,Enum.KeyCode.G,false,game)
                    inputManager:SendKeyEvent(false,Enum.KeyCode.G,false,game)
                end
            end
        end
    end)
    othersector:AddButton('Teleport To Cabinet',function()
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv().pilgrammedsettings['cabinetcframe']
    end)
    sector:AddButton('Remove Binds',function() --  s    e    (x) t or
        infinitejumpattachment:Unbind()
        speedbinds:Unbind()
        flybind:Unbind()
        noclipbind:Unbind()
    end)




    othersector:AddToggle('No Shadows',false,function(xstate)
        getgenv().pilgrammedsettings['noshadows'] = xstate
    end)
    othersector:AddToggle('No Fog',false,function(xstate)
        getgenv().pilgrammedsettings['nofog'] = xstate
    end)
    othersector:AddToggle('No Sky',false,function(xstate)
        getgenv().pilgrammedsettings['nosky'] = xstate
    end)
    othersector:AddToggle('Always Day',false,function(xstate)
        getgenv().pilgrammedsettings['alwaysday'] = xstate
    end)
    othersector:AddToggle("Game Modifiers", false, function(State)
        getgenv().pilgrammedsettings['gamemod'] = State
    end)
    othersector:AddSlider("Brightness", 0, 0, 10, 1, function(State)
        getgenv().pilgrammedsettings['brightness'] = State
    end)
    othersector:AddSlider("Exposure Compensation", 0, 0, 1, 100, function(State)
        getgenv().pilgrammedsettings['exposurecompensation'] = State
    end)


    sector:AddButton('Rejoin',function()
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)
    othersector:AddTextbox('Purchase Item',nil,function(xstate)
        getgenv().pilgrammedsettings['buyingitem'] =xstate  -- could use this for withdraw and deposit and rename this to selectionbox pilgrammedsettings.selectionbox
    end)
    othersector:AddButton('Purchase',function()
        game:GetService("ReplicatedStorage").Remotes.Buy:InvokeServer(getgenv().pilgrammedsettings['buyingitem'])
    end)
    
    othersector:AddTextbox('Money Withdraw/Deposit',nil,function(xstate)
        getgenv().pilgrammedsettings['moneymanaging'] =xstate  -- could use this for withdraw and deposit and rename this to selectionbox pilgrammedsettings.selectionbox
    end)
    -- othersector:AddButton('Withdraw',function()
    --     game:GetService("ReplicatedStorage").Remotes.Buy:FireServer(getgenv().pilgrammedsettings['buyingitem'])
    -- end)
    othersector:AddButton('Deposit',function()
        local ohBoolean1 = true
        local ohNumber2 = tonumber(getgenv().pilgrammedsettings['moneymanaging'])
        game:GetService("ReplicatedStorage").Remotes.Bank:InvokeServer(ohBoolean1, ohNumber2)
    end)
    -- sector:AddToggle('No Fa',false,function(xstate)
    --     getgenv().pilgrammedsettings['nofalldamage'] = xstate
    -- end)

    farmingsector:AddToggle("Notify when Meteor", false, function(State)
        getgenv().pilgrammedsettings['notifywhenmeteor'] = State
    end)

    local bosses = {}
    for _,v in next,getgenv().pilgrammedsettings['bossspawns'] do 
        table.insert(bosses,_)
        -- sector:AddDropdown("Ores TP", getgenv()['pilgrammedsettings']['oreslocations'], "", false, function(dropdownv)
        --     getgenv()['pilgrammedsettings']['orestp'] = dropdownv
        -- end)
    
    end

    farmingsector:AddDropdown("Boss Spawn", bosses, "", false, function(dropdownv)
        getgenv()['pilgrammedsettings']['selectedboss'] = dropdownv
    end)
    local spawnbossbutton = farmingsector:AddButton('Spawn Boss',function()
        local foundboss = false
        local cframeofboss = nil
        for _,v in next, getgenv().pilgrammedsettings['bossspawns'] do 
            if _ == getgenv()['pilgrammedsettings']['selectedboss'] then 
                foundboss = true;cframeofboss = v
            end
        end
        if foundboss == true then 
            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = cframeofboss
        end
    end)
    spawnbossbutton:ActivateKnowledge()
    spawnbossbutton:AddKnowledge('Teleports you to boss spawn')
    -- sector:AddSeperator()
    sector:AddTextbox('Equip Item','',function(xstate)
        getgenv().pilgrammedsettings['itemequip'] =xstate  -- could use this for withdraw and deposit and rename this to selectionbox pilgrammedsettings.selectionbox
    end)
    sector:AddButton('Equip',function()
        if getgenv().pilgrammedsettings['itemequip'] ~= '' and game.Players.LocalPlayer:FindFirstChild('Backpack') and game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild(getgenv().pilgrammedsettings['itemequip']) then 
            local Item = game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild(getgenv().pilgrammedsettings['itemequip'])
            Item.Parent = game.Players.LocalPlayer.Character
        end
    end)
    sector:AddButton('Equip All Item',function()
        for _,v in next, game.Players.LocalPlayer:FindFirstChild('Backpack'):GetChildren() do
            local Item = v
            if v.Name == getgenv().pilgrammedsettings['itemequip'] and game.Players.LocalPlayer:FindFirstChild('Backpack'):FindFirstChild(getgenv().pilgrammedsettings['itemequip']) then 
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end)
    --[[
        for _,v in next, game.Players.LocalPlayer:FindFirstChild('Backpack'):GetChildren() do
            local Item = v
            if v.Name == 'Pro Dagger'  then 
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    ]]
    sector:AddButton('Equip All',function()
        for _,v in next, game.Players.LocalPlayer:FindFirstChild('Backpack'):GetChildren() do
            local Item = v
            Item.Parent = game.Players.LocalPlayer.Character
        end
    end)

    sector:AddButton('Unequip All',function()
        game.Players.LocalPlayer.Character.Humanoid:UnEquipTools() 
    end)
    sector:AddSeperator('More')
    sector:AddToggle('No Tool CD',false,function(xstate)
        getgenv().pilgrammedsettings['notoolcd'] = xstate
    end)

    sector:AddToggle('No Tool Hold',false,function(xstate)
        getgenv().pilgrammedsettings['notoolcdhold'] = xstate
    end)
    sector:AddToggle('No Tool Click',false,function(xstate)
        getgenv().pilgrammedsettings['notoolcdclick'] = xstate
    end)
    sector:AddSlider('Tool Hold Delay',0,0.5,5,100,function(xtstae)
        getgenv().pilgrammedsettings['notoolcdholddelay'] = xtstae
    end) -- 0.5,100
    sector:AddToggle('Attempt Kill NPC',false,function(xstate)
        getgenv().pilgrammedsettings['attemptkill'] = xstate
    end)
    sector:AddButton('Kill Closest NPC',function()
        local foundnpcs = nil
        local previousPos = 0
        local previousroot = nil
        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
            for _,v in next, workspace.Mobs:GetChildren() do 
                for k,c in next, v:GetChildren() do 
                    if c:FindFirstChild('HumanoidRootPart') then 
                        local dist = (c:FindFirstChild('HumanoidRootPart').Position-game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                        if previousroot == nil and dist < 50 then 
                            previousPos = dist;
                            previousroot = c:FindFirstChild('HumanoidRootPart')
                        elseif dist < 50 and previousPos > dist then 
                            previousPos = dist;
                            previousroot = c:FindFirstChild('HumanoidRootPart')
                        end
                    end
                end
            end
            if previousroot ~= nil then 
                if isnetworkowner(previousroot.Parent.PrimaryPart) then 
                    if previousroot.Parent:FindFirstChild('Head') then 
                        previousroot.Parent:FindFirstChild('Head'):Destroy()
                    end
                    if previousroot.Parent:FindFirstChildWhichIsA('Humanoid') then 
                        previousroot.Parent:FindFirstChildWhichIsA('Humanoid').Health = 0
                    end
                    pcall(function()
                        previousroot.Parent:BreakJoints()
                    end)
                -- else
                --     azfakenotify('is not network owner',2)
                end
            end
        end
    end)
    -- "", ""
    
    -- itemequip


    getgenv().OresEsp = function(v) 
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local contains = 'Contains, '
        for _,v in next, v:GetChildren() do 
            contains = contains.. v.Name..' - '
        end
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            local distance = math.huge
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                local vect,onscreen = cam:worldToViewportPoint(v.Position)
                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    local isactive = sectionesp['__OBJECT_EXISTS']
                    if onscreen and isactive == true then 
                        sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,15)
                        sectionesp.Visible = true
                        sectionesp.Text = 'Ores: '..math.floor(distance)..'studs'..' '..contains -- make it show closest
                        sectionesp.Color = getgenv().pilgrammedsettings['oresespcolour']
                    elseif not onscreen and isactive == true  then
                        sectionesp.Visible = false
                    end
                end
                if getgenv().loopsUnload == true then 
                    print('keep running ores esp disconnect') 
                    if isactive == true then 
                        sectionesp:Remove(); 
                    end
                    keeprunning:Disconnect() 
                    return
                end -- ; - :  
                if getgenv().pilgrammedsettings['oresesp'] == false then 
                    print('keep running ores esp disconnect') 
                    if isactive == true then 
                        pcall(function()
                            sectionesp:Remove() -- table insert removedesps,v
                        end)    
                    end
                    keeprunning:Disconnect() 
                    return
                end


                if getgenv().pilgrammedsettings['savecpu'] then 
                    -- if dist check if bigger than savecpudistance
                    -- 
                    if distance > getgenv().pilgrammedsettings['savecpudistance'] and isactive == true then 
                        sectionesp:Remove() -- table insert removedesps,v
                    else
                        if not isactive  then 
                            sectionesp = Drawing.new('Text')
                            sectionesp.Visible = false
                            sectionesp.Center = true 
                            sectionesp.Outline = true 
                            sectionesp.Font = 2 
                            sectionesp.Size = 13
                            sectionesp.Color = Color3.new(5,0,0)
                            sectionesp.Text = '<>'
                        end
                    end
                end
            end)
        end
        coroutine.wrap(updPosition)()
    end 
    getgenv().GetOres = function()

    end
    getgenv().ChestEsp = function(v) 
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                local vect,onscreen = cam:worldToViewportPoint(v.Position)
                local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local isactive = sectionesp['__OBJECT_EXISTS']
                if onscreen and isactive then 
                    sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,15)
                    sectionesp.Visible = true
                    sectionesp.Text = 'Chest: '..math.floor(distance)..'studs'
                    sectionesp.Color = getgenv().pilgrammedsettings['chestespcolour']
                elseif not onscreen and isactive  then
                    sectionesp.Visible = false
                end -- chesp
                if getgenv().loopsUnload == true then 
                    print('keep running chest esp disconnect') 
                    pcall(function()
                        sectionesp:Remove(); 
                    end)
                    keeprunning:Disconnect() 
                end -- ; - :  
                if getgenv().pilgrammedsettings['chestesp'] == false then 
                    print('keep running chest esp disconnect') 
                    pcall(function()
                        sectionesp:Remove(); 
                    end) 
                    keeprunning:Disconnect() 
                end
            
                if getgenv().pilgrammedsettings['savecpu'] then 
                    -- if dist check if bigger than savecpudistance
                    -- 
                    if distance > getgenv().pilgrammedsettings['savecpudistance'] and isactive == true then 
                        sectionesp:Remove() -- table insert removedesps,v
                    else
                        if not isactive  then 
                            sectionesp = Drawing.new('Text')
                            sectionesp.Visible = false
                            sectionesp.Center = true 
                            sectionesp.Outline = true 
                            sectionesp.Font = 2 
                            sectionesp.Size = 13
                            sectionesp.Color = Color3.new(5,0,0)
                            sectionesp.Text = '<>'
                        end
                    end
                end
            end)
        end -- add to global connections
        coroutine.wrap(updPosition)()
    end 
    getgenv().MobEsp = function(v) 
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChildWhichIsA('Humanoid') then 
                    local vect,onscreen = cam:worldToViewportPoint(v.HumanoidRootPart.Position)
                    local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    local isactive = sectionesp['__OBJECT_EXISTS']
                    if onscreen and isactive  then 
                        sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,15)
                        sectionesp.Visible = true
                        local subtext = v.Name..'    '..math.floor(distance)..' studs'
                        subtext = subtext..string.rep(' ',math.floor(string.len(subtext)/2))..'['..math.floor(v:FindFirstChildWhichIsA('Humanoid').Health)..'/'..math.floor(v:FindFirstChildWhichIsA('Humanoid').MaxHealth)..']'
                        sectionesp.Text = subtext
                        sectionesp.Color = getgenv().pilgrammedsettings['mobespcolour']
                    elseif not onscreen and isactive  then
                        sectionesp.Visible = false
                    end
                    if getgenv().loopsUnload == true then 
                        print('keep running mob esp disconnect') 
                        pcall(function()
                            sectionesp:Remove(); 
                        end) 
                        keeprunning:Disconnect() 
                    end -- ; - :  
                    if getgenv().pilgrammedsettings['mobesp'] == false then 
                        print('keep running mob esp disconnect') 
                        pcall(function()
                            sectionesp:Remove(); 
                        end) 
                        keeprunning:Disconnect() 
                    end
                    
                    
                    if getgenv().pilgrammedsettings['savecpu'] then 
                        -- if dist check if bigger than savecpudistance
                        -- 
                        if distance > getgenv().pilgrammedsettings['savecpudistance'] and isactive == true then 
                            pcall(function()
                                sectionesp:Remove() -- table insert removedesps,v
                            end)    
                        else
                            if not isactive  then 

                                sectionesp = Drawing.new('Text')
                                pcall(function()
                                    sectionesp.Visible = false
                                end)
                                pcall(function()
                                    sectionesp.Center = true 
                                end)
                                pcall(function()
                                    sectionesp.Outline = true 
                                end)
                                pcall(function()
                                    sectionesp.Font = 2 
                                end)
                                pcall(function()
                                    sectionesp.Size = 13
                                end)
                                pcall(function()
                                    sectionesp.Color = Color3.new(5,0,0)
                                end)
                                pcall(function()
                                    sectionesp.Text = '<>'
                                end)
                                
                                
                                
                                
                                
                                
                                
                            end
                        end
                    end
                else
                    print('no humanoidrootpart break end'); 
                    pcall(function()
                        sectionesp:Remove();
                    end)
                    pcall(function()
                        keeprunning:Disconnect()
                    end)
                    
                end
            end)
        end
        coroutine.wrap(updPosition)()
    end 


    getgenv().NPCesp = function(v) 
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local contains = 'Contains, '
        for _,v in next, v:GetChildren() do 
            contains = contains.. v.Name..' - '
        end
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                if v:FindFirstChild('HumanoidRootPart') then 
                    local vect,onscreen = cam:worldToViewportPoint(v.HumanoidRootPart.Position)
                    local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    local isactive = sectionesp['__OBJECT_EXISTS']
                    if onscreen and isactive then 
                        sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,15)
                        sectionesp.Visible = true
                        sectionesp.Text = v.Name..'     '..math.floor(distance)..' studs'
                        sectionesp.Color = getgenv().pilgrammedsettings['npcespcolour']
                    elseif not onscreen and isactive then
                        sectionesp.Visible = false
                    end
                    if getgenv().loopsUnload == true then print('keep running npc esp disconnect') pcall(function()
                        sectionesp:Remove(); 
                    end) keeprunning:Disconnect() end -- ; - :  
                    if getgenv().pilgrammedsettings['npcesp'] == false then 
                        print('keep running npc esp disconnect') 
                        pcall(function()
                            sectionesp:Remove(); 
                        end) 
                        keeprunning:Disconnect() 
                    end
                
                    if getgenv().pilgrammedsettings['savecpu'] then 
                        -- if dist check if bigger than savecpudistance
                        -- 
                        if distance > getgenv().pilgrammedsettings['savecpudistance'] and isactive == true then 
                            pcall(function()
                                sectionesp:Remove() -- table insert removedesps,v
                            end)     
                        else
                            if not isactive  then 
                                sectionesp = Drawing.new('Text')
                                sectionesp.Visible = false
                                sectionesp.Center = true 
                                sectionesp.Outline = true 
                                sectionesp.Font = 2 
                                sectionesp.Size = 13
                                sectionesp.Color = Color3.new(5,0,0)
                                sectionesp.Text = '<>'
                            end
                        end
                    end
                else
                    print('npc esp no root part break'); 
                    pcall(function()
                        sectionesp:Remove();
                    end)
                    pcall(function()
                        keeprunning:Disconnect()
                    end)
                end
            end)
        end
        coroutine.wrap(updPosition)()
    end

    getgenv()['pilgrammedsettings'].GetOres = function()
        local connections = {}
        
        for _,v in next, workspace:FindFirstChild('Ores'):GetChildren() do 

            for k,c in next, v:GetChildren() do 
                if c:FindFirstChild('Part') then 
                    getgenv().OresEsp(c:FindFirstChild('Part'))
                end
            end
    
    
            -- table.insert(getgenv()['pilgrammedsettings']['oresconnections'],connection)
            local connection = v.ChildAdded:Connect(function(child)
                getgenv().OresEsp(child:WaitForChild('Part'))
            end)
            table.insert(connections,connection)
        end
        return connections
    end
    getgenv()['pilgrammedsettings'].GetChests = function()
        for _,v in next, workspace:FindFirstChild('Chests'):GetChildren() do 
            print(v.Name)
            task.spawn(function()
                getgenv().ChestEsp(v:FindFirstChild('Root'))
            end)
        end
        local connection; connection = workspace:FindFirstChild('Chests').ChildAdded:Connect(function(child)
            if child:FindFirstChild('Root') then 
                getgenv().ChestEsp(child:FindFirstChild('Root'))
            end
        end)
        table.insert(getgenv()['pilgrammedsettings']['globalconnections'],connection)
        return connection
    end

    getgenv()['pilgrammedsettings'].GetMobs = function()
        local dirs = game:GetService("Workspace"):FindFirstChild('Mobs'):GetChildren() -- GetChildren('Mobs')
        local connection;
        for _,v in next, game:GetService("Workspace"):FindFirstChild('Mobs'):GetChildren() do 
            for i,mob in next,v:GetChildren() do 
                if mob:FindFirstChild('HumanoidRootPart') then 
                    getgenv().MobEsp(mob)
                end
            end
            connection = v.ChildAdded:Connect(function(child)
                if child:WaitForChild('HumanoidRootPart') then 
                    getgenv().MobEsp(child)
                end
            end)
        end

        table.insert(getgenv()['pilgrammedsettings']['globalconnections'],connection)
        return connection
    end
    getgenv()['pilgrammedsettings'].GetNpcs = function()
        for _,v in next, workspace:FindFirstChild('NPCs'):GetChildren() do    
            getgenv().NPCesp(v)
        end
    end
    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv()['pilgrammedsettings'].CreatePlayerEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        -- 
            local esp = Drawing.new('Text')
            esp.Visible = false
            esp.Center = true 
            esp.Outline = true 
            esp.Font = 2 
            esp.Size = 13
            esp.Color = Color3.new(5,0,0)
            esp.Text = 'SEXY'

            local tracer = Drawing.new('Line')
            tracer.Visible = false
            tracer.Color = Color3.new(1,0,0)
            tracer.Thickness = 1 
            tracer.Transparency = 1 
            
            
            local box_o = Drawing.new('Square')
            box_o.Visible = false
            box_o.Color = Color3.new(0,0,0)
            box_o.Thickness = 2
            box_o.Transparency =1 
            box_o.Filled = false
            
            local box = Drawing.new('Square')
            box.Visible = false
            box.Color = Color3.new(1,0,0)
            box.Thickness = 1.5
            box.Transparency =1 
            box.Filled = false
        
            local hb_o = Drawing.new('Square')
            hb_o.Visible = false
            hb_o.Color = Color3.new(0,0,0)
            hb_o.Thickness = 1
            hb_o.Transparency =1 
            hb_o.Filled = false
            
            local hb = Drawing.new('Square')
            hb.Visible = false
            hb.Color = Color3.new(1,0,0)
            hb.Thickness = 1
            hb.Transparency =1 
            hb.Filled = true
            local health = Drawing.new('Text')
            health.Visible = false
            local distancex = Drawing.new('Text')
            distancex.Visible = false
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            cam = workspace.CurrentCamera
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv()['pilgrammedsettings']['playeresp'] and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    local vroot = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv()['pilgrammedsettings']['playeresp'] and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))

    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end

                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true

                        -- local Talents = #v.Backpack:GetChildren()-1
                        -- local Power = Talents--#Talents-1
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,-15)
                        esp.Color = getgenv()['pilgrammedsettings']['playerespcolour']
                        local preframework = getgenv()['pilgrammedsettings']['espframework']
                        
                        preframework =string.gsub(
                            preframework,
                            '{name}',
                            v.Name
                        )
                        preframework = string.gsub(
                            preframework,
                            '{distance}',
                            tostring(math.floor(distance))..'s'
                        )
                        preframework = string.gsub(
                            preframework,
                            '{health}',
                            math.floor(v.Character.Humanoid.Health)..'/'..math.floor(v.Character.Humanoid.MaxHealth)--..' '..(math.floor(v.Character.Humanoid.Health) /  math.floor(v.Character.Humanoid.MaxHealth) * 100)..'%' -- add percentage
                        )
                        esp.Text = preframework
                        if getgenv()['pilgrammedsettings']['playeresp'] == true then esp.Visible = true end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true or getgenv()['pilgrammedsettings']['playeresp'] == false then 
                    xkeeprunning:Disconnect()
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)

    end


    espsector:AddToggle('Save CPU',false,function(xstate)
        getgenv().pilgrammedsettings['savecpu'] = xstate
    end)
    espsector:AddSlider("Save CPU Distance", 0, 1000, 10000, 5, function(State)
        getgenv().pilgrammedsettings['savecpudistance'] = State
    end)

    espsector:AddToggle('Ores Esp',false,function(xstate)
        getgenv().pilgrammedsettings['oresesp'] = xstate
        if getgenv()['pilgrammedsettings']['oresesp'] == true then 
            
            local connections=  getgenv()['pilgrammedsettings'].GetOres()
            task.spawn(function()
                repeat task.wait() until getgenv().pilgrammedsettings['oresesp'] == false 
                for _,v in next, connections do 
                    v:Disconnect()
                end
            end)
        end
    end)
    espsector:AddToggle('Chest Esp',false,function(xstate)
        getgenv().pilgrammedsettings['chestesp'] = xstate
        if getgenv()['pilgrammedsettings']['chestesp'] == true then 
            local connection = getgenv()['pilgrammedsettings'].GetChests()
            task.spawn(function()
                repeat task.wait() until getgenv().pilgrammedsettings['chestesp'] == false 
                connection:Disconnect()
            end)
            
        end
    end)
    espsector:AddToggle('Mob Esp',false,function(xstate)
        getgenv().pilgrammedsettings['mobesp'] = xstate
        if getgenv()['pilgrammedsettings']['mobesp'] == true then 
            local connection = getgenv()['pilgrammedsettings'].GetMobs()
            task.spawn(function()
                repeat task.wait() until getgenv().pilgrammedsettings['mobesp'] == false 
                connection:Disconnect()
            end)
        end
    end)
    espsector:AddToggle('NPC Esp',false,function(xstate)
        getgenv().pilgrammedsettings['npcesp'] = xstate
        if getgenv()['pilgrammedsettings']['npcesp'] == true then 
            getgenv()['pilgrammedsettings'].GetNpcs()
        end
    end)
    espsector:AddToggle('Player Esp',false,function(xstate)
        getgenv().pilgrammedsettings['playeresp'] = xstate
        for _,v in next, game:GetService('Players'):GetPlayers() do 
            if getgenv()['pilgrammedsettings']['playeresp'] == true then 
                getgenv()['pilgrammedsettings'].CreatePlayerEsp(v)
            end 
        end   
    end)
    espsector:AddSeperator('-')
    otheresp:AddColorpicker('Ores Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().pilgrammedsettings['oresespcolour'] = xstate
    end)
    otheresp:AddColorpicker('Chest Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().pilgrammedsettings['chestespcolour'] = xstate
    end)
    otheresp:AddColorpicker('Mob Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().pilgrammedsettings['mobespcolour'] = xstate
    end)
    otheresp:AddColorpicker('Npc Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().pilgrammedsettings['npcespcolour'] = xstate
    end)
    otheresp:AddColorpicker('Player Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().pilgrammedsettings['playerespcolour'] = xstate
    end)
    






    


    --PlayerGui:GetGuiObjectsAtPosition

    local metahook;
    metahook = hookmetamethod(game,'__namecall',function(self,...)
        local args = {...}
        local call_type = getnamecallmethod();
        if call_type == 'GetState'  and getgenv().pilgrammedsettings['nofalldamage'] then 
            return Enum.HumanoidStateType.PlatformStanding
        elseif call_type == 'Kick' then 
            warn('Attempted to kick')
            return task.wait(math.huge)
        else
            return metahook(self,...)
        end
        return metahook(self,...)
    end)

    local metaindex;
    metaindex = hookmetamethod(game,'__index',newcclosure(function(self,a)
        if self == game:GetService('Lighting') and a == 'ClockTime' and getgenv().pilgrammedsettings['alwaysday'] == true then 
            return 12
        elseif self == game:GetService('Lighting') and a == 'TimeOfDay' and getgenv().pilgrammedsettings['alwaysday'] == true then 
            return 12
        end
        return metaindex(self,a)
    end))

    -- make notify return text box so u can change text
    task.spawn(function()
        while task.wait(0.01) do 
            if getgenv().loopsUnload == true then print('pilgrammed loop break') break end

            if getgenv().pilgrammedsettings['attemptkill'] == true then 
                local foundnpcs = nil
                local previousPos = 0
                local previousroot = nil
                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                    for _,v in next, workspace.Mobs:GetChildren() do 
                        for k,c in next, v:GetChildren() do 
                            if c:FindFirstChild('HumanoidRootPart') then 
                                local dist = (c:FindFirstChild('HumanoidRootPart').Position-game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude
                                if previousroot == nil and dist < 50 then 
                                    previousPos = dist;
                                    previousroot = c:FindFirstChild('HumanoidRootPart')
                                elseif dist < 50 and previousPos > dist then 
                                    previousPos = dist;
                                    previousroot = c:FindFirstChild('HumanoidRootPart')
                                end
                            end
                        end
                    end
                    if previousroot ~= nil then 
                        if isnetworkowner(previousroot.Parent.PrimaryPart) then 
                            if previousroot.Parent:FindFirstChild('Head') then 
                                previousroot.Parent:FindFirstChild('Head'):Destroy()
                            end
                            if previousroot.Parent:FindFirstChildWhichIsA('Humanoid') then 
                                previousroot.Parent:FindFirstChildWhichIsA('Humanoid').Health = 0
                            end
                            pcall(function()
                                previousroot.Parent:BreakJoints()
                            end)
                        end
                    end
                end
            end

            if getgenv().pilgrammedsettings['notoolcdhold'] == true and getgenv().pilgrammedsettings['buttonUp'] == true then 
                for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do 
                    if v:IsA('Tool') then 
                        v:Activate()
                    end
                end
                for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do 
                    if v:IsA('Tool') then 
                        v:Deactivate()
                    end
                end
            -- else
            --     for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do 
            --         if v:IsA('Tool') then 
            --             v:Deactivate()
            --         end
            --     end
            end

            if getgenv().pilgrammedsettings['platformstanding'] == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true 
                end
            else
                if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false; 
                end
            end

            if getgenv().pilgrammedsettings['notifywhenmeteor'] == true then 
                if game:GetService("ReplicatedStorage"):FindFirstChild('GameInfo'):FindFirstChild('Meteor').Value == 65 then 
                    task.spawn(function()
                        azfakenotify('Meteor has spawned','untilClick')
                        task.wait(5)
                    end)
                end
            end

            if getgenv().pilgrammedsettings['noshadows'] == true then 
                game:GetService('Lighting').GlobalShadows = false;
            end
            if getgenv().pilgrammedsettings['nofog'] == true then 
                game:GetService('Lighting').FogEnd = 100000
            end
            if getgenv().pilgrammedsettings['nosky'] == true and game:GetService('Lighting'):FindFirstChildWhichIsA('Sky') then 
                game:GetService('Lighting'):FindFirstChildWhichIsA('Sky'):Destroy() -- SkyAmbient
            end
            if getgenv().pilgrammedsettings['gamemod'] then 
                game:GetService('Lighting').ColorShift_Top = Color3.fromRGB(255, 255, 255)
                game:GetService('Lighting').ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                game:GetService('Lighting').Ambient = Color3.fromRGB(255, 255, 255)
            end
            if getgenv().pilgrammedsettings['gamemod'] then 
                game:GetService('Lighting').Brightness = getgenv().pilgrammedsettings['brightness']
                game:GetService('Lighting').ExposureCompensation = getgenv().pilgrammedsettings['exposurecompensation'] -- make toggle for it
                
            end
            -- if infinitejumpattachment:IsPressed() == true then 
            --     getgenv().pilgrammedsettings['infinitejump'] = true
            --     game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
            --     local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').StateChanged:Connect(function(old,new)
            --         game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
            --     end)
            --     task.spawn(function()
            --         repeat task.wait() until getgenv().pilgrammedsettings['infinitejump'] == false 
            --         connection:Disconnect()
            --     end)
            -- else
            --     getgenv().pilgrammedsettings['infinitejump'] = false
            -- end







            if getgenv().pilgrammedsettings['infinitejump'] == true and infinitejumpattachment:IsPressed() == true then 
                game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').StateChanged:Connect(function(old,new)
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                end)
                task.spawn(function()
                    repeat task.wait() until infinitejumpattachment:IsPressed() == false 
                    connection:Disconnect() -- velocity
                end)
            end

            if getgenv().pilgrammedsettings['nofalldamage'] and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                getgenv().pilgrammedsettings['nofalldamage'] = nil 

                
                -- game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                -- local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPropertyChangedSignal('FloorMaterial'):Connect(function()
                --     game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').FloorMaterial = Enum.Material.Slate
                -- end)
                --     game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                -- end)
                task.spawn(function()
                    -- repeat task.wait(0.001) if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetState() == Enum.HumanoidStateType.Freefall then 
                    --     -- game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                    --     game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.PlatformStanding)
                    -- end until getgenv().pilgrammedsettings['nofalldamage'] == false 

                    repeat task.wait(0.001) 
                        
                        if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
                            game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):ChangeState(Enum.HumanoidStateType.PlatformStanding)
                        end
                        
                     until getgenv().pilgrammedsettings['nofalldamage'] == false 


                    -- connection:Disconnect()
                end)
            end
            task.spawn(function()
                local foundnpcs = nil
                for _,v in next, workspace.Mobs:GetChildren() do 
                    for k,c in next, v:GetChildren() do 
                        if c.Name == getgenv()['pilgrammedsettings']['selectednpc'] and c:FindFirstChildWhichIsA('Humanoid') and c:FindFirstChildWhichIsA('Humanoid').Health > 0 then 
                            foundnpcs = c
                            break -- function to rename alll humanoids to humanoid
                        end
                    end
                end
                if getgenv().pilgrammedsettings['farmnpc'] == true and foundnpcs and foundnpcs:FindFirstChildWhichIsA('Humanoid') and foundnpcs:FindFirstChildWhichIsA('Humanoid').Health > 0 and foundnpcs:FindFirstChild('HumanoidRootPart') then 
                    getgenv().pilgrammedsettings['farmnpc'] = nil;
                    if getgenv().pilgrammedsettings['tweenmode'] and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(getgenv().pilgrammedsettings['farmtween'],Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = foundnpcs:FindFirstChild('HumanoidRootPart').CFrame});
                        tween:Play() 
                        task.wait(getgenv().pilgrammedsettings['farmtween'])
                    end
                    
                    local function getRemovals()
                        local cancel = false;
                        if not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            cancel = true;
                        end;
                        if not foundnpcs then 
                            cancel = true;
                        end;
                        return cancel
                    end
                    repeat 
                        task.wait(0.01)
                        -- game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and foundnpcs and foundnpcs:FindFirstChild('HumanoidRootPart') then 
                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = foundnpcs:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(
                                getgenv().pilgrammedsettings['playerx'],
                                getgenv().pilgrammedsettings['playery'],
                                getgenv().pilgrammedsettings['playerz']
                            ) * CFrame.Angles(math.rad(getgenv().pilgrammedsettings['rotation']),0,0)
                        end
                    until getgenv().pilgrammedsettings['farmnpc'] == false or getgenv().loopsUnload == true or foundnpcs == nil or not foundnpcs:FindFirstChildWhichIsA('Humanoid') or foundnpcs:FindFirstChildWhichIsA('Humanoid').Health <=0  or not foundnpcs:FindFirstChild('HumanoidRootPart') or not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
                    
                    if getgenv().pilgrammedsettings['farmnpc'] == nil then 
                        getgenv().pilgrammedsettings['farmnpc'] = true
                        print('stopped farm')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
                    end
                -- elseif getgenv().pilgrammedsettings['farmnpc'] == true then 

                --     getgenv()['pilgrammedsettings']['selectednpc']
                end
            end)

            





            if getgenv().pilgrammedsettings['godmode'] == true  then 
                getgenv().pilgrammedsettings['godmode'] = nil
                task.spawn(function()
                    repeat task.wait(0.001)
                        game:GetService("ReplicatedStorage").Remotes.Roll:FireServer()
                        -- task.delay(.1,function()
                        -- if getgenv().pilgrammedsettings['alreadyfailtp'] == false and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and not game.Players.LocalPlayer.Character:FindFirstChild('IFrame') and getgenv().pilgrammedsettings['godmodefail'] == true then 
                        --     -- getgenv().pilgrammedsettings['godmodefail'] = nil
                        --     getgenv().pilgrammedsettings['alreadyfailtp'] = true
                        --     getgenv().pilgrammedsettings['storefailcframe'] = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame
                        --     game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv().pilgrammedsettings['failcframe']
                        --     task.spawn(function()
                        --         repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild('IFrame')
                        --         getgenv().pilgrammedsettings['alreadyfailtp'] = false
                        --         game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = getgenv().pilgrammedsettings['storefailcframe']
                        --     end)
                            
                        -- end
                        -- end)
                    until getgenv().pilgrammedsettings['godmode']== false
                end)
                -- task.spawn(function()
                --     repeat task.wait(0.001)
                --         game:GetService("ReplicatedStorage").Remotes.Roll:FireServer()
                --     until getgenv().pilgrammedsettings['godmode']== false
                -- end)
            end


            if getgenv().pilgrammedsettings['killaura'] == true then 
                getgenv().pilgrammedsettings['killaura'] = nil 
                repeat 
                    -- task.wait(1) -- not needed
                    for _,v in next,game:GetService("Workspace").Mobs:GetChildren() do 
                        for i,mob in next, v:GetChildren() do 
                            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and mob:FindFirstChild('HumanoidRootPart') and mob:FindFirstChild('Human') and mob:FindFirstChild('Human').Health >0 then 
                                local dist = (mob:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                if dist.Magnitude <= 20 then 
                                    for k,c in next, game.Players.LocalPlayer.Character:GetChildren() do 
                                        local slashmode = 1 
                                        if getgenv().pilgrammedsettings['killauram2'] == true then slashmode = 2 end
                                        if getgenv().pilgrammedsettings['notoolcd'] == false then 
                                            if c:FindFirstChild('Slash') then 
                                                c:FindFirstChild('Slash'):FireServer(slashmode)
                                            end
                                            if c:FindFirstChild('Shoot') then 
                                                c:FindFirstChild('Shoot'):FireServer(nil)
                                            end
                                            if c:FindFirstChild('Event') then 
                                                c:FindFirstChild('Event'):FireServer(nil)
                                            end
                                        else
                                            if c:IsA('Tool') then 
                                                c:Activate()
                                            end
                                        end
                                        task.wait(getgenv().pilgrammedsettings['attackauradelay'])--task.wait(.1)
                                    end
                                   
                                end
                            end
                        end
                    end
                    task.wait(0.1)
                until getgenv().pilgrammedsettings['killaura'] == false

            end
            if getgenv().pilgrammedsettings['chestfarm'] == true and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 
                getgenv().pilgrammedsettings['chestfarm'] = nil
                task.spawn(function()
                    for _,v in next, game:GetService("Workspace"):FindFirstChild('Chests'):GetChildren() do 
                        if getgenv().pilgrammedsettings['chestfarm'] == false then break end
                        if v:FindFirstChild('ProximityPrompt') then 
                            if getgenv()['pilgrammedsettings']['tweenchest'] == true then 
                                getgenv().pilgrammedsettings['chestfarm']  = nil
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                                local tween = game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),TweenInfo.new(getgenv()['pilgrammedsettings']['tweenspeed'],Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = v:FindFirstChild('Root').CFrame});
                                tween:Play()    
                                local completed = false ;
                                tween.Completed:Connect(function() completed = true; end)
                                repeat task.wait() until completed == true or getgenv().loopsUnload == true or getgenv()['pilgrammedsettings']['chestfarm'] == false
                                if completed == false then 
                                    tween:Cancel()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                                azfake.fireproximitypromt(v:FindFirstChild('ProximityPrompt'))
                            else
                                task.wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild('Root').CFrame 
                                local function firepromt(Obj, Amount, Skip)
                                    if Obj.ClassName == "ProximityPrompt" then 
                                        Amount = Amount or 1
                                        local PromptTime = Obj.HoldDuration
                                        if Skip then 
                                            Obj.HoldDuration = 0
                                        end
                                        for i = 1, Amount do 
                                            Obj:InputHoldBegin()
                                            if not Skip then 
                                                wait(Obj.HoldDuration)
                                            end
                                            Obj:InputHoldEnd()
                                        end
                                        Obj.HoldDuration = PromptTime
                                    else 
                                        error("userdata<ProximityPrompt> expected")
                                    end
    
                                end
                                -- firepromt(v:FindFirstChild('ProximityPrompt'))
                                azfake.fireproximitypromt(v:FindFirstChild('ProximityPrompt'))
                            end 
                            task.wait(getgenv().pilgrammedsettings['chestdelay']) --task.wait(getgenv())
                        end
                    end
                    if getgenv().pilgrammedsettings['chestfarm'] == nil then 
                        getgenv().pilgrammedsettings['chestfarm'] = true 
                    end
                end)

            end
            if getgenv()['pilgrammedsettings']['speedtoggle'] == true then 
                
                if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 


                    getgenv().pilgrammedsettings['speedtoggle'] = nil
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().pilgrammedsettings['speed']
                    local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPropertyChangedSignal('WalkSpeed'):Connect(function()-- getpropertychangedsignal could be used here 
                        game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().pilgrammedsettings['speed']
                    end) 

                    task.spawn(function()
                        repeat task.wait() until getgenv().pilgrammedsettings['speedtoggle'] == false or getgenv().loopsUnload == true 
                        connection:Disconnect()
                    end)

                end
            end
            if getgenv().pilgrammedsettings['nocooldown'] == true then 
                for _,v in next, game.Players.LocalPlayer.Character:GetChildren() do 
                    -- for i,cooldown in next, getgenv()['pilgrammedsettings']['registeredcooldowns'] do 
                    --     print(cooldown..' cooldown')
                    --     if v.Name:find(cooldown) then 
                    --         print(v.Name)
                    --         v:Destroy()
                    --     end
                    -- end
                    if table.find(getgenv()['pilgrammedsettings']['registeredcooldowns'],v.Name) then 
                        v:Destroy()
                    end
                end
            end
        end
    end)
elseif game.PlaceId == 5561268850 or game.PlaceId == 6312903733 then -- randomly generated drones
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')

    getgenv().randomdroidsettings = {
        instakill = false;
    }
    sector:AddButton('Teleport to dungeon',function()
        game:GetService('TeleportService'):teleport(6312903733)
    end)
    if game.PlaceId == 6312903733 then 
        sector:AddToggle('Insta Kill',false,function(xstate)
            getgenv().randomdroidsettings['instakill'] = xstate
        end)
    end
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('droids break end') break end 
            if getgenv().randomdroidsettings['instakill'] == true then 
                local dir = game:GetService("Workspace"):FindFirstChild('Room').Enemies
    
                for _,v in next, dir:GetChildren() do 
                    if v:FindFirstChild('HumanoidRootPart') then 
                        if isnetworkowner(v.PrimaryPart) then 
                            v:FindFirstChildWhichIsA('Humanoid').Health = 0
                            print('was owner')
                        end
                    end
                end  
            end
        end
    end)
elseif game.PlaceId == 8568266872 then  -- kill to save princess
    local tab = window:CreateTab(gameName)
    local secotor = tab:CreateSector('Cheats','left')
    getgenv().princesssettings = {
        instakill = false
    }
    secotor:AddToggle('Insta Kill',false,function(xstate)
        getgenv().princesssettings['instakill'] = xstate
    end)
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('princess break end') break end 
            if getgenv().princesssettings['instakill'] == true then 
                local dir = game:GetService("Workspace").Waves
                for _,c in next, dir:GetChildren() do 
                    for _,v in next, c:FindFirstChild('Enemy'):GetChildren() do 
                        if v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then 
                            if isnetworkowner(v.PrimaryPart) then 
                                v:FindFirstChildWhichIsA('Humanoid').Health = 0
                            end
                        end
                    end
                end    
            end
        end
    end)
elseif azfake.findintable_i(dungeon_quest_games,gameName) then 
    local tab = window:CreateTab(gameName)
    local sector = tab:CreateSector('Cheats','left')
    local botsector = tab:CreateSector('Cheats','right')
    local boteditsect = tab:CreateSector('Cheats','extra')
    getgenv().dungeonquestsettings = {
        instakill = false;
        selectedbot = '';
        usebotcommands = false;
        configcommands = false;
        configediting = '';
        config = {};
        adddelay = false;
        delay = 0;
        tpenemy = false;
        antiafk = false;
        tweenenemy = false;
        tweenspeed = 1;
        tpenemysafe = false;
        safedelay = 0;
        speed = false;
        speedval = 0;
    }
    sector:AddToggle('Insta Kill',false,function(xstate)
        getgenv().dungeonquestsettings['instakill'] = xstate
    end)
    sector:AddToggle('Teleport to Enemies',false,function(xstate)
        getgenv().dungeonquestsettings['tpenemy'] = xstate
    end)
    local tpsafe = sector:AddToggle('Teleport to Enemies Safe',false,function(xstate)
        getgenv().dungeonquestsettings['tpenemysafe'] = xstate
    end)
    local safedelay = sector:AddSlider('Safe Delay',0,1,10,100,function(xtstae)
        getgenv().dungeonquestsettings['safedelay'] = xtstae
    end)
    tpsafe:MakeVisibleIfActive(safedelay)
    local tweenenemy = sector:AddToggle('Tween to Enemies',false,function(xstate)
        getgenv().dungeonquestsettings['tweenenemy'] = xstate
    end);--tweenenemy:AddHint('Tweens to enemies')
    local tweenspeedslider = sector:AddSlider('Tween Speed',0,1,10,100,function(xtstae)
        getgenv().dungeonquestsettings['tweenspeed'] = xtstae
    end)
    tweenenemy:MakeVisibleIfActive(tweenspeedslider)
    sector:AddToggle('Anti afk',false,function(xstate) -- Aafk
        getgenv().dungeonquestsettings['antiafk'] = xstate
    end)
    sector:AddToggle('Walkspeed',false,function(xstate)
        getgenv().dungeonquestsettings['speed'] = xstate
    end)
    sector:AddSlider('Speed',0,70,250,1,function(xtstae)-- 240 maximum
        getgenv().dungeonquestsettings['speedval'] = xtstae
    end)
    botsector:AddTextbox('Auto Dungeon Bot','',function(xstate)
        getgenv().dungeonquestsettings['selectedbot'] = xstate
    end)
    sector:AddButton('Destroy Map',function()
        for _,v in next, workspace:GetChildren() do --descendants or loop through v children and destroy
            --if not table.find(game.Players:GetPlayers(),)
            if not game.Players:FindFirstChild(game.Players.LocalPlayer.Name) and v:IsA('Model') then 
                v:Destroy()
            end
        end
    end)
    game.Players.LocalPlayer.Idled:Connect(function()
        if getgenv().dungeonquestsettings['antiafk'] == true then 
            game:GetService("VirtualUser"):ClickButton2(Vector2.new())
        end
    end)
    -- check if txt isnt there
    -- add a toggle so you dont have to type extension name
    -- add a textbox for the extension ending it wants to add if the toggle for no extension name is on but the default is .txt
    --botsector:AddSeperator('Bot functions')
    local function compilesettings()
        local str = 'settings = {}'
        str = str:sub(1,string.len(str)-1)
        for _,v in next, getgenv().dungeonquestsettings['config'] do 
            -- {[1]=48444;} - {[1]=48444;
            --if str ~= '{' then str = str..';' end
            if type(v) == 'table' then 
                str = str..'{point=CFrame.new('..tostring(v['point'])..');'..'delay='..tostring(v['delay'])..'};'
            else
                str = str..'point=CFrame.new('..tostring(v)..');'
            end
            
        end
        str = str..'}\nreturn settings'
        return str
    end
    local function getsettings()
        return compilesettings --loadstring(compilesettings())()
    end
    local function uncompile(x)
        local str = x 
        local outcome = loadstring(x)();
        return outcome
    end
    botsector:AddButton('Run bot',function()
        local file = getgenv().dungeonquestsettings['selectedbot']
        if isfile(file) then 
            azfakenotify('Loading File: '..file,1)
            for _,v in next, getgenv().dungeonquestsettings['config'] do 
                task.wait(0.01)
                if type(v) == 'table' then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v['point']
                    task.wait(v['delay'])
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                end
            end
        else
            azfakenotify('File: '..file..' Is not recognised.',3)
        end
    end)
    botsector:AddButton('Load bot',function()
        local file = getgenv().dungeonquestsettings['selectedbot']
        if isfile(file) then 
            azfakenotify('Loading File: '..file,'untilClick')
            getgenv().dungeonquestsettings['config'] = uncompile(readfile(file)) --game:GetService('HttpService'):JSONDecode(readfile(file))
        else
            azfakenotify('File: '..file..' Is not recognised.',3)
        end
    end)
    botsector:AddButton('Save bot',function()
        local file = getgenv().dungeonquestsettings['selectedbot']
        if isfile(file) then 
            azfakenotify('Loading File: '..file,2)
            --uncompile(compilesettings()) --do --writefile(file,game:GetService('HttpService'):JSONEncode(getgenv().dungeonquestsettings['config']))
            writefile(file,compilesettings())
        else
            azfakenotify('File: '..file..' Is not recognised.',3)
        end
    end)
    botsector:AddSeperator()
    -- botsector:AddButton('Edit bot',function()
    --     local file = getgenv().dungeonquestsettings['selectedbot']
    --     if isfile(file) then 
    --         azfakenotify('Editing File: '..file,'untilClick')
    --         getgenv().dungeonquestsettings['config'] = uncompile(compilesettings()) -- compilesettings
    --     else
    --         azfakenotify('File: '..file..' Is not found.',3)
    --     end
    -- end)
    local createsavefile = botsector:AddButton('Create bot save file',function()
        local file = getgenv().dungeonquestsettings['selectedbot']
        if not isfile(file) then 
            writefile(file,'')
        else
            azfakenotify('File exists',1)
        end
    end)
    createsavefile:ActivateKnowledge();
    createsavefile:AddKnowledge('Creates the file')
    --botsector:AddSeperator('~')
    local bottgl = boteditsect:AddToggle('Bot commands',false,function(xstate)
        getgenv().dungeonquestsettings['usebotcommands'] = xstate
    end)
    local delay = boteditsect:AddToggle('Add Delay',false,function(xstate)
        getgenv().dungeonquestsettings['adddelay'] = xstate
    end)
    local tbdelay = boteditsect:AddTextbox('Delay','',function(xstate)
        if tonumber(xstate) then 
            getgenv().dungeonquestsettings['delay'] = tonumber(xstate)
        else
            azfakenotify('Filtered Input not accepted')
        end
    end)
    local displaydelaybutton = boteditsect:AddButton('Display Delay',function()
        azfakenotify('Delay: '..tostring(getgenv().dungeonquestsettings['delay']))
    end)
    delay:MakeVisibleIfActive(tbdelay)
    delay:MakeVisibleIfActive(displaydelaybutton)
    local resetbutton = boteditsect:AddButton('Reset Editing Config',function()
        getgenv().dungeonquestsettings['config'] = {}
    end)
    local addpoint = boteditsect:AddButton('Add Point',function()
        local index = 1 
        for _,v in next, getgenv().dungeonquestsettings['config']  do 
            index = index + 1 -- index = _ + 1 or 
        end
        if getgenv().dungeonquestsettings['adddelay'] == true then 
            getgenv().dungeonquestsettings['config'][index] = {
                point = game.Players.LocalPlayer.Character.PrimaryPart.CFrame;
                delay = getgenv().dungeonquestsettings['delay'];
            }
        else
            getgenv().dungeonquestsettings['config'][index] = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
        end
    end)
    addpoint:ActivateKnowledge()
    addpoint:AddKnowledge('Creates a point where you are standing')
    local removepoint = boteditsect:AddButton('Remove Previous Point',function()
        local index = 1 
        for _,v in next, getgenv().dungeonquestsettings['config']  do 
            index = _ --index = index + 1 -- index = _ + 1 or 
        end
        table.remove(getgenv().dungeonquestsettings['config'],index)
    end)
    bottgl:MakeVisibleIfActive(resetbutton)
    bottgl:MakeVisibleIfActive(addpoint)
    bottgl:MakeVisibleIfActive(removepoint)
    boteditsect:AddToggle('Bot config commands',false,function(xstate)
        getgenv().dungeonquestsettings['configcommands'] = xstate
    end)
    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if not getgenv().dungeonquestsettings['usebotcommands'] then return end
        if msg == '/e resetstatus' then 
            getgenv().dungeonquestsettings['config'] = {}
        elseif msg == '/e createpoint' then 
            local index = 1 
            for _,v in next, getgenv().dungeonquestsettings['config']  do 
                index = index + 1 -- index = _ + 1 or 
            end
            getgenv().dungeonquestsettings['config'][index] = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
        elseif msg == '/e deletepreviouspoint' then 
            local index = 1 
            for _,v in next, getgenv().dungeonquestsettings['config']  do 
                index = _ --index = index + 1 -- index = _ + 1 or 
            end
            table.remove(getgenv().dungeonquestsettings['config'],index)
        end
    end)
    local metahook;
    metahook = hookmetamethod(game,'__namecall',function(self,...)
        local args = {...}
        local call_type = getnamecallmethod();
        if call_type == 'GetState'  then 
            return Enum.HumanoidStateType.PlatformStanding
        elseif call_type == 'Kick' then 
            warn('Attempted to kick')
            return task.wait(math.huge)
        else
            return metahook(self,...)
        end
        return metahook(self,...)
    end)
    task.spawn(function()
        while task.wait() do 
            if getgenv().loopsUnload == true then print('princess break end') break end 


            if getgenv().dungeonquestsettings['speed'] == true then 
                if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 
                    getgenv().dungeonquestsettings['speed'] = nil
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().dungeonquestsettings['speedval']
                    local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPropertyChangedSignal('WalkSpeed'):Connect(function()-- getpropertychangedsignal could be used here 
                        game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().dungeonquestsettings['speedval']
                    end) 
                    task.spawn(function()
                        repeat task.wait() until getgenv().dungeonquestsettings['speed'] == false or getgenv().loopsUnload == true 
                        connection:Disconnect()
                    end)

                end
            end

            if getgenv().dungeonquestsettings['tpenemy'] == true then 
                --game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true
                getgenv().dungeonquestsettings['tpenemy'] = nil 
                task.spawn(function()
                    repeat 
                        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(function()
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end)
                        end
                        local dir = game:GetService("Workspace"):FindFirstChild('dungeon')
                        if dir then 
                            for _,c in next, dir:GetChildren() do 
                                if c:FindFirstChild('enemyFolder') then 
                                    for _,v in next,c:FindFirstChild('enemyFolder'):GetChildren() do 
                                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then  
                                            if getgenv().dungeonquestsettings['tweenenemy'] == true then 
                                                local tween = game:GetService('TweenService'):Create(
                                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
                                                    TweenInfo.new(getgenv().dungeonquestsettings['tweenspeed'],Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,7)}
                                                )
                                                tween:Play()
                                                -- task.spawn(function()
                                                --     repeat task.wait() until tweencompleted or not v:FindFirstChild('HumanoidRootPart')
                                                -- end)
                                            else
                                                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and getgenv().dungeonquestsettings['tpenemysafe'] == true  then 
                                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame *= CFrame.new(0,50,0)
                                                    task.wait(.1)
                                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,50,10)
                                                    task.wait(.1)
                                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,10)
                                                    task.wait(0.01)
                                                    task.wait(getgenv().dungeonquestsettings['safedelay'])
                                                else
                                                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,7)
                                                    end
                                                end
                                                
                                            end
                                            task.wait(.1)
                                        end 
                                    end
                                end 
                            end 
                        end  
                        local dir2 = game:GetService("Workspace"):FindFirstChild('enemies')
                        if dir2 then 
                            for _,v in next, dir2:GetChildren() do 
                                if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then  
                                    if getgenv().dungeonquestsettings['tweenenemy'] == true then 
                                        local tween = game:GetService('TweenService'):Create(
                                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'),
                                            TweenInfo.new(getgenv().dungeonquestsettings['tweenspeed'],Enum.EasingStyle.Linear,Enum.EasingDirection.Out),{CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,7)}
                                        )
                                        tween:Play()
                                    else
                                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and getgenv().dungeonquestsettings['tpenemysafe'] == true  then 
                                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame *= CFrame.new(0,50,0)
                                            task.wait(.1)
                                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,50,10)
                                            task.wait(.1)
                                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,10)
                                            task.wait(0.01)
                                            task.wait(getgenv().dungeonquestsettings['safedelay'])
                                        else
                                            if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                                                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = v:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,7)
                                            end
                                        end
                                        
                                    end
                                    task.wait(.1)
                                end 
                            end 
                        end  
                        task.wait()
                    until getgenv().dungeonquestsettings['tpenemy'] == false
                    --game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
                end)
            end
            if getgenv().dungeonquestsettings['instakill'] == true then 
                local dir = game:GetService("Workspace"):FindFirstChild('dungeon')
                if dir then 
                    for _,c in next, dir:GetChildren() do 
                        if c:FindFirstChild('enemyFolder') then 
                            for _,v in next,c:FindFirstChild('enemyFolder'):GetChildren() do 
                                if v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then 
                                    
                                    if isnetworkowner(v.PrimaryPart) then
                                        pcall(function()
                                            v:FindFirstChild('Head'):Destroy()
                                            v:FindFirstChildWhichIsA('Humanoid').Health = 0
                                            print('was owner')
                                            print(v.Name..' onw')
                                        end)
                                    end
                                end 
                            end
            
                        end 
            
                    end 
                end  
                local dir2 = game:GetService("Workspace"):FindFirstChild('enemies')
                if dir2 then 
                    for _,v in next, dir2:GetChildren() do 
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then  
                            if isnetworkowner(v.PrimaryPart) then
                                pcall(function()
                                    v:FindFirstChild('Head'):Destroy()
                                    v:FindFirstChildWhichIsA('Humanoid').Health = 0--DealDamage
                                    print('was owner')
                                    print(v.Name..' onw')
                                end)
                            end
                        end 
                    end 
                end 
            end
        end
    end)
elseif game.PlaceId == 12604352060 then -- arcane odyssey
    local function createLogger()
        pcall(function() if game.CoreGui:FindFirstChild('ChatLogger') then game.CoreGui:FindFirstChild('ChatLogger'):Destroy() end end)
        
        local ChatLogger = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Logs = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local tmp = Instance.new("Folder")
        local tmp_2 = Instance.new("TextLabel")
        
        --Properties:
        
        ChatLogger.Name = "ChatLogger"
        ChatLogger.Parent = game.CoreGui
        ChatLogger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Frame.Parent = ChatLogger
        Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Frame.BackgroundTransparency = 0.600
        Frame.Position = UDim2.new(0.707954645, 0, 0.372806996, 0)
        Frame.Size = UDim2.new(0, 458, 0, 285)
        
        UICorner.Parent = Frame
        
        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        TextLabel.BackgroundTransparency = 0.600
        TextLabel.Size = UDim2.new(0, 458, 0, 38)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = "Chat Logger"
        TextLabel.TextColor3 = Color3.fromRGB(54, 54, 54)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextStrokeTransparency = 9.000
        TextLabel.TextWrapped = true
        
        UICorner_2.Parent = TextLabel
        
        Logs.Name = "Logs"
        Logs.Parent = Frame
        Logs.Active = true
        Logs.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        Logs.BackgroundTransparency = 0.900
        Logs.BorderSizePixel = 0
        Logs.Position = UDim2.new(0.0218340605, 0, 0.164912283, 0)
        Logs.Size = UDim2.new(0, 436, 0, 230)
        Logs.ScrollBarThickness = 6
        
        UIListLayout.Parent = Logs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        tmp.Name = "tmp"
        tmp.Parent = Logs
        
        tmp_2.Name = "tmp"
        tmp_2.Parent = tmp
        tmp_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tmp_2.BackgroundTransparency = 1.000
        tmp_2.Size = UDim2.new(0, 429, 0, 46)
        tmp_2.Visible = false
        tmp_2.Font = Enum.Font.SourceSans
        tmp_2.Text = "[Player1][]: Hello"
        tmp_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        tmp_2.TextSize = 25.000
        tmp_2.TextWrapped = true
        tmp_2.TextXAlignment = Enum.TextXAlignment.Left
        game.CoreGui.ChatLogger.Frame.Active = true
    
        local UIS = game:GetService("UserInputService")
        local frame = game.CoreGui.ChatLogger.Frame
        
        local dragToggle = nil
        local dragSpeed = 0.1
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    createLogger()
    local function logIt(msg,plr)
        local xplus = 0
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,0)
        local add = 1
        -- for i=0, #game.CoreGui.ChatLogger.Frame.Logs:GetChildren() do 
        --     -- if i > 15 then 
        --     --     for i,v in pairs(game.CoreGui.ChatLogger.Frame.Logs:GetChildren()) do if v:IsA('TextLabel') then v:Destroy() end end
        --     -- end
        --     add -= 0.01
        --     if i > 20 then 
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 6
        --     else
        --         game.CoreGui.ChatLogger.Frame.Logs.CanvasSize += UDim2.new(0,0,0.5,0)
        --         xplus += 23.5
        --     end
    
        -- end
        game.CoreGui.ChatLogger.Frame.Logs.CanvasSize = UDim2.new(0,0,0,game.CoreGui.ChatLogger.Frame.Logs.UIListLayout.AbsoluteContentSize.Y+50)
        local x = game.CoreGui.ChatLogger.Frame.Logs.tmp.tmp:Clone();
        x.RichText = true;
        local name = ''--plr.Name --''
        local ourname = game.Players.LocalPlayer.Name--''
        -- for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.PlayerList.List:GetChildren()) do 
        --     if v:FindFirstChild('RealName') and v:FindFirstChild('RealName').Value ~= '' and v:FindFirstChild('RealName').Value == plr.Name and v:FindFirstChild('DisplayName') and v:FindFirstChild('DisplayName').Value ~= ''  then 
        --         name = v.DisplayName.Value
        --     end
        --     if v.RealName.Value == game.Players.LocalPlayer.Name then 
        --         ourname = v.DisplayName.Value
        --     end
        -- end -- Logs.ChildAdded
        -- could make it so for chakra sense it makes the colour blue; when hovered it changes to [CHAKRA SENSER]
        local splitName = string.split(msg,' ')
        game.CoreGui.ChatLogger.Frame.Logs.CanvasPosition += Vector2.new(0,10000000) --* xplus
        if string.lower(splitName[3]) == 'clipped' or string.lower(splitName[3]) == string.lower(game.Players.LocalPlayer.Name) then print('hard text') x.TextColor3 = Color3.fromRGB(255, 25, 86) end
        
        if game.Players:FindFirstChild(splitName[1]) and tostring(string.lower(splitName[3])) == string.lower(ourname:sub(1,string.len(splitName[3])))  then 
            Notify('','name was said',2)
            -- if game.ReplicatedStorage.Cooldowns:FindFirstChild(splitName[1]):FindFirstChild('Chakra Sense') then 
            --     task.spawn(function()
            --         local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
    
            --         Notification.Notify("AZFAKE", "We think somebody is watching;", "rbxassetid://4914902889");
            --     end)
            -- end
        end
        if splitName[1] == 'Picked' then 
            x.TextColor3 = Color3.fromRGB(255, 25, 86)
        end
        if splitName[1] == 'AZFAKE-SERVER' then 
            x.TextColor3 = Color3.fromRGB(100, 155, 255)
        end
        local text = ''
        for _, x in pairs(splitName) do if _ >= 3 then if _ == 3 then 
            text = x else
            text = text..' '..x 
        end end end
        x.Text = '['..name..']['..splitName[1]..']: '..text
        x.Parent = game.CoreGui.ChatLogger.Frame.Logs
        x.Visible = true
    end
    getgenv().istyping = false;
    game:GetService('UserInputService').InputBegan:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)
    game:GetService('UserInputService').InputEnded:Connect(function(key,istyping) --// could put it inside the while loop and check if its not loaded to load it again
        if istyping then getgenv().istyping = true  return end 
        getgenv().istyping = false --//could make it so it sets a global variable for holding a key to true instead of getstat
    end)

    local tab = window:CreateTab('Arcane Odyssey')
    local esptab = window:CreateTab('Esp')
    local sector = tab:CreateSector('Cheats','left')
    local tpsect = tab:CreateSector('Cheats','right')
    local espsector = esptab:CreateSector('Cheats','left')
    
    getgenv().arcaneodysseysettings = {
        chestesp = false;
        chestespcolour = Color3.new(255,255,255);
        autoopenchest = false;
        registeredchest = false;
        chestfarm = false;
        chestfarmdelay = 0.5;
        killaura = false;
        breaknpcs = false;
        npcs = {}; --{;}
        selectednpc = '';
        loadmap = false;
        godmode = false;
        specifiedteleports = {
            ['enchant guy'] = CFrame.new(5084.35791, 407.999908, 3117.66992, 0.819164038, -1.16481569e-09, -0.573559344, -8.65178595e-09, 1, -1.43874352e-08, 0.573559344, 1.67479826e-08, 0.819164038);
        };
        selectedteleport = nil;
        mapteleports = {};
        selectedmap = nil;
        loadnpcs = false;
        playeresp = false;
        playerespcolour = Color3.new(255,255,255);
        espframework = '{name}     {distance}     {health}';
        flying = false;
        flyspeed = 0;
        speedtoggle = false;
        speed = 0;
        noclip = false;
        noclipfunction = nil;
        improvedloadsetting = false;
        maps = {

        };
        selectedmap = '';
        loadmapfunction = nil; -- json file that loads configs by going through the table
        infinitestamina = false;
    }

    -- arcane odssey cehest esp
    sector:AddToggle('Kill Aura',false,function(xstate)
        getgenv().arcaneodysseysettings['killaura'] = xstate
    end)
    sector:AddToggle('Bring NPCs',false,function(xstate)
        getgenv().arcaneodysseysettings['breaknpcs'] = xstate
    end)

    
    sector:AddToggle('God Mode',false,function(xstate)
        getgenv().arcaneodysseysettings['godmode'] = xstate
    end)
    sector:AddToggle('Infinite Stamina',false,function(xstate)
        getgenv().arcaneodysseysettings['infinitestamina'] = xstate
    end)
    local improvedmethod = sector:AddToggle('Improved Loading Method',false,function(xstate)
        getgenv().arcaneodysseysettings['improvedloadsetting'] = xstate
    end)
    local mapareas = {}
    for _,v in next, getgenv().arcaneodysseysettings['maps'] do 

    end
    for _,v in next, workspace:WaitForChild('Map'):GetChildren() do 
        if v:FindFirstChild('Center') then 
            table.insert(getgenv().arcaneodysseysettings['maps'],v.Name)
        end
    end
    local dpd = sector:AddDropdown("Load Map Area", getgenv().arcaneodysseysettings['maps'], "", false, function(dropdownv)
        getgenv().arcaneodysseysettings['selectedmap'] = dropdownv -- could do instance or
    end) -- make option visible if dropdown is equal to
    local loadselectedmap = sector:AddButton('Load Selected Map',function()
        if getgenv().arcaneodysseysettings['selectedmap'] ~= '' and workspace:FindFirstChild('Map'):FindFirstChild(getgenv().arcaneodysseysettings['selectedmap']) and game.ReplicatedStorage:WaitForChild('RS'):WaitForChild('Remotes'):WaitForChild('Misc').OnTeleport then 
            if getgenv().arcaneodysseysettings['loadmapfunction'] ~= nil then 
            else
                for index, connection in next, getconnections(game.ReplicatedStorage.RS.Remotes.Misc.OnTeleport.OnClientEvent) do
                    local env = connection.Function and getfenv(connection.Function)
                
                    if env and tostring(rawget(env, "script")) == "Unloading" then
                        getgenv().arcaneodysseysettings['loadmapfunction'] = debug.getupvalue(connection.Function, 2)
                        break
                    end
                end
            end

            getgenv().arcaneodysseysettings['loadmapfunction'](workspace:FindFirstChild('Map'):FindFirstChild(getgenv().arcaneodysseysettings['selectedmap']).Center.Position)
        end
    end)

    improvedmethod:MakeVisibleIfActive(dpd)
    improvedmethod:MakeVisibleIfActive(loadselectedmap)

    sector:AddToggle('Load Map',false,function(xstate)
        getgenv().arcaneodysseysettings['loadmap'] = xstate
    end)
    sector:AddToggle('Load Npcs',false,function(xstate)
        getgenv().arcaneodysseysettings['loadnpcs'] = xstate
    end)





    local unloadDirectories = {

    }
    getgenv().RunAntiUnload = function()
        local connections = {}

        for _,mapfolder in next, workspace.Map:GetChildren() do 
            for i,obj in next, mapfolder:GetChildren() do 
                local oldparent = mapfolder
                local connection = obj:GetPropertyChangedSignal('Parent'):Connect(function(new)
                    if new ~= nil then 
                        print('Tried to move to '..new.Name..' with parent '..new.Parent.Name..' Object moving: '..obj.Name)
                        if new:IsA('Folder') and new.Parent.Name == 'RS' then 
                            obj.Parent = oldparent
                        end
                    else
                        obj.Parent = oldparent
                    end

                end)
                table.insert(connections,connection)
            end
            local addedconnection = mapfolder.ChildAdded:Connect(function(child)
                local oldparent = mapfolder
                local connection = child:GetPropertyChangedSignal('Parent'):Connect(function(new)
                    if new ~= nil then 
                        print('Tried to move to '..new.Name..' with parent '..new.Parent.Name..' Object moving: '..child.Name)
                        if child:IsA('Folder') and new.Parent.Name == 'RS' then 
                            obj.Parent = oldparent
                        end
                    else
                        child.Parent = oldparent
                        print('set parent to '..oldparent.Name)
                    end

                end)
                table.insert(connections,connection)
            end)
            table.insert(connections,addedconnection)
        end
        for _,npc in next, workspace.NPCs:GetChildren() do 
            for _,model in next, npc:GetChildren() do 
                local oldparent = model.Parent; -- npc
                local connection = model:GetPropertyChangedSignal('Parent'):Connect(function(new)
                    if new ~= nil then 
                        print('Tried to move np  to '..new.Name..' with parent '..new.Parent.Name..' npc moving: '..model.Name) -- pcall
                        model.Parent = oldparent
                    else
                        model.Parent = oldparent
                    end
                end)
                table.insert(connections,connection)
            end
            local addedconnection = npc.ChildAdded:Connect(function(model)
                local oldparent = npc;
                local connection = model:GetPropertyChangedSignal('Parent'):Connect(function(new)
                    if new ~= nil then 
                        print('Tried to move np  to '..new.Name..' with parent '..new.Parent.Name..' npc moving: '..model.Name) -- pcall
                        model.Parent = oldparent
                    else
                        model.Parent = oldparent
                    end
                end)
                table.insert(connections,connection)
            end)
            table.insert(connections,addedconnection)
        end
        return connections
    end
    sector:AddToggle('Anti Unload Map',false,function(xstate)
        getgenv().arcaneodysseysettings['antiunloadloadmap'] = xstate
        if getgenv().arcaneodysseysettings['antiunloadloadmap'] == true then 
            local cons = getgenv().RunAntiUnload()

            task.spawn(function()
                repeat task.wait() until getgenv().loopsUnload == true or getgenv().arcaneodysseysettings['antiunloadloadmap'] == false
                for _,v in next, cons do 
                    v:Disconnect()
                    table.remove(cons,_) -- global connections
                end
            end)
        end
    end)




    sector:AddLabel('Risky Cheats')
    sector:AddToggle('Chest Farm',false,function(xstate)
        getgenv().arcaneodysseysettings['chestfarm'] = xstate
    end)
    sector:AddSlider('Chest Teleport Delay',0,0.5,100,100,function(xstate)
        getgenv().arcaneodysseysettings['chestfarmdelay'] = xstate
    end)
    sector:AddToggle('Auto Open Chest',false,function(xstate)
        getgenv().arcaneodysseysettings['autoopenchest'] = xstate
    end)
    for _,v in next, workspace.NPCs:GetChildren() do 
        table.insert(getgenv().arcaneodysseysettings['npcs'],v.Name) -- could insert {enemy = v}
        -- table.insert(getgenv().arcaneodysseysettings['npcs'],v)
    end
    
    for _,v in next, workspace.Map:GetChildren() do 
        if v:FindFirstChild('Center') then-- Chests
            table.insert(getgenv().arcaneodysseysettings['mapteleports'],v.Name) -- could insert {enemy = v}
        end

        -- table.insert(getgenv().arcaneodysseysettings['npcs'],v)
    end
    tpsect:AddDropdown("NPC Teleportation", getgenv().arcaneodysseysettings['npcs'], "", false, function(dropdownv)
        getgenv().arcaneodysseysettings['selectednpc'] = dropdownv -- could do instance or
    end)
    tpsect:AddTextbox("NPC Name", "", function(xtstae)
        for _,v in next, workspace.NPCs:GetChildren() do 
            if v.Name:sub(1,string.len(xtstae)) == xtstae then 
                getgenv().arcaneodysseysettings['selectednpc'] = v.Name
                -- getgenv().arcaneodysseysettings['selectednpc'] = v
                break
            end
        end
    end)
    tpsect:AddButton('Teleport To Npc',function()
        if getgenv().arcaneodysseysettings['selectednpc'] ~= '' then 
            for _,npc in next, workspace.NPCs:GetChildren() do 
                if npc:FindFirstChildWhichIsA('Model') and npc.Name == getgenv().arcaneodysseysettings['selectednpc'] then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = npc:FindFirstChildWhichIsA('Model'):FindFirstChild('HumanoidRootPart').CFrame
                    break
                end
            end
        end
    end)
    tpsect:AddSeperator()
    local specifiedteleports = {}
    for _,v in next, getgenv().arcaneodysseysettings['specifiedteleports'] do 
        table.insert(specifiedteleports,_)
    end
    tpsect:AddDropdown("cframe teleport", specifiedteleports, "", false, function(dropdownv)
        getgenv().arcaneodysseysettings['selectedteleport'] = dropdownv -- could do instance or
    end)
    tpsect:AddButton('teleport to cframe',function()
        if getgenv().arcaneodysseysettings['selectedteleport'] ~= nil then 
            local found = false;
            local cframeofcframe = nil;
            for _,v in next, getgenv().arcaneodysseysettings['specifiedteleports'] do 
                if _ == getgenv().arcaneodysseysettings['selectedteleport'] then 
                    found = true;
                    cframeofcframe = v;
                end
            end
            if found == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')  then 
                game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = cframeofcframe
            end

        end
    end)
    tpsect:AddDropdown("Map Teleport", getgenv().arcaneodysseysettings['mapteleports'], "", false, function(dropdownv)
        getgenv().arcaneodysseysettings['selectedmap'] = dropdownv -- could do instance or
    end)
    tpsect:AddButton('Teleport to map',function()
        if getgenv().arcaneodysseysettings['selectedmap'] ~= nil then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild('Map'):FindFirstChild(getgenv().arcaneodysseysettings['selectedmap']):FindFirstChild('Center').CFrame * CFrame.new(0,6,0)
        end
    end)
    -- sector:AddButton('Inf Cash',function()
    --     if workspace.NPCs.Manni:FindFirstChild('Manni') then 
    --         local ohInstance1 = workspace.NPCs.Manni.Manni
    --         local ohString2 = "{\"Level\":1,\"Name\":\"Red apple\",\"Amount\":1}"
    --         local ohString3 = ""
    --         local ohNumber4 = -10000
    --         game:GetService("ReplicatedStorage").RS.Remotes.Misc.BuyItem:InvokeServer(ohInstance1, ohString2, ohString3, ohNumber4)
    --     else
    --         azfakenotify('Has to be close to manny',5)
    --     end
    -- end)
    sector:AddButton('Rejoin',function()
        game:GetService('TeleportService'):teleport(game.PlaceId)
    end)


    -- sector:AddButton('Infinite Level',function()
    --     task.spawn(function()
    --         azfakenotify('credits: skidnik',2)
    --         azfakenotify('you need explosive barrel',2)
    --         azfakenotify('this can crash you',5)
    --         local replicatedStorage = game:GetService("ReplicatedStorage");
    --         local npcs = Workspace.NPCs;
    --         local carryRemote = replicatedStorage.RS.Remotes.Misc.Carry;
            
    --         for i,v in next, npcs:GetChildren() do
    --             local shopName = v:FindFirstChild("Job",true);
    --             if not shopName or shopName.Value ~= "Shipwright" then continue; end
    --             task.spawn(function()
    --                 for i = 1, 1e4 do 
    --                     pcall(function()
    --                         carryRemote:FireServer("Sell",v.Model.Value)
    --                     end)
    --                 end
    --             end)
    --         end
    --     end)
    -- end)

    
    local speedtgl = sector:AddToggle('Speed',false,function(xstate)
        getgenv().arcaneodysseysettings['speedtoggle'] = xstate
    end)


    local ToggleBindFlySpeed = sector:AddToggle("Fly", false, function(e)
        getgenv()['arcaneodysseysettings']['flying'] = e
        if getgenv()['arcaneodysseysettings']['flying'] == false  then -- and getgenv().istyping == false
            -- getgenv().CFloop:Disconnect()
            --game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            local Head = game.Players.LocalPlayer.Character:WaitForChild("Head")
            Head.Anchored = false
            -- getgenv().CFloop = nil
        elseif getgenv()['arcaneodysseysettings']['flying'] == true and getgenv().istyping == false then

            Players = game.Players
            -- getgenv().flying = true
            task.spawn(function()
                repeat wait()
                until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                local mouse = game.Players.LocalPlayer:GetMouse()
                repeat wait() until mouse
                local plr = game.Players.LocalPlayer
                local torso = plr.Character:WaitForChild('HumanoidRootPart')
                local deb = true
                local ctrl = {f = 0, b = 0, l = 0, r = 0}
                local lastctrl = {f = 0, b = 0, l = 0, r = 0}
                local maxspeed = getgenv()['arcaneodysseysettings']['flyspeed']
                local speed = maxspeed  
                function Fly()
                    local bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                    bv.velocity = Vector3.new(0,0,0)
                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                    repeat task.wait(0.01)
                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild('exploitation') then 
                            bv = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"));bv.Name ='exploitation'
                            bv.velocity = Vector3.new(0,0,0)
                            bv.maxForce = Vector3.new(9e9, 9e9, 9e9) -- 9e9
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                            local prevRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
                            speed = getgenv()['arcaneodysseysettings']['flyspeed'] --Options.FlySpeedSlide.Value
                            maxspeed = getgenv()['arcaneodysseysettings']['flyspeed']
                            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                                speed = maxspeed * 2
                                -- if speed > maxspeed then
                                --     speed = maxspeed
                                -- end
                                if speed ~= maxspeed * 10 then
                                    speed = maxspeed * 2
                                end
                            elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                                speed = 0
                                if speed < 0 then
                                    speed = 0
                                end
                            end
                                -- elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                            --     bv.velocity = ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector  )) *speed/2
                            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                                bv.velocity = (( game.Workspace.CurrentCamera.CoordinateFrame.lookVector  *  (ctrl.f+ctrl.b)  )) * speed -- ((game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p))
                                -- lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                                if (ctrl.r) ~= 0  then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.r = ctrl.r - ctrl.l
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector  )) * speed
                                end
                                if (ctrl.l) ~= 0 then 
                                    --repeat task.wait(0.005) until game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation ~= prevRotation
                                    ctrl.l = ctrl.l - ctrl.r
                                    bv.velocity += (( game.Workspace.CurrentCamera.CoordinateFrame.RightVector    ))  * -speed
                                end
    
                            else
                                bv.velocity = Vector3.new(0,0,0)
                            end
                                --* CFrame.new((ctrl.l+ctrl.r),0,0) -- *50*speed/maxspeed * Vector3.new(0,0,0) --  
                        end

                    until getgenv()['arcaneodysseysettings']['flying']  == false or getgenv().loopsUnload == true

                    ctrl = {f = 0, b = 0, l = 0, r = 0}
                    lastctrl = {f = 0, b = 0, l = 0, r = 0}
                    speed = 0
                    bv:Destroy()
                    plr.Character:WaitForChild('Humanoid').PlatformStand = false
                    print('stop flying')
                end
                mouse.KeyDown:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 1
                    elseif key:lower() == "s" then
                        ctrl.b = -1
                    elseif key:lower() == "a" then
                        ctrl.l = -1
                    elseif key:lower() == "d" then
                        ctrl.r = 1
                    end
                end)
                mouse.KeyUp:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 0
                        speed = 0
                    elseif key:lower() == "s" then
                        ctrl.b = 0
                    elseif key:lower() == "a" then
                        ctrl.l = 0
                    elseif key:lower() == "d" then
                        ctrl.r = 0
                    end
                end)
                Fly()  
            end)
        end
    end)

    local ToggleBindNoclip= sector:AddToggle("Noclip", false, function(e)
        getgenv()['arcaneodysseysettings']['noclip'] = e 
        if getgenv()['arcaneodysseysettings']['noclip']  ==false and getgenv().istyping == false then
            getgenv()['arcaneodysseysettings']['noclipfunction']:Disconnect()
        elseif getgenv()['arcaneodysseysettings']['noclip']  == true and getgenv().istyping == false then --  
            task.wait(0.1)
            local function NoclipLoop()
                pcall(function()
                    if getgenv()['arcaneodysseysettings']['noclip']  == true and game.Players.LocalPlayer.Character  and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health >= 0 then
                        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            pcall(function()
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end)
                        end
                    else
                        --getgenv()['pilgrammedsettings']['noclip'] = false -- if it was a global var like azfakeglobaltables[bloodlines]
                        -- it would enable it but wont be in the game
                        -- the games loop wouldnt run because it only recognises it in pilgrammed
                        getgenv().arcaneodysseysettings['noclip'] = false;
                        -- ToggleBindNoclip:Set(false)
                    end
                end)
            end
            getgenv()['pilgrammedsettings']['noclipfunction']  = game:GetService('RunService').Stepped:Connect(NoclipLoop)
        end
    end)
    sector:AddSlider("Speed", 0, 0, 250, 1, function(State)
        getgenv().arcaneodysseysettings['speed'] = State
    end)
    sector:AddSlider("Fly", 0, 0, 250, 1, function(State)
        getgenv().arcaneodysseysettings['flyspeed'] = State
    end)



    getgenv().AssignChestEsp = function(v)
        local sectionesp = Drawing.new('Text')
        sectionesp.Visible = false
        sectionesp.Center = true 
        sectionesp.Outline = true 
        sectionesp.Font = 2 
        sectionesp.Size = 13
        sectionesp.Color = Color3.new(5,0,0)
        sectionesp.Text = '<>'
        local function updPosition()
            local keeprunning = nil 
            local cam = workspace.CurrentCamera
            keeprunning = game:GetService('RunService').RenderStepped:Connect(function() -- global loop
                local vect,onscreen = cam:worldToViewportPoint(v.Position)
                local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local isactive = sectionesp['__OBJECT_EXISTS']
                if onscreen and isactive then 
                    sectionesp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,15)
                    sectionesp.Visible = true
                    sectionesp.Text = 'Chest: '..math.floor(distance)..'studs'
                    sectionesp.Color = getgenv().arcaneodysseysettings['chestespcolour']
                elseif not onscreen and isactive  then
                    sectionesp.Visible = false
                end -- chesp
                if getgenv().loopsUnload == true then 
                    print('keep running chest esp disconnect') 
                    pcall(function()
                        sectionesp:Remove(); 
                    end)
                    keeprunning:Disconnect() 
                end -- ; - :  
                if getgenv().arcaneodysseysettings['chestesp'] == false then 
                    print('keep running chest esp disconnect') 
                    pcall(function()
                        sectionesp:Remove(); 
                    end) 
                    keeprunning:Disconnect() 
                end
            
                -- if getgenv().pilgrammedsettings['savecpu'] then 
                --     -- if dist check if bigger than savecpudistance
                --     -- 
                --     if distance > getgenv().pilgrammedsettings['savecpudistance'] and isactive == true then 
                --         sectionesp:Remove() -- table insert removedesps,v
                --     else
                --         if not isactive  then 
                --             sectionesp = Drawing.new('Text')
                --             sectionesp.Visible = false
                --             sectionesp.Center = true 
                --             sectionesp.Outline = true 
                --             sectionesp.Font = 2 
                --             sectionesp.Size = 13
                --             sectionesp.Color = Color3.new(5,0,0)
                --             sectionesp.Text = '<>'
                --         end
                --     end
                -- end
            end)
        end -- add to global connections
        coroutine.wrap(updPosition)()
    end
    getgenv().chestespfunction = function()
        local connections = {}
        for _,v in next, game:GetService("Workspace").Map:GetChildren() do 
            if v:FindFirstChild('Chests') then 
                for k,chest in next, v:FindFirstChild('Chests'):GetChildren() do 
                    getgenv().AssignChestEsp(chest:FindFirstChildWhichIsA('MeshPart'))
                end
                local ctn; ctn = v:FindFirstChild('Chests').ChildAdded:Connect(function(chest) -- chechestst
                    getgenv().AssignChestEsp(chest:FindFirstChildWhichIsA('MeshPart'))
                end)
                table.insert(ctn,connections)
            end
        end
        return connections
    end;

    local cam = workspace.CurrentCamera
    local worldToViewportPoint = cam.worldToViewportPoint
    local head_offset =  Vector3.new(0,1.5,0)
    local leg_offset = Vector3.new(0,10,0)
    getgenv()['arcaneodysseysettings'].CreatePlayerEsp = function(v)
        -- print(v.Name)
        task.wait(0.1)
        -- 
            local esp = Drawing.new('Text')
            esp.Visible = false
            esp.Center = true 
            esp.Outline = true 
            esp.Font = 2 
            esp.Size = 13
            esp.Color = Color3.new(5,0,0)
            esp.Text = 'SEXY'

            local tracer = Drawing.new('Line')
            tracer.Visible = false
            tracer.Color = Color3.new(1,0,0)
            tracer.Thickness = 1 
            tracer.Transparency = 1 
            
            
            local box_o = Drawing.new('Square')
            box_o.Visible = false
            box_o.Color = Color3.new(0,0,0)
            box_o.Thickness = 2
            box_o.Transparency =1 
            box_o.Filled = false
            
            local box = Drawing.new('Square')
            box.Visible = false
            box.Color = Color3.new(1,0,0)
            box.Thickness = 1.5
            box.Transparency =1 
            box.Filled = false
        
            local hb_o = Drawing.new('Square')
            hb_o.Visible = false
            hb_o.Color = Color3.new(0,0,0)
            hb_o.Thickness = 1
            hb_o.Transparency =1 
            hb_o.Filled = false
            
            local hb = Drawing.new('Square')
            hb.Visible = false
            hb.Color = Color3.new(1,0,0)
            hb.Thickness = 1
            hb.Transparency =1 
            hb.Filled = true
            local health = Drawing.new('Text')
            health.Visible = false
            local distancex = Drawing.new('Text')
            distancex.Visible = false
        local function rootesp()
            local xkeeptracer
            local plsstoptracer = false
            cam = workspace.CurrentCamera
            xkeeptracer = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.2)
                if v and v.Character and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer and v.Character.Humanoid.Health >0 then 
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    if onscreen and getgenv()['arcaneodysseysettings']['playeresp'] and getgenv().tracers and tracer then 
                        tracer.From = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/1)
                        tracer.To = Vector2.new(vect.X,vect.Y)
                        tracer.Visible = true
                    else
                        tracer.Visible = false
                    end
                    if not v or getgenv().loopsUnload == true then 
                        plsstoptracer = true
                    end
                elseif not v or getgenv().loopsUnload == true or plsstoptracer then 
                    xkeeptracer:Disconnect()
                    if tracer then 
                        pcall(function()
                            tracer:Remove()
                        end)
                    end
                else
                    tracer.Visible = false
                end
            end) 
        end
        local function boxroot()
            local xkeeprunning 
            xkeeprunning = game:GetService('RunService').RenderStepped:Connect(function()
                task.wait(0.1)
                if v.Character and v.Character:FindFirstChild('Head') and v.Character:FindFirstChild('Humanoid') and v.Character:FindFirstChild('HumanoidRootPart') and v ~= game.Players.LocalPlayer  then  -- and v.Character.Humanoid.Health >0
                    local vect,onscreen = cam:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    
                    local vroot = v.Character.HumanoidRootPart
                    local head = v.Character.Head
                    
                    local rootpos,rootvis = worldToViewportPoint(cam,vroot.Position)
                    local distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').Position).Magnitude
                    if distance < 30 and distance > 5 then head_offset = Vector3.new(0,1.2,0); leg_offset = Vector3.new(0,5,0) 
                    elseif distance < 100 and distance > 30 then head_offset = Vector3.new(0,1,0); leg_offset = Vector3.new(0,8,0)  end
                    local headpos = worldToViewportPoint(cam,vroot.Position + head_offset)
                    local legpos = worldToViewportPoint(cam,vroot.Position - leg_offset)
                    
                    if onscreen and getgenv()['arcaneodysseysettings']['playeresp'] and box then 
                        cam = workspace.CurrentCamera
                        --print('e: '..cam.ViewportSize.X..' '..tostring(rootpos)..' '..tostring(headpos)..' '..tostring(box_o))

    
                        if box_o and cam.ViewportSize and rootpos and headpos then 
                            box_o.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box_o.Position = Vector2.new(rootpos.X - box_o.Size.X / 1.5, rootpos.Y - box_o.Size.Y / 2)
                            box_o.Visible = true 
                        end
                        if box then 
                            box.Size = Vector2.new(cam.ViewportSize.X/2/rootpos.Z,headpos.Y - legpos.Y)
                            box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - box.Size.Y / 2)
                            box.Visible = true
                        end

                        hb_o.Size = Vector2.new(2,headpos.Y - legpos.Y)
                        hb_o.Position = box_o.Position - Vector2.new(6,0)
                        hb_o.Visible = true
                        hb.Size = Vector2.new(2,(headpos.Y - legpos.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0 , v.Character.Humanoid.MaxHealth) ))
                        hb.Position = Vector2.new(box.Position.X - 6,box.Position.Y + (1/hb.Size.Y))
                        hb.Color = Color3.fromRGB(255-255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),255/(v.Character.Humanoid.MaxHealth /v.Character.Humanoid.Health ),0)
                        hb.Visible = true

                        -- local Talents = #v.Backpack:GetChildren()-1
                        -- local Power = Talents--#Talents-1
                        esp.Position = Vector2.new(vect.X,vect.Y ) + Vector2.new(0,-15)
                        esp.Color = getgenv()['arcaneodysseysettings']['playerespcolour']
                        local preframework = getgenv()['arcaneodysseysettings']['espframework']
                        
                        preframework =string.gsub(
                            preframework,
                            '{name}',
                            v.Name
                        )
                        preframework = string.gsub(
                            preframework,
                            '{distance}',
                            tostring(math.floor(distance))..'s'
                        )
                        preframework = string.gsub(
                            preframework,
                            '{health}',
                            math.floor(v.Character.Humanoid.Health)..'/'..math.floor(v.Character.Humanoid.MaxHealth)--..' '..(math.floor(v.Character.Humanoid.Health) /  math.floor(v.Character.Humanoid.MaxHealth) * 100)..'%' -- add percentage
                        )
                        esp.Text = preframework
                        if getgenv()['arcaneodysseysettings']['playeresp'] == true then esp.Visible = true end
                     
                    else
                        pcall(function()
                            box.Visible = false
                        end)
                        pcall(function()
                            box_o.Visible = false
                        end)
                        pcall(function()
                            hb.Visible = false
                        end)
                        pcall(function()
                            hb_o.Visible = false
                        end)
                        pcall(function()
                            esp.Visible = false
                        end)
                        pcall(function()
                            distancex.Visible = false 
                        end)
                        pcall(function()
                            health.Visible = false
                        end)
                       
                        
                        
                    end
                end
                if not game.Players:FindFirstChild(v.Name) or getgenv().loopsUnload == true or getgenv()['arcaneodysseysettings']['playeresp'] == false then 
                    xkeeprunning:Disconnect()
                    pcall(function()
                        box:Remove()
                    end)
                    pcall(function()
                        box_o:Remove()
                    end)
                    pcall(function()
                        hb:Remove()
                    end)
                    pcall(function()
                        hb_o:Remove()
                    end)
                    pcall(function()
                        esp:Remove()
                    end)
                    pcall(function()
                        distancex:Remove()
                    end)
                    pcall(function()
                        health:Remove()
                    end)
                end
            end) 
        end
        task.spawn(function()
            coroutine.wrap(rootesp)()
            coroutine.wrap(boxroot)()
        end)

    end

    -- arc - arcaneodysseysettings


    espsector:AddToggle('Player Esp',false,function(xstate)
        getgenv().arcaneodysseysettings['playeresp'] = xstate
        for _,v in next, game:GetService('Players'):GetPlayers() do 
            if getgenv()['arcaneodysseysettings']['playeresp'] == true then 
                getgenv()['arcaneodysseysettings'].CreatePlayerEsp(v)
            end 
        end   
    end)
    espsector:AddToggle('Chest Esp',false,function(xstate)
        getgenv().arcaneodysseysettings['chestesp'] = xstate
        if getgenv().arcaneodysseysettings['chestesp'] == true then 
            local chestaddeds = getgenv().chestespfunction()
            task.spawn(function()
                repeat task.wait() until getgenv().arcaneodysseysettings['chestesp'] == false or getgenv().loopsUnload == true 
                for _,v in next, chestaddeds do 
                    v:Disconnect()
                end
            end)
        end
    end)

    espsector:AddColorpicker('Chest Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().arcaneodysseysettings['chestespcolour'] = xstate
    end)

    espsector:AddColorpicker('Player Colour',Color3.fromRGB(255, 255,255),function(xstate)
        getgenv().arcaneodysseysettings['playerespcolour'] = xstate
    end)
    








    local metahook;
    metahook = hookmetamethod(game,'__namecall',function(self,...)
        local args = {...}
        local call_type = getnamecallmethod();
        if call_type == 'DealWeaponDamage'  then 
            if args[3] and game.Players.LocalPlayer.Character ~= nil and args[3] == game.Players.LocalPlayer.Character and getgenv().arcaneodysseysettings['godmode'] then 
                return
            end 
            -- metahook(self,...)
            -- metahook(self,...)
            -- metahook(self,...)
            -- return metahook(self,unpack({
            --     1;args[2];args[3];args[4];args[5]
            -- }))
        elseif call_type == 'FireServer' and self.Name == 'StaminaCost' and getgenv().arcaneodysseysettings['infinitestamina'] == true then 
            args[1] = 0
            return metahook(self,unpack(args))
        end
        return metahook(self,...)
    end)
    -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

    -- local ohNumber1 = 0
    -- local ohInstance2 = workspace["8qxl0"]
    -- local ohInstance3 = workspace.Enemies["Rookie Pirate"]
    -- local ohInstance4 = workspace["8qxl0"]["Old Dagger"]
    -- local ohString5 = "Slash"

    -- game:GetService("ReplicatedStorage").RS.Remotes.Combat.DealWeaponDamage:FireServer(ohNumber1, ohInstance2, ohInstance3, ohInstance4, ohString5)

    local metaindex;
    metaindex = hookmetamethod(game,'__index',newcclosure(function(self,property)
        if tostring(self) == 'UnloadAt' and tostring(property) == 'Value' and getgenv().arcaneodysseysettings['loadmap'] == true then 
            return math.huge 
        elseif tostring(self) == 'UnloadDetailsAt' and tostring(property) == 'Value' and getgenv().arcaneodysseysettings['loadmap'] == true then 
            return math.huge
        end
        return metaindex(self,property)
    end))



    task.spawn(function()
        while task.wait(0.01) do 
            if getgenv().loopsUnload == true then print('odyssey break end') break end

            -- if getgenv().arcaneodysseysettings['godmode'] == true then 
            --     local ohNumber1 = 0.001
            --     local ohString2 = "Dodge"

            --     game:GetService("ReplicatedStorage").RS.Remotes.Combat.StaminaCost:FireServer(ohNumber1, ohString2)
            -- end
            if getgenv()['arcaneodysseysettings']['speedtoggle'] == true then 
                
                if game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 then 
                    getgenv().arcaneodysseysettings['speedtoggle'] = nil
                    game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().arcaneodysseysettings['speed']
                    local connection; connection = game.Players.LocalPlayer.Character:FindFirstChild('Humanoid'):GetPropertyChangedSignal('WalkSpeed'):Connect(function()-- getpropertychangedsignal could be used here 
                        game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').WalkSpeed = getgenv().arcaneodysseysettings['speed']
                    end) 
                    task.spawn(function()
                        repeat task.wait() until getgenv().arcaneodysseysettings['speedtoggle'] == false or getgenv().loopsUnload == true 
                        connection:Disconnect()
                    end)

                end
            end
            if getgenv().arcaneodysseysettings['loadmap'] == true then 
                for _,v in next, game.ReplicatedStorage.RS:GetChildren() do 
                    -- local success = pcall(string.split,v.Name,'Unload')
                    -- print(success)
                    local unloadsplit = string.split(v.Name,'Unload');
                    local RegistrationDirectory = {
                        ['Enemies'] = workspace.Enemies;
                        ['Bosses'] = workspace.Enemies;
                    }
                    local wasfound = false
                    if unloadsplit[1] ~= nil and unloadsplit[2] ~= nil then 
                        wasfound = true;
                        local foundreg,regvalue = false,nil
                        for reg,val in next, RegistrationDirectory do 
                            if unloadsplit[2] == reg then 
                                foundreg = true;
                                regvalue = val;
                                break
                            end
                        end
                        if foundreg == true then 
                            for k,c in next, v:GetChildren() do 
                                c.Parent = regvalue;
                            end
                        else
                            if unloadsplit[2] == 'Islands' then 
                                for i,mapfolder in next, v:GetChildren() do -- function to unpack folder and put all its children into another
                                    local splitwithout = string.split(mapfolder.Name,'_')
                                    -- print(splitwithout)
                                    if workspace.Map:FindFirstChild(splitwithout[1]) then 
                                        for kc,c in next, mapfolder:GetChildren() do 
                                            c.Parent = workspace.Map:FindFirstChild(mapfolder.Name)
                                        end
                                    else

                                        print('couldnt find map')
                                    end
                                end
                            end
    
                        end
                        -- if foundreg == true then 
                        --     for k,c in next, v:GetChildren() do 
                        --         c.Parent = regvalue;
                        --     end
                        -- else
                        --     if unloadsplit[2] == 'Islands' then 
                        --         for i,mapfolder in next, v:GetChildren() do -- function to unpack folder and put all its children into another
                        --             local splitwithout = string.split(mapfolder.Name,'_')
                        --             -- print(splitwithout)
                        --             if workspace.Map:FindFirstChild(splitwithout[1]) then 
                        --                 for kc,c in next, mapfolder:GetChildren() do 
                        --                     c.Parent = workspace.Map:FindFirstChild(mapfolder.Name)
                        --                 end
                        --             else

                        --                 print('couldnt find map')
                        --             end
                        --         end
                        --     end
                        -- end
                       -- local found = azfake.find(v,{''})
 
                    end
                    if wasfound == false then 
                        local foundreg,regvalue = false,nil
                        for reg,val in next, RegistrationDirectory do 
                            if v.Name == reg then 
                                foundreg = true;
                                regvalue = val;
                                break
                            end
                        end
                        if foundreg == true then 
                            for k,c in next, v:GetChildren() do 
                                c.Parent = regvalue;
                            end
                        end
                    end
                end
            end

            if getgenv().arcaneodysseysettings['loadnpcs'] == true then -- only run when loadmap runs
                for _,v in next, game.ReplicatedStorage.RS:GetChildren() do 
                    -- local success = pcall(string.split,v.Name,'Unload')
                    -- print(success)
                    local unloadsplit = string.split(v.Name,'Unload');
                    local RegistrationDirectory = {
                        ['NPCs'] = workspace.NPCs;
                    }
                    local wasfound = false
                    if unloadsplit[1] ~= nil and unloadsplit[2] ~= nil then 
                        wasfound = true;
                        local foundreg,regvalue = false,nil
                        for reg,val in next, RegistrationDirectory do 
                            if unloadsplit[2] == reg then 
                                foundreg = true;
                                regvalue = val;
                                break
                            end
                        end
                        if foundreg == true then 
                            for k,c in next, v:GetChildren() do 
                                c.Parent = regvalue:FindFirstChild(c.Name);
                            end
                        end 
                    end
                end
            end

            if getgenv().arcaneodysseysettings['breaknpcs'] == true then 
                local dir = game:GetService("Workspace").Enemies
                for _,v in next, dir:GetChildren() do 
                    if game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('HumanoidRootPart') and v.PrimaryPart ~= nil and v ~= game.Players.LocalPlayer.Character and v:FindFirstChildWhichIsA('Humanoid') then 
                        if isnetworkowner(v.PrimaryPart) then
                            pcall(function()
                                local PERC = 70 * v:FindFirstChildWhichIsA('Humanoid').MaxHealth / 100
                                if v:FindFirstChildWhichIsA('Humanoid').Health > PERC then 

                                    v:FindFirstChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(0,0,-6)
                                else
                                    -- v:FindFirstChild('Humanoid').Health = 0
                                    -- v:FindFirstChild('Head'):Destroy()
                                    v:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0,-math.huge,0)
                                end
                                
                            end)
                        end
                    end  
                end  
            end
            if getgenv().arcaneodysseysettings['killaura'] == true then 
                for i,v in pairs(workspace.Enemies:GetChildren()) do
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and v:IsA("Model") and v:FindFirstChildWhichIsA("Humanoid") and v:FindFirstChildWhichIsA("Humanoid").Health > 0 and  game.Players.LocalPlayer:DistanceFromCharacter(v.PrimaryPart.Position) < 21 then
                        local args = {
                            [1] = 0,
                            [2] = game:GetService('Players').LocalPlayer.Character,
                            [3] = v,
                            [4] = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool'),
                            [5] = 'Slash'
                        }
                        game:GetService('ReplicatedStorage').RS.Remotes.Combat.DealWeaponDamage:FireServer(unpack(args))
                    end
                end
            end

            if getgenv().arcaneodysseysettings['autoopenchest'] == true and game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then 
                for _,v in next, game:GetService("Workspace").Map:GetChildren() do 
                    if v:FindFirstChild('Chests') then 
                        for k,chest in next, v:FindFirstChild('Chests'):GetChildren() do 
                            if v:FindFirstChildWhichIsA('MeshPart') then  
                                local dist = (v:FindFirstChildWhichIsA('MeshPart').Position - game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position)
                                if dist.Magnitude < 10 then 
                                    game:GetService("ReplicatedStorage").RS.Remotes.Misc.OpenChest:FireServer(chest)
                                    for e,d in next, v:GetDescendants() do 
                                        if d.Name == 'Prompt' then 
                                            azfake.fireproximitypromt(d)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if getgenv().arcaneodysseysettings['chestfarm'] == true then 
                getgenv().arcaneodysseysettings['chestfarm'] = nil 
                for _,v in next, game:GetService("Workspace").Map:GetChildren() do 
                    if v:FindFirstChild('Chests') then 
                        repeat 
                            task.wait()
                            for k,chest in next, v:FindFirstChild('Chests'):GetChildren() do 
                                if getgenv().arcaneodysseysettings['chestfarm'] == nil and chest:FindFirstChildWhichIsA('MeshPart') then 
                                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = chest:FindFirstChildWhichIsA('MeshPart').CFrame
                                    task.wait(getgenv().arcaneodysseysettings['chestfarmdelay'])
                                end
                            end
                        until getgenv().arcaneodysseysettings['chestfarm'] == false or getgenv().loopsUnload == true
                    end
                end
            end
        end
    end)
    --game:GetService("Workspace").Map["Elm Island"].TempChests["Treasure Chest"]
else

    -- PlayerExperience


    local tab = window:CreateTab(gameName)
    local weirdsector = tab:CreateSector('Cheats','left')
    getgenv().AddPlayerList(weirdsector)


end


-- humanoid.AnimationPlayed

-- bottom

loadstop = true
--azfakenotify('has loaded','untilClick')

--[[
data loss is when data doesnt save and at that point you corrupt it
local con=childadded:connect(function()

end)
-- can put more connections
while task.wait() do
    if getgenv().loopsunload ==true then con:Disconnect() 
        -- break the while loop along with disablling the connections here
        break
    end 
end

]]
-- for lowatone could replace all the player value with a folder or a folder inside a folder
-- put players in a folder in game.Players
--[[
    game:GetService("Workspace").NPCs.Inari.HumanoidRootPart
    r = 0
repeat
-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
task.wait(0.001)
r+=0.1
game.Players.LocalPlayer.Character.M1:FireServer()
until r == 1
print('e')
]]

-- game:GetService("Workspace").NPCs["enchant person"].HumanoidRootPart
--[[

imagine if roblox was like a windows desktop
since theyre changing it to be an app typa stuff
you choose roblox games to be on ur home screen and it would look like the game thumbnail in an app 
dark blue background with builderman pointing at a roblox logo sun in the night
roblox logo sun would be the moon
this ^ is on the right side of the screen on the moon
dark setting and builderman isnt white; white but little dark to set the atmosphere
and no hes not smiling hes with a straight face
and then roblox studio is like an app on the desktop but on the roblox ui background
you get apps by going on the store which is basically microsoft store or the web app searcher and u can put games to ur
desktop by buying them with robux or just being able to do it by default it it is free


]]

Notify('','Running | Version | '..getgenv().azfake_version,'untilClick')

-- print(typeofazfake)

window.NameLabel.Text = 'Azfake V3 - '..typeofazfake
--[[
    local BillboardGui = Instance.new('BillboardGui')
BillboardGui.LightInfluence = 1
BillboardGui.MaxDistance = 100
BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BillboardGui.Active = true
BillboardGui.StudsOffset = 3, -1.5, 0
BillboardGui.AlwaysOnTop = false
BillboardGui.Size = UDim2.new({0.600000024, 0}, {6, 0})
]]
