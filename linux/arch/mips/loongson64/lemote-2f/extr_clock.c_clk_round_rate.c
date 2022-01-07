
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long (* round_rate ) (struct clk*,unsigned long) ;} ;


 int clock_lock ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct clk*,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (likely(clk->ops && clk->ops->round_rate)) {
  unsigned long flags, rounded;

  spin_lock_irqsave(&clock_lock, flags);
  rounded = clk->ops->round_rate(clk, rate);
  spin_unlock_irqrestore(&clock_lock, flags);

  return rounded;
 }

 return rate;
}
