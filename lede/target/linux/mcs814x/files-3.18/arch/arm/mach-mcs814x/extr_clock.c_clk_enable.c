
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clocks_lock ;
 int local_clk_enable (struct clk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_enable(struct clk *clk)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&clocks_lock, flags);
 ret = local_clk_enable(clk);
 spin_unlock_irqrestore(&clocks_lock, flags);

 return ret;
}
