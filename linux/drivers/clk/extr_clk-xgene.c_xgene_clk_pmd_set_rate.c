
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xgene_clk_pmd {unsigned long denom; int flags; int mask; int shift; scalar_t__ lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int DIV_ROUND_UP_ULL (int,int) ;
 int XGENE_CLK_PMD_SCALE_INVERTED ;
 int __acquire (scalar_t__) ;
 int __release (scalar_t__) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct xgene_clk_pmd* to_xgene_clk_pmd (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int xgene_clk_pmd_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long parent_rate)
{
 struct xgene_clk_pmd *fd = to_xgene_clk_pmd(hw);
 unsigned long flags = 0;
 u64 scale, ret;
 u32 val;







 ret = rate * fd->denom;
 scale = DIV_ROUND_UP_ULL(ret, (u64)parent_rate);


 if (fd->flags & XGENE_CLK_PMD_SCALE_INVERTED)
  scale = fd->denom - scale;
 else
  scale--;

 if (fd->lock)
  spin_lock_irqsave(fd->lock, flags);
 else
  __acquire(fd->lock);

 val = readl(fd->reg);
 val &= ~fd->mask;
 val |= (scale << fd->shift);
 writel(val, fd->reg);

 if (fd->lock)
  spin_unlock_irqrestore(fd->lock, flags);
 else
  __release(fd->lock);

 return 0;
}
