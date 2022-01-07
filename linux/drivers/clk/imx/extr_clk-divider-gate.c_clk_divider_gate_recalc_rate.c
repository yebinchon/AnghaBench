
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_divider_gate {unsigned int cached_val; } ;
struct clk_divider {unsigned int shift; int width; int flags; int table; int lock; int reg; } ;


 unsigned int clk_div_mask (int ) ;
 int clk_hw_is_enabled (struct clk_hw*) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 unsigned int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct clk_divider_gate* to_clk_divider_gate (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_divider_gate_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 struct clk_divider *div = to_clk_divider(hw);
 unsigned long flags = 0;
 unsigned int val;

 spin_lock_irqsave(div->lock, flags);

 if (!clk_hw_is_enabled(hw)) {
  val = div_gate->cached_val;
 } else {
  val = readl(div->reg) >> div->shift;
  val &= clk_div_mask(div->width);
 }

 spin_unlock_irqrestore(div->lock, flags);

 if (!val)
  return 0;

 return divider_recalc_rate(hw, parent_rate, val, div->table,
       div->flags, div->width);
}
