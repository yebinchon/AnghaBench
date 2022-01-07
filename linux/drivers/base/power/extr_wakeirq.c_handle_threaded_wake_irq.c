
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_irq {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_warn (int ,char*,int) ;
 int irq_get_irq_data (int) ;
 scalar_t__ irqd_is_wakeup_set (int ) ;
 int pm_runtime_resume (int ) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t handle_threaded_wake_irq(int irq, void *_wirq)
{
 struct wake_irq *wirq = _wirq;
 int res;


 if (irqd_is_wakeup_set(irq_get_irq_data(irq))) {
  pm_wakeup_event(wirq->dev, 0);

  return IRQ_HANDLED;
 }


 res = pm_runtime_resume(wirq->dev);
 if (res < 0)
  dev_warn(wirq->dev,
    "wake IRQ with no resume: %i\n", res);

 return IRQ_HANDLED;
}
