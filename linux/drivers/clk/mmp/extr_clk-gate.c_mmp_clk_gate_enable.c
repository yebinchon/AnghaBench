
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_clk_gate {int flags; scalar_t__ lock; int reg; int val_enable; int mask; } ;
struct clk_hw {int dummy; } ;


 int MMP_CLK_GATE_NEED_DELAY ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct mmp_clk_gate* to_clk_mmp_gate (struct clk_hw*) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int mmp_clk_gate_enable(struct clk_hw *hw)
{
 struct mmp_clk_gate *gate = to_clk_mmp_gate(hw);
 unsigned long flags = 0;
 unsigned long rate;
 u32 tmp;

 if (gate->lock)
  spin_lock_irqsave(gate->lock, flags);

 tmp = readl(gate->reg);
 tmp &= ~gate->mask;
 tmp |= gate->val_enable;
 writel(tmp, gate->reg);

 if (gate->lock)
  spin_unlock_irqrestore(gate->lock, flags);

 if (gate->flags & MMP_CLK_GATE_NEED_DELAY) {
  rate = clk_hw_get_rate(hw);

  udelay(2000000/rate);
 }

 return 0;
}
