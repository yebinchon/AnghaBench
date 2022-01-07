
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ REG_TCFG0 ;
 int TCFG0_PRESCALER1_SHIFT ;
 int TCFG0_PRESCALER_MASK ;
 TYPE_1__ pwm ;
 int readl (scalar_t__) ;
 int samsung_pwm_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void samsung_timer_set_prescale(unsigned int channel, u16 prescale)
{
 unsigned long flags;
 u8 shift = 0;
 u32 reg;

 if (channel >= 2)
  shift = TCFG0_PRESCALER1_SHIFT;

 spin_lock_irqsave(&samsung_pwm_lock, flags);

 reg = readl(pwm.base + REG_TCFG0);
 reg &= ~(TCFG0_PRESCALER_MASK << shift);
 reg |= (prescale - 1) << shift;
 writel(reg, pwm.base + REG_TCFG0);

 spin_unlock_irqrestore(&samsung_pwm_lock, flags);
}
