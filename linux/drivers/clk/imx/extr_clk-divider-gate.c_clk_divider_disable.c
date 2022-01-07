
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_divider_gate {int cached_val; } ;
struct clk_divider {int shift; int lock; int reg; int width; } ;


 int clk_div_mask (int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct clk_divider_gate* to_clk_divider_gate (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void clk_divider_disable(struct clk_hw *hw)
{
 struct clk_divider_gate *div_gate = to_clk_divider_gate(hw);
 struct clk_divider *div = to_clk_divider(hw);
 unsigned long flags = 0;
 u32 val;

 spin_lock_irqsave(div->lock, flags);


 val = readl(div->reg) >> div->shift;
 val &= clk_div_mask(div->width);
 div_gate->cached_val = val;
 writel(0, div->reg);

 spin_unlock_irqrestore(div->lock, flags);
}
