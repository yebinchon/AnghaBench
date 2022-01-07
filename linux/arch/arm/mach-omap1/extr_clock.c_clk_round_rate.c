
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int clockfw_lock ;
 long omap1_clk_round_rate (struct clk*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 unsigned long flags;
 long ret;

 if (clk == ((void*)0) || IS_ERR(clk))
  return 0;

 spin_lock_irqsave(&clockfw_lock, flags);
 ret = omap1_clk_round_rate(clk, rate);
 spin_unlock_irqrestore(&clockfw_lock, flags);

 return ret;
}
