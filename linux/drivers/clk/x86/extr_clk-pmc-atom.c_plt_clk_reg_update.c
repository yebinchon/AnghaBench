
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_plt {int lock; int reg; } ;


 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void plt_clk_reg_update(struct clk_plt *clk, u32 mask, u32 val)
{
 u32 tmp;
 unsigned long flags;

 spin_lock_irqsave(&clk->lock, flags);

 tmp = readl(clk->reg);
 tmp = (tmp & ~mask) | (val & mask);
 writel(tmp, clk->reg);

 spin_unlock_irqrestore(&clk->lock, flags);
}
