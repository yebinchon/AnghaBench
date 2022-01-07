
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 struct clk* ERR_CAST (struct clk_hw*) ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 struct clk_hw* clk_hw_register_gpio_gate (struct device*,char const*,char const*,struct gpio_desc*,unsigned long) ;

struct clk *clk_register_gpio_gate(struct device *dev, const char *name,
  const char *parent_name, struct gpio_desc *gpiod,
  unsigned long flags)
{
 struct clk_hw *hw;

 hw = clk_hw_register_gpio_gate(dev, name, parent_name, gpiod, flags);
 if (IS_ERR(hw))
  return ERR_CAST(hw);
 return hw->clk;
}
