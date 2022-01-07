
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw_omap {scalar_t__ autoidle_count; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* allow_idle ) (struct clk_hw_omap*) ;} ;


 int autoidle_spinlock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk_hw_omap*) ;

__attribute__((used)) static int _omap2_clk_allow_idle(struct clk_hw_omap *clk)
{
 if (clk->ops && clk->ops->allow_idle) {
  unsigned long irqflags;

  spin_lock_irqsave(&autoidle_spinlock, irqflags);
  clk->autoidle_count--;
  if (clk->autoidle_count == 0)
   clk->ops->allow_idle(clk);

  spin_unlock_irqrestore(&autoidle_spinlock, irqflags);
 }
 return 0;
}
