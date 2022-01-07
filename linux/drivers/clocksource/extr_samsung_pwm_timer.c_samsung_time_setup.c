
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ REG_TCMPB (unsigned int) ;
 scalar_t__ REG_TCNTB (unsigned int) ;
 scalar_t__ REG_TCON ;
 unsigned long TCON_AUTORELOAD (unsigned int) ;
 unsigned long TCON_MANUALUPDATE (unsigned int) ;
 unsigned long TCON_START (unsigned int) ;
 TYPE_1__ pwm ;
 unsigned long readl_relaxed (scalar_t__) ;
 int samsung_pwm_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void samsung_time_setup(unsigned int channel, unsigned long tcnt)
{
 unsigned long tcon;
 unsigned long flags;
 unsigned int tcon_chan = channel;

 if (tcon_chan > 0)
  ++tcon_chan;

 spin_lock_irqsave(&samsung_pwm_lock, flags);

 tcon = readl_relaxed(pwm.base + REG_TCON);

 tcon &= ~(TCON_START(tcon_chan) | TCON_AUTORELOAD(tcon_chan));
 tcon |= TCON_MANUALUPDATE(tcon_chan);

 writel_relaxed(tcnt, pwm.base + REG_TCNTB(channel));
 writel_relaxed(tcnt, pwm.base + REG_TCMPB(channel));
 writel_relaxed(tcon, pwm.base + REG_TCON);

 spin_unlock_irqrestore(&samsung_pwm_lock, flags);
}
