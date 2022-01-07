
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider {int flags; int shift; scalar_t__ lock; int width; int table; } ;


 int CLK_DIVIDER_HIWORD_MASK ;
 int __acquire (scalar_t__) ;
 int __release (scalar_t__) ;
 int clk_div_mask (int ) ;
 int clk_div_readl (struct clk_divider*) ;
 int clk_div_writel (struct clk_divider*,int) ;
 int divider_get_val (unsigned long,unsigned long,int ,int ,int) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;

__attribute__((used)) static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_divider *divider = to_clk_divider(hw);
 int value;
 unsigned long flags = 0;
 u32 val;

 value = divider_get_val(rate, parent_rate, divider->table,
    divider->width, divider->flags);
 if (value < 0)
  return value;

 if (divider->lock)
  spin_lock_irqsave(divider->lock, flags);
 else
  __acquire(divider->lock);

 if (divider->flags & CLK_DIVIDER_HIWORD_MASK) {
  val = clk_div_mask(divider->width) << (divider->shift + 16);
 } else {
  val = clk_div_readl(divider);
  val &= ~(clk_div_mask(divider->width) << divider->shift);
 }
 val |= (u32)value << divider->shift;
 clk_div_writel(divider, val);

 if (divider->lock)
  spin_unlock_irqrestore(divider->lock, flags);
 else
  __release(divider->lock);

 return 0;
}
