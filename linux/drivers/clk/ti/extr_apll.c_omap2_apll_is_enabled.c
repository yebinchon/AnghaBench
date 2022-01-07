
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpll_data {int enable_mask; int control_reg; } ;
struct clk_hw_omap {struct dpll_data* dpll_data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int OMAP2_EN_APLL_LOCKED ;
 int __ffs (int) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_hw_omap* to_clk_hw_omap (struct clk_hw*) ;

__attribute__((used)) static int omap2_apll_is_enabled(struct clk_hw *hw)
{
 struct clk_hw_omap *clk = to_clk_hw_omap(hw);
 struct dpll_data *ad = clk->dpll_data;
 u32 v;

 v = ti_clk_ll_ops->clk_readl(&ad->control_reg);
 v &= ad->enable_mask;

 v >>= __ffs(ad->enable_mask);

 return v == OMAP2_EN_APLL_LOCKED ? 1 : 0;
}
