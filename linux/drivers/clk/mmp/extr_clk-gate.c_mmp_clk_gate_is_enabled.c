
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_clk_gate {int mask; int val_enable; scalar_t__ lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mmp_clk_gate* to_clk_mmp_gate (struct clk_hw*) ;

__attribute__((used)) static int mmp_clk_gate_is_enabled(struct clk_hw *hw)
{
 struct mmp_clk_gate *gate = to_clk_mmp_gate(hw);
 unsigned long flags = 0;
 u32 tmp;

 if (gate->lock)
  spin_lock_irqsave(gate->lock, flags);

 tmp = readl(gate->reg);

 if (gate->lock)
  spin_unlock_irqrestore(gate->lock, flags);

 return (tmp & gate->mask) == gate->val_enable;
}
