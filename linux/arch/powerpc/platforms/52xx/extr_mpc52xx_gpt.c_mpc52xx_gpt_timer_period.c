
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mpc52xx_gpt_priv {scalar_t__ ipb_freq; int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int count; } ;


 int do_div (int,int) ;
 int in_be32 (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

u64 mpc52xx_gpt_timer_period(struct mpc52xx_gpt_priv *gpt)
{
 u64 period;
 u64 prescale;
 unsigned long flags;

 raw_spin_lock_irqsave(&gpt->lock, flags);
 period = in_be32(&gpt->regs->count);
 raw_spin_unlock_irqrestore(&gpt->lock, flags);

 prescale = period >> 16;
 period &= 0xffff;
 if (prescale == 0)
  prescale = 0x10000;
 period = period * prescale * 1000000000ULL;
 do_div(period, (u64)gpt->ipb_freq);
 return period;
}
