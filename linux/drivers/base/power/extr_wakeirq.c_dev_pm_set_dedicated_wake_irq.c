
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_irq {int irq; struct wake_irq* name; int status; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQ_DISABLE_UNLAZY ;
 int IRQ_NOAUTOEN ;
 int WAKE_IRQ_DEDICATED_ALLOCATED ;
 int dev_name (struct device*) ;
 int dev_pm_attach_wake_irq (struct device*,int,struct wake_irq*) ;
 int free_irq (int,struct wake_irq*) ;
 int handle_threaded_wake_irq ;
 int irq_set_status_flags (int,int ) ;
 struct wake_irq* kasprintf (int ,char*,int ) ;
 int kfree (struct wake_irq*) ;
 struct wake_irq* kzalloc (int,int ) ;
 int request_threaded_irq (int,int *,int ,int ,struct wake_irq*,struct wake_irq*) ;

int dev_pm_set_dedicated_wake_irq(struct device *dev, int irq)
{
 struct wake_irq *wirq;
 int err;

 if (irq < 0)
  return -EINVAL;

 wirq = kzalloc(sizeof(*wirq), GFP_KERNEL);
 if (!wirq)
  return -ENOMEM;

 wirq->name = kasprintf(GFP_KERNEL, "%s:wakeup", dev_name(dev));
 if (!wirq->name) {
  err = -ENOMEM;
  goto err_free;
 }

 wirq->dev = dev;
 wirq->irq = irq;
 irq_set_status_flags(irq, IRQ_NOAUTOEN);


 irq_set_status_flags(irq, IRQ_DISABLE_UNLAZY);





 err = request_threaded_irq(irq, ((void*)0), handle_threaded_wake_irq,
       IRQF_ONESHOT, wirq->name, wirq);
 if (err)
  goto err_free_name;

 err = dev_pm_attach_wake_irq(dev, irq, wirq);
 if (err)
  goto err_free_irq;

 wirq->status = WAKE_IRQ_DEDICATED_ALLOCATED;

 return err;

err_free_irq:
 free_irq(irq, wirq);
err_free_name:
 kfree(wirq->name);
err_free:
 kfree(wirq);

 return err;
}
