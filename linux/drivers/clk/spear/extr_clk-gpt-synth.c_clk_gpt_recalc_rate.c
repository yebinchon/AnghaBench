
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gpt {scalar_t__ lock; int reg; } ;


 unsigned int GPT_MSCALE_MASK ;
 unsigned int GPT_NSCALE_MASK ;
 unsigned int GPT_NSCALE_SHIFT ;
 unsigned int readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_gpt* to_clk_gpt (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_gpt_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_gpt *gpt = to_clk_gpt(hw);
 unsigned long flags = 0;
 unsigned int div = 1, val;

 if (gpt->lock)
  spin_lock_irqsave(gpt->lock, flags);

 val = readl_relaxed(gpt->reg);

 if (gpt->lock)
  spin_unlock_irqrestore(gpt->lock, flags);

 div += val & GPT_MSCALE_MASK;
 div *= 1 << (((val >> GPT_NSCALE_SHIFT) & GPT_NSCALE_MASK) + 1);

 if (!div)
  return 0;

 return parent_rate / div;
}
