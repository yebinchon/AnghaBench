
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_frac {scalar_t__ lock; int reg; } ;


 unsigned int DIV_FACTOR_MASK ;
 unsigned int readl_relaxed (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_frac* to_clk_frac (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_frac_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_frac *frac = to_clk_frac(hw);
 unsigned long flags = 0;
 unsigned int div = 1, val;

 if (frac->lock)
  spin_lock_irqsave(frac->lock, flags);

 val = readl_relaxed(frac->reg);

 if (frac->lock)
  spin_unlock_irqrestore(frac->lock, flags);

 div = val & DIV_FACTOR_MASK;

 if (!div)
  return 0;

 parent_rate = parent_rate / 10000;

 parent_rate = (parent_rate << 14) / (2 * div);
 return parent_rate * 10000;
}
