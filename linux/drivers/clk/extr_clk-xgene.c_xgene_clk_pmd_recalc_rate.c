
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct xgene_clk_pmd {unsigned long mask; unsigned long shift; int flags; unsigned long denom; scalar_t__ lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int XGENE_CLK_PMD_SCALE_INVERTED ;
 int __acquire (scalar_t__) ;
 int __release (scalar_t__) ;
 int do_div (unsigned long,unsigned long) ;
 unsigned long readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct xgene_clk_pmd* to_xgene_clk_pmd (struct clk_hw*) ;

__attribute__((used)) static unsigned long xgene_clk_pmd_recalc_rate(struct clk_hw *hw,
            unsigned long parent_rate)
{
 struct xgene_clk_pmd *fd = to_xgene_clk_pmd(hw);
 unsigned long flags = 0;
 u64 ret, scale;
 u32 val;

 if (fd->lock)
  spin_lock_irqsave(fd->lock, flags);
 else
  __acquire(fd->lock);

 val = readl(fd->reg);

 if (fd->lock)
  spin_unlock_irqrestore(fd->lock, flags);
 else
  __release(fd->lock);

 ret = (u64)parent_rate;

 scale = (val & fd->mask) >> fd->shift;
 if (fd->flags & XGENE_CLK_PMD_SCALE_INVERTED)
  scale = fd->denom - scale;
 else
  scale++;


 do_div(ret, fd->denom);
 ret *= scale;
 if (ret == 0)
  ret = (u64)parent_rate;

 return ret;
}
