
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_gpt_priv {int wdt_mode; int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int mode; } ;


 int EBUSY ;
 int MPC52xx_GPT_IS_WDT ;
 int MPC52xx_GPT_MODE_COUNTER_ENABLE ;
 int clrbits32 (int *,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int mpc52xx_gpt_stop_timer(struct mpc52xx_gpt_priv *gpt)
{
 unsigned long flags;


 raw_spin_lock_irqsave(&gpt->lock, flags);
 if ((gpt->wdt_mode & MPC52xx_GPT_IS_WDT) != 0) {
  raw_spin_unlock_irqrestore(&gpt->lock, flags);
  return -EBUSY;
 }

 clrbits32(&gpt->regs->mode, MPC52xx_GPT_MODE_COUNTER_ENABLE);
 raw_spin_unlock_irqrestore(&gpt->lock, flags);
 return 0;
}
