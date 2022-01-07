
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_irq {int status; int irq; int dev; } ;


 int WAKE_IRQ_DEDICATED_ALLOCATED ;
 scalar_t__ device_may_wakeup (int ) ;
 int disable_irq_nosync (int ) ;
 int disable_irq_wake (int ) ;
 int pm_runtime_status_suspended (int ) ;

void dev_pm_disarm_wake_irq(struct wake_irq *wirq)
{
 if (!wirq)
  return;

 if (device_may_wakeup(wirq->dev)) {
  disable_irq_wake(wirq->irq);

  if (wirq->status & WAKE_IRQ_DEDICATED_ALLOCATED &&
      !pm_runtime_status_suspended(wirq->dev))
   disable_irq_nosync(wirq->irq);
 }
}
