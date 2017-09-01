# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){ |sum, x| sum + x }
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.uniq.combination(2).detect{|a,b| a + b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
   /^[^aeiouAEIOU\d\W]/i =~ s ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty? || s =~ /[^01]/
  (s == '0') || s.end_with?('00')
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError.new("ISBN is empty") unless isbn.length > 0
    raise ArgumentError.new("Price should be larger than 0") unless price > 0
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_as_string
    format("$%.2f", @price)
  end

end
