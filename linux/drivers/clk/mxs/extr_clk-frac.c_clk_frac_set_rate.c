
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_frac {int width; int shift; int busy; int reg; } ;


 int EINVAL ;
 int do_div (int,unsigned long) ;
 int mxs_clk_wait (int ,int ) ;
 int mxs_lock ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_frac* to_clk_frac (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_frac_set_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long parent_rate)
{
 struct clk_frac *frac = to_clk_frac(hw);
 unsigned long flags;
 u32 div, val;
 u64 tmp;

 if (rate > parent_rate)
  return -EINVAL;

 tmp = rate;
 tmp <<= frac->width;
 do_div(tmp, parent_rate);
 div = tmp;

 if (!div)
  return -EINVAL;

 spin_lock_irqsave(&mxs_lock, flags);

 val = readl_relaxed(frac->reg);
 val &= ~(((1 << frac->width) - 1) << frac->shift);
 val |= div << frac->shift;
 writel_relaxed(val, frac->reg);

 spin_unlock_irqrestore(&mxs_lock, flags);

 return mxs_clk_wait(frac->reg, frac->busy);
}
