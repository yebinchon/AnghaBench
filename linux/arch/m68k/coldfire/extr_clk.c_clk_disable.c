
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ enabled; TYPE_1__* clk_ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int clk_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 if (!clk)
  return;

 spin_lock_irqsave(&clk_lock, flags);
 if ((--clk->enabled == 0) && clk->clk_ops)
  clk->clk_ops->disable(clk);
 spin_unlock_irqrestore(&clk_lock, flags);
}
