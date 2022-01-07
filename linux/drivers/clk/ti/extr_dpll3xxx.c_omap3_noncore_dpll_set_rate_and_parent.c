
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int omap3_noncore_dpll_set_parent (struct clk_hw*,scalar_t__) ;
 int omap3_noncore_dpll_set_rate (struct clk_hw*,unsigned long,unsigned long) ;

int omap3_noncore_dpll_set_rate_and_parent(struct clk_hw *hw,
        unsigned long rate,
        unsigned long parent_rate,
        u8 index)
{
 int ret;

 if (!hw || !rate)
  return -EINVAL;






 if (index)
  ret = omap3_noncore_dpll_set_parent(hw, index);
 else
  ret = omap3_noncore_dpll_set_rate(hw, rate, parent_rate);

 return ret;
}
