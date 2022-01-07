
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct clk_gpio {int gpiod; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct clk_gpio* to_clk_gpio (struct clk_hw*) ;

__attribute__((used)) static int clk_gpio_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_gpio *clk = to_clk_gpio(hw);

 gpiod_set_value_cansleep(clk->gpiod, index);

 return 0;
}
