
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {scalar_t__ enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int WARN_ON (int) ;
 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 if (!clk)
  return;

 WARN_ON(clk->enabled == 0);

 spin_lock_irqsave(&clocks_lock, flags);
 if (--clk->enabled == 0)
  clk->ops->disable(clk);
 spin_unlock_irqrestore(&clocks_lock, flags);
}
