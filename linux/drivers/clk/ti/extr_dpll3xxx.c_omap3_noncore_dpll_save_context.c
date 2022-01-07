
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int enable_mask; int last_rounded_m; int mult_mask; int last_rounded_n; int div1_mask; int mult_div1_reg; int control_reg; } ;
struct clk_hw_omap {int context; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int DPLL_LOCKED ;
 int __ffs (int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

int omap3_noncore_dpll_save_context(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *dd;
 u32 v;

 dd = clk->dpll_data;

 v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
 clk->context = (v & dd->enable_mask) >> __ffs(dd->enable_mask);

 if (clk->context == DPLL_LOCKED) {
  v = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);
  dd->last_rounded_m = (v & dd->mult_mask) >>
      __ffs(dd->mult_mask);
  dd->last_rounded_n = ((v & dd->div1_mask) >>
      __ffs(dd->div1_mask)) + 1;
 }

 return 0;
}
