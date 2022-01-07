
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm_subsys_data {scalar_t__ refcount; } ;
struct TYPE_2__ {int lock; int * subsys_data; } ;
struct device {TYPE_1__ power; } ;


 struct pm_subsys_data* dev_to_psd (struct device*) ;
 int kfree (struct pm_subsys_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void dev_pm_put_subsys_data(struct device *dev)
{
 struct pm_subsys_data *psd;

 spin_lock_irq(&dev->power.lock);

 psd = dev_to_psd(dev);
 if (!psd)
  goto out;

 if (--psd->refcount == 0)
  dev->power.subsys_data = ((void*)0);
 else
  psd = ((void*)0);

 out:
 spin_unlock_irq(&dev->power.lock);
 kfree(psd);
}
