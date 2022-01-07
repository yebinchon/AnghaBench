
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 struct clk* ERR_CAST (struct clk_hw*) ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 struct clk_hw* clk_hw_register_gpio_mux (struct device*,char const*,char const* const*,int ,struct gpio_desc*,unsigned long) ;

struct clk *clk_register_gpio_mux(struct device *dev, const char *name,
  const char * const *parent_names, u8 num_parents, struct gpio_desc *gpiod,
  unsigned long flags)
{
 struct clk_hw *hw;

 hw = clk_hw_register_gpio_mux(dev, name, parent_names, num_parents,
   gpiod, flags);
 if (IS_ERR(hw))
  return ERR_CAST(hw);
 return hw->clk;
}
