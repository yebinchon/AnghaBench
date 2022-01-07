
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; int enabled; } ;
struct TYPE_2__ {int (* enable ) (struct clk*) ;} ;


 int clocks_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct clk*) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clocks_lock, flags);
 if (clk->enabled++ == 0)
  clk->ops->enable(clk);
 spin_unlock_irqrestore(&clocks_lock, flags);
 return 0;
}
