
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gpio {int gpiod; } ;


 int gpiod_set_value (int ,int ) ;
 struct clk_gpio* to_clk_gpio (struct clk_hw*) ;

__attribute__((used)) static void clk_gpio_gate_disable(struct clk_hw *hw)
{
 struct clk_gpio *clk = to_clk_gpio(hw);

 gpiod_set_value(clk->gpiod, 0);
}
