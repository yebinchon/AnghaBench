
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wake_irq {int status; int irq; } ;
struct TYPE_2__ {struct wake_irq* wakeirq; } ;
struct device {TYPE_1__ power; } ;


 int WAKE_IRQ_DEDICATED_MANAGED ;
 int WAKE_IRQ_DEDICATED_MASK ;
 int enable_irq (int ) ;
 scalar_t__ likely (int) ;

void dev_pm_enable_wake_irq_check(struct device *dev,
      bool can_change_status)
{
 struct wake_irq *wirq = dev->power.wakeirq;

 if (!wirq || !((wirq->status & WAKE_IRQ_DEDICATED_MASK)))
  return;

 if (likely(wirq->status & WAKE_IRQ_DEDICATED_MANAGED)) {
  goto enable;
 } else if (can_change_status) {
  wirq->status |= WAKE_IRQ_DEDICATED_MANAGED;
  goto enable;
 }

 return;

enable:
 enable_irq(wirq->irq);
}
