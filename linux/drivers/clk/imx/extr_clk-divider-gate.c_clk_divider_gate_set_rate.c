
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider_gate {int cached_val; } ;
struct clk_divider {int shift; int lock; int reg; int width; int flags; int table; } ;


 int clk_div_mask (int ) ;
 scalar_t__ clk_hw_is_enabled (struct clk_hw*) ;
 int divider_get_val (unsigned long,unsigned long,int ,int ,int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct clk_divider_gate* to_clk_divider_gate (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_divider_gate_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 struct clk_divider *div = to_clk_divider(hw);
 unsigned long flags = 0;
 int value;
 u32 val;

 value = divider_get_val(rate, parent_rate, div->table,
    div->width, div->flags);
 if (value < 0)
  return value;

 spin_lock_irqsave(div->lock, flags);

 if (clk_hw_is_enabled(hw)) {
  val = readl(div->reg);
  val &= ~(clk_div_mask(div->width) << div->shift);
  val |= (u32)value << div->shift;
  writel(val, div->reg);
 } else {
  div_gate->cached_val = value;
 }

 spin_unlock_irqrestore(div->lock, flags);

 return 0;
}
