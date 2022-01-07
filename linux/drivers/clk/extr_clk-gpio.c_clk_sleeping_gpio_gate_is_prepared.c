
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gpio {int gpiod; } ;


 int gpiod_get_value_cansleep (int ) ;
 struct clk_gpio* to_clk_gpio (struct clk_hw*) ;

__attribute__((used)) static int clk_sleeping_gpio_gate_is_prepared(struct clk_hw *hw)
{
 struct clk_gpio *clk = to_clk_gpio(hw);

 return gpiod_get_value_cansleep(clk->gpiod);
}
