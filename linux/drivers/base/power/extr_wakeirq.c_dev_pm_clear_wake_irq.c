
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wake_irq {int status; struct wake_irq* name; int irq; } ;
struct TYPE_2__ {int lock; struct wake_irq* wakeirq; } ;
struct device {TYPE_1__ power; } ;


 int WAKE_IRQ_DEDICATED_ALLOCATED ;
 int WAKE_IRQ_DEDICATED_MASK ;
 int device_wakeup_detach_irq (struct device*) ;
 int free_irq (int ,struct wake_irq*) ;
 int kfree (struct wake_irq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dev_pm_clear_wake_irq(struct device *dev)
{
 struct wake_irq *wirq = dev->power.wakeirq;
 unsigned long flags;

 if (!wirq)
  return;

 spin_lock_irqsave(&dev->power.lock, flags);
 device_wakeup_detach_irq(dev);
 dev->power.wakeirq = ((void*)0);
 spin_unlock_irqrestore(&dev->power.lock, flags);

 if (wirq->status & WAKE_IRQ_DEDICATED_ALLOCATED) {
  free_irq(wirq->irq, wirq);
  wirq->status &= ~WAKE_IRQ_DEDICATED_MASK;
 }
 kfree(wirq->name);
 kfree(wirq);
}
