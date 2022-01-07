
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int mult_mask; int div1_mask; int last_rounded_m; int last_rounded_n; int mult_div1_reg; } ;
struct clk_hw_omap {int context; struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int DPLL_LOCKED ;
 int __ffs (int) ;
 int _omap3_dpll_write_clken (struct clk_hw_omap*,int) ;
 int _omap3_wait_dpll_status (struct clk_hw_omap*,int) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

void omap3_core_dpll_restore_context(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 const struct dpll_data *dd;
 u32 v;

 dd = clk->dpll_data;

 if (clk->context == DPLL_LOCKED) {
  _omap3_dpll_write_clken(clk, 0x4);
  _omap3_wait_dpll_status(clk, 0);

  v = ti_clk_ll_ops->clk_readl(&dd->mult_div1_reg);
  v &= ~(dd->mult_mask | dd->div1_mask);
  v |= dd->last_rounded_m << __ffs(dd->mult_mask);
  v |= (dd->last_rounded_n - 1) << __ffs(dd->div1_mask);
  ti_clk_ll_ops->clk_writel(v, &dd->mult_div1_reg);

  _omap3_dpll_write_clken(clk, DPLL_LOCKED);
  _omap3_wait_dpll_status(clk, 1);
 } else {
  _omap3_dpll_write_clken(clk, clk->context);
 }
}
