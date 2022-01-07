
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int autoidle_mask; int autoidle_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int DPLL_AUTOIDLE_LOW_POWER_STOP ;
 int __ffs (int) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;

__attribute__((used)) static void omap3_dpll_allow_idle(struct clk_hw_omap *clk)
{
 const struct dpll_data *dd;
 u32 v;

 if (!clk || !clk->dpll_data)
  return;

 dd = clk->dpll_data;

 if (!dd->autoidle_mask)
  return;






 v = ti_clk_ll_ops->clk_readl(&dd->autoidle_reg);
 v &= ~dd->autoidle_mask;
 v |= DPLL_AUTOIDLE_LOW_POWER_STOP << __ffs(dd->autoidle_mask);
 ti_clk_ll_ops->clk_writel(v, &dd->autoidle_reg);
}
