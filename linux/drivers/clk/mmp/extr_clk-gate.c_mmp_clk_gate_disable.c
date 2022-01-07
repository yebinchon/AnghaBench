
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_clk_gate {scalar_t__ lock; int reg; int val_disable; int mask; } ;
struct clk_hw {int dummy; } ;


 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mmp_clk_gate* to_clk_mmp_gate (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void mmp_clk_gate_disable(struct clk_hw *hw)
{
 struct mmp_clk_gate *gate = to_clk_mmp_gate(hw);
 unsigned long flags = 0;
 u32 tmp;

 if (gate->lock)
  spin_lock_irqsave(gate->lock, flags);

 tmp = readl(gate->reg);
 tmp &= ~gate->mask;
 tmp |= gate->val_disable;
 writel(tmp, gate->reg);

 if (gate->lock)
  spin_unlock_irqrestore(gate->lock, flags);
}
