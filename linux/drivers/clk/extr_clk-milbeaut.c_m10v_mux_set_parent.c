
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_mux {int mask; int shift; scalar_t__ lock; int reg; int flags; int table; } ;
struct clk_hw {int dummy; } ;


 int BIT (scalar_t__) ;
 int __acquire (scalar_t__) ;
 int __release (scalar_t__) ;
 int clk_mux_index_to_val (int ,int ,int ) ;
 scalar_t__ fls (int) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int m10v_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_mux *mux = to_clk_mux(hw);
 u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
 unsigned long flags = 0;
 u32 reg;
 u32 write_en = BIT(fls(mux->mask) - 1);

 if (mux->lock)
  spin_lock_irqsave(mux->lock, flags);
 else
  __acquire(mux->lock);

 reg = readl(mux->reg);
 reg &= ~(mux->mask << mux->shift);

 val = (val | write_en) << mux->shift;
 reg |= val;
 writel(reg, mux->reg);

 if (mux->lock)
  spin_unlock_irqrestore(mux->lock, flags);
 else
  __release(mux->lock);

 return 0;
}
