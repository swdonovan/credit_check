require 'pry'

class LuhnAlgo
  def check(input)
    input.each_with_index do |item, index|
      if index % 2 != 0
        item = item[0].to_i * 2
        if item >= 10
          item = item - 9
          input[index] = item
        else
          input[index] = item
        end
      else
      end
    end
    final = 0
    input.each do |x|
      final += x.to_i
    end
    if final % 10 == 0
      puts "Valid #{final}"
    else
      puts "Invalid Number #{final}"
    end

end
end
puts "Please input Credit Card # >>"
credit_card = gets.chomp.split("")
cc = LuhnAlgo.new
cc.check(credit_card)










# credit_card = []
#then sum the all 10 #'s and divide them by 10
#if divisible by 10 its a valid #
# if not its invalid
#   x.to_i

# puts credit_card[0].class

#
# puts final.inspect


# puts input.inspect
# binding.pry
# if input.sum % 10 == 0
#   puts "Valid CC #"
# else
#   puts "Invalid CC #"
# end
# end



#ask for 10 digit card
# throw into integer
# if cred_num.length == 10
#   credit_card << cred_num
#   LuhnAlgo.new
#   credit_card.check
# else
#   cred_num = nil
#   puts "Please re-input your Credit Card number>>"
#   cred_num = gets.chomp.to_i
# end
# binding.pry
