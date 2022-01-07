
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct clk_omap_divider {int flags; int shift; int latch; int reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned int (* clk_readl ) (int *) ;int (* clk_writel ) (unsigned int,int *) ;} ;


 int CLK_DIVIDER_HIWORD_MASK ;
 unsigned int DIV_ROUND_UP (unsigned long,unsigned long) ;
 int EINVAL ;
 unsigned int _get_val (struct clk_omap_divider*,unsigned int) ;
 unsigned int div_mask (struct clk_omap_divider*) ;
 unsigned int stub1 (int *) ;
 int stub2 (unsigned int,int *) ;
 int ti_clk_latch (int *,int ) ;
 TYPE_1__* ti_clk_ll_ops ;
 struct clk_omap_divider* to_clk_omap_divider (struct clk_hw*) ;

__attribute__((used)) static int ti_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_omap_divider *divider;
 unsigned int div, value;
 u32 val;

 if (!hw || !rate)
  return -EINVAL;

 divider = to_clk_omap_divider(hw);

 div = DIV_ROUND_UP(parent_rate, rate);
 value = _get_val(divider, div);

 if (value > div_mask(divider))
  value = div_mask(divider);

 if (divider->flags & CLK_DIVIDER_HIWORD_MASK) {
  val = div_mask(divider) << (divider->shift + 16);
 } else {
  val = ti_clk_ll_ops->clk_readl(&divider->reg);
  val &= ~(div_mask(divider) << divider->shift);
 }
 val |= value << divider->shift;
 ti_clk_ll_ops->clk_writel(val, &divider->reg);

 ti_clk_latch(&divider->reg, divider->latch);

 return 0;
}
