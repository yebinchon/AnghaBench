
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wake_irq {int status; int irq; } ;
struct TYPE_2__ {struct wake_irq* wakeirq; } ;
struct device {TYPE_1__ power; } ;


 int WAKE_IRQ_DEDICATED_ALLOCATED ;
 int disable_irq_nosync (int ) ;

void dev_pm_disable_wake_irq(struct device *dev)
{
 struct wake_irq *wirq = dev->power.wakeirq;

 if (wirq && (wirq->status & WAKE_IRQ_DEDICATED_ALLOCATED))
  disable_irq_nosync(wirq->irq);
}
