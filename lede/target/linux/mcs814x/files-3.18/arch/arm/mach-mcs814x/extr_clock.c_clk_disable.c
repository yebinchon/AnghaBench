
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clocks_lock ;
 int local_clk_disable (struct clk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 spin_lock_irqsave(&clocks_lock, flags);
 local_clk_disable(clk);
 spin_unlock_irqrestore(&clocks_lock, flags);
}
