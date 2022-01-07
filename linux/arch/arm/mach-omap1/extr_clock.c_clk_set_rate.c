
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clockfw_lock ;
 int omap1_clk_set_rate (struct clk*,unsigned long) ;
 int propagate_rate (struct clk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 unsigned long flags;
 int ret = -EINVAL;

 if (clk == ((void*)0) || IS_ERR(clk))
  return ret;

 spin_lock_irqsave(&clockfw_lock, flags);
 ret = omap1_clk_set_rate(clk, rate);
 if (ret == 0)
  propagate_rate(clk);
 spin_unlock_irqrestore(&clockfw_lock, flags);

 return ret;
}
