
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hi6220_clk_divider {int shift; int mask; scalar_t__ lock; int reg; int width; int table; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_ROUND_CLOSEST ;
 int div_mask (int ) ;
 int divider_get_val (unsigned long,unsigned long,int ,int ,int ) ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct hi6220_clk_divider* to_hi6220_clk_divider (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int hi6220_clkdiv_set_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long parent_rate)
{
 int value;
 unsigned long flags = 0;
 u32 data;
 struct hi6220_clk_divider *dclk = to_hi6220_clk_divider(hw);

 value = divider_get_val(rate, parent_rate, dclk->table,
    dclk->width, CLK_DIVIDER_ROUND_CLOSEST);

 if (dclk->lock)
  spin_lock_irqsave(dclk->lock, flags);

 data = readl_relaxed(dclk->reg);
 data &= ~(div_mask(dclk->width) << dclk->shift);
 data |= value << dclk->shift;
 data |= dclk->mask;

 writel_relaxed(data, dclk->reg);

 if (dclk->lock)
  spin_unlock_irqrestore(dclk->lock, flags);

 return 0;
}
