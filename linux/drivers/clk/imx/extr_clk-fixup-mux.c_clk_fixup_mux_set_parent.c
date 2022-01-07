
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct clk_mux {int mask; int shift; int lock; int reg; } ;
struct clk_hw {int dummy; } ;
struct clk_fixup_mux {int (* fixup ) (int*) ;} ;


 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (int*) ;
 struct clk_fixup_mux* to_clk_fixup_mux (struct clk_hw*) ;
 struct clk_mux* to_clk_mux (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_fixup_mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_fixup_mux *fixup_mux = to_clk_fixup_mux(hw);
 struct clk_mux *mux = to_clk_mux(hw);
 unsigned long flags = 0;
 u32 val;

 spin_lock_irqsave(mux->lock, flags);

 val = readl(mux->reg);
 val &= ~(mux->mask << mux->shift);
 val |= index << mux->shift;
 fixup_mux->fixup(&val);
 writel(val, mux->reg);

 spin_unlock_irqrestore(mux->lock, flags);

 return 0;
}
