
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk_omap_divider {int shift; int context; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int *) ;} ;


 int div_mask (struct clk_omap_divider*) ;
 int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_divider* to_clk_omap_divider (struct clk_hw*) ;

__attribute__((used)) static int clk_divider_save_context(struct clk_hw *hw)
{
 struct clk_omap_divider *divider = to_clk_omap_divider(hw);
 u32 val;

 val = ti_clk_ll_ops->clk_readl(&divider->reg) >> divider->shift;
 divider->context = val & div_mask(divider);

 return 0;
}
