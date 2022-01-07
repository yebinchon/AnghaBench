
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int flags; int chrg_full_timer; } ;


 int IRQ_HANDLED ;
 int SHARPSL_SUSPENDED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 TYPE_1__ sharpsl_pm ;

__attribute__((used)) static irqreturn_t sharpsl_chrg_full_isr(int irq, void *dev_id)
{
 if (sharpsl_pm.flags & SHARPSL_SUSPENDED)
  return IRQ_HANDLED;


 mod_timer(&sharpsl_pm.chrg_full_timer, jiffies + msecs_to_jiffies(500));

 return IRQ_HANDLED;
}
