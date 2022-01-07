
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_omap_divider {unsigned int shift; int flags; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned int (* clk_readl ) (int *) ;} ;


 int CLK_DIVIDER_ALLOW_ZERO ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned int) ;
 int WARN (int,char*,int ) ;
 unsigned int _get_div (struct clk_omap_divider*,unsigned int) ;
 int clk_hw_get_name (struct clk_hw*) ;
 unsigned int div_mask (struct clk_omap_divider*) ;
 unsigned int stub1 (int *) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_divider* to_clk_omap_divider (struct clk_hw*) ;

__attribute__((used)) static unsigned long ti_clk_divider_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_omap_divider *divider = to_clk_omap_divider(hw);
 unsigned int div, val;

 val = ti_clk_ll_ops->clk_readl(&divider->reg) >> divider->shift;
 val &= div_mask(divider);

 div = _get_div(divider, val);
 if (!div) {
  WARN(!(divider->flags & CLK_DIVIDER_ALLOW_ZERO),
       "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
       clk_hw_get_name(hw));
  return parent_rate;
 }

 return DIV_ROUND_UP(parent_rate, div);
}
