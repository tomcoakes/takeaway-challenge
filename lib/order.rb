class Order

  attr_reader :current_order

  def initialize
    @current_order = {}
  end

  def add_to_order(item_to_add, quantity = 1)
    @current_order[item_to_add] = quantity
  end

  def total_price
    total_price = 0
    current_order.each {|dish, quantity| total_price += dish.price * quantity }
    total_price
  end

end