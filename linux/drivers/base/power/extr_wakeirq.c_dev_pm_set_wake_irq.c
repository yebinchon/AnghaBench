
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_irq {int irq; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_pm_attach_wake_irq (struct device*,int,struct wake_irq*) ;
 int kfree (struct wake_irq*) ;
 struct wake_irq* kzalloc (int,int ) ;

int dev_pm_set_wake_irq(struct device *dev, int irq)
{
 struct wake_irq *wirq;
 int err;

 if (irq < 0)
  return -EINVAL;

 wirq = kzalloc(sizeof(*wirq), GFP_KERNEL);
 if (!wirq)
  return -ENOMEM;

 wirq->dev = dev;
 wirq->irq = irq;

 err = dev_pm_attach_wake_irq(dev, irq, wirq);
 if (err)
  kfree(wirq);

 return err;
}
