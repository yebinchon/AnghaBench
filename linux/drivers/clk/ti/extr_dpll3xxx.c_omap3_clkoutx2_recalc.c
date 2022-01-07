
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int enable_mask; int flags; int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int DPLL_J_TYPE ;
 int OMAP3XXX_EN_DPLL_LOCKED ;
 int WARN_ON (int) ;
 int __ffs (int) ;
 struct clk_hw_omap* omap3_find_clkoutx2_dpll (struct clk_hw*) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;

unsigned long omap3_clkoutx2_recalc(struct clk_hw *hw,
        unsigned long parent_rate)
{
 const struct dpll_data *dd;
 unsigned long rate;
 u32 v;
 struct clk_hw_omap *pclk = ((void*)0);

 if (!parent_rate)
  return 0;

 pclk = omap3_find_clkoutx2_dpll(hw);

 if (!pclk)
  return 0;

 dd = pclk->dpll_data;

 WARN_ON(!dd->enable_mask);

 v = ti_clk_ll_ops->clk_readl(&dd->control_reg) & dd->enable_mask;
 v >>= __ffs(dd->enable_mask);
 if ((v != OMAP3XXX_EN_DPLL_LOCKED) || (dd->flags & DPLL_J_TYPE))
  rate = parent_rate;
 else
  rate = parent_rate * 2;
 return rate;
}
