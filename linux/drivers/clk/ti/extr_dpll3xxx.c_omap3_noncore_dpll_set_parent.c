
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw_omap {int dummy; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int _omap3_noncore_dpll_bypass (struct clk_hw_omap*) ;
 int _omap3_noncore_dpll_lock (struct clk_hw_omap*) ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

int omap3_noncore_dpll_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 int ret;

 if (!hw)
  return -EINVAL;

 if (index)
  ret = _omap3_noncore_dpll_bypass(clk);
 else
  ret = _omap3_noncore_dpll_lock(clk);

 return ret;
}
