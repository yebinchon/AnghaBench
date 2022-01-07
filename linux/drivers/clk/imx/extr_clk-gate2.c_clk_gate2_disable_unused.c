
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_gate2 {scalar_t__* share_count; int bit_idx; int lock; int reg; } ;


 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_gate2* to_clk_gate2 (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static void clk_gate2_disable_unused(struct clk_hw *hw)
{
 struct clk_gate2 *gate = to_clk_gate2(hw);
 unsigned long flags = 0;
 u32 reg;

 spin_lock_irqsave(gate->lock, flags);

 if (!gate->share_count || *gate->share_count == 0) {
  reg = readl(gate->reg);
  reg &= ~(3 << gate->bit_idx);
  writel(reg, gate->reg);
 }

 spin_unlock_irqrestore(gate->lock, flags);
}
