function tobin2(a)
  local nums = {64, 32, 16, 8, 4, 2, 1}
  local ans = ""
  for k, v in ipairs(a) do
  local num = 0
  local e = ""
    for g, d in ipairs(nums) do
      if num + d <= v then
        num = num + d
        e = e .. "1"
      else
        e = e .. "0"
      end
    end
    ans = ans .. e .. " "  
  end
  return ans
end

function tobin(str)
  local start = 31
  local spsp = '"'
  local chr = {" !" .. spsp .. "#$%&'()*+,-./", "0123456789", ":;<=>?@", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "[/]^_`", "abcdefghijklmnopqrstuvwxyz", "{|}~"}
  local tbl = {}
  for i = 1, #str do
    local add = 0
    local cur = 0
    local curr = str:sub(i, i)
    for k, v in ipairs(chr) do
      if string.match(v, curr, 0) then
        local curst = string.find(v, curr, 0, true)
        table.insert(tbl, curst + start + add)
        goto continue
      else
        add = add + #v
      end
    end
  ::continue::
  end
  return tobin2(tbl)
end
/*print(tobin())*/ -- put whatever you want to print in this area
