
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dpll_data {int enable_mask; int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int __ffs (int) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;

__attribute__((used)) static void _omap3_dpll_write_clken(struct clk_hw_omap *clk, u8 clken_bits)
{
 const struct dpll_data *dd;
 u32 v;

 dd = clk->dpll_data;

 v = ti_clk_ll_ops->clk_readl(&dd->control_reg);
 v &= ~dd->enable_mask;
 v |= clken_bits << __ffs(dd->enable_mask);
 ti_clk_ll_ops->clk_writel(v, &dd->control_reg);
}
