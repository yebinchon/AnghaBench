
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct dpll_data {int enable_mask; int mult_mask; int div1_mask; int clk_ref; int mult_div1_reg; int clk_bypass; int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int __ffs (int) ;
 scalar_t__ _omap2_dpll_is_in_bypass (int) ;
 unsigned long clk_hw_get_rate (int ) ;
 int do_div (int,int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;

unsigned long omap2_get_dpll_rate(struct clk_hw_omap *clk)
{
 u64 dpll_clk;
 u32 dpll_mult, dpll_div, v;
 struct dpll_data *dd;

 dd = clk->dpll_data;
 if (!dd)
  return 0;


 v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
 v &= dd->enable_mask;
 v >>= __ffs(dd->enable_mask);

 if (_omap2_dpll_is_in_bypass(v))
  return clk_hw_get_rate(dd->clk_bypass);

 v = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);
 dpll_mult = v & dd->mult_mask;
 dpll_mult >>= __ffs(dd->mult_mask);
 dpll_div = v & dd->div1_mask;
 dpll_div >>= __ffs(dd->div1_mask);

 dpll_clk = (u64)clk_hw_get_rate(dd->clk_ref) * dpll_mult;
 do_div(dpll_clk, dpll_div + 1);

 return dpll_clk;
}
