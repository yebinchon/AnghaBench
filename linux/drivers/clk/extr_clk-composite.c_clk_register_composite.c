
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;


 struct clk* ERR_CAST (struct clk_hw*) ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 struct clk_hw* clk_hw_register_composite (struct device*,char const*,char const* const*,int,struct clk_hw*,struct clk_ops const*,struct clk_hw*,struct clk_ops const*,struct clk_hw*,struct clk_ops const*,unsigned long) ;

struct clk *clk_register_composite(struct device *dev, const char *name,
   const char * const *parent_names, int num_parents,
   struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
   struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
   struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
   unsigned long flags)
{
 struct clk_hw *hw;

 hw = clk_hw_register_composite(dev, name, parent_names, num_parents,
   mux_hw, mux_ops, rate_hw, rate_ops, gate_hw, gate_ops,
   flags);
 if (IS_ERR(hw))
  return ERR_CAST(hw);
 return hw->clk;
}
