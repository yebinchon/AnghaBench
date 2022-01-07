
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int autoidle_mask; int control_reg; int autoidle_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int __ffs (int) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;

__attribute__((used)) static void omap2_apll_set_autoidle(struct clk_hw_omap *clk, u32 val)
{
 struct dpll_data *ad = clk->dpll_data;
 u32 v;

 v = ti_clk_ll_ops->clk_readl(&ad->autoidle_reg);
 v &= ~ad->autoidle_mask;
 v |= val << __ffs(ad->autoidle_mask);
 ti_clk_ll_ops->clk_writel(v, &ad->control_reg);
}
