
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 struct clk* ERR_CAST (struct clk_hw*) ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 struct clk_hw* clk_hw_register_fixed_factor (struct device*,char const*,char const*,unsigned long,unsigned int,unsigned int) ;

struct clk *clk_register_fixed_factor(struct device *dev, const char *name,
  const char *parent_name, unsigned long flags,
  unsigned int mult, unsigned int div)
{
 struct clk_hw *hw;

 hw = clk_hw_register_fixed_factor(dev, name, parent_name, flags, mult,
       div);
 if (IS_ERR(hw))
  return ERR_CAST(hw);
 return hw->clk;
}
