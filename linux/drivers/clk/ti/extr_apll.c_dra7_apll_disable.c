
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dpll_data {int idlest_mask; int enable_mask; int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;int (* clk_writel ) (int,int *) ;} ;


 int APLL_AUTO_IDLE ;
 int __ffs (int) ;
 int stub1 (int *) ;
 int stub2 (int,int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static void dra7_apll_disable(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *ad;
 u8 state = 1;
 u32 v;

 ad = clk->dpll_data;

 state <<= __ffs(ad->idlest_mask);

 v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
 v &= ~ad->enable_mask;
 v |= APLL_AUTO_IDLE << __ffs(ad->enable_mask);
 ti_clk_ll_ops->clk_writel(v, &ad->control_reg);
}
