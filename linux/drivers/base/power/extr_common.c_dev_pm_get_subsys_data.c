
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm_subsys_data {int refcount; int lock; } ;
struct TYPE_2__ {int lock; struct pm_subsys_data* subsys_data; } ;
struct device {TYPE_1__ power; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pm_subsys_data*) ;
 struct pm_subsys_data* kzalloc (int,int ) ;
 int pm_clk_init (struct device*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int dev_pm_get_subsys_data(struct device *dev)
{
 struct pm_subsys_data *psd;

 psd = kzalloc(sizeof(*psd), GFP_KERNEL);
 if (!psd)
  return -ENOMEM;

 spin_lock_irq(&dev->power.lock);

 if (dev->power.subsys_data) {
  dev->power.subsys_data->refcount++;
 } else {
  spin_lock_init(&psd->lock);
  psd->refcount = 1;
  dev->power.subsys_data = psd;
  pm_clk_init(dev);
  psd = ((void*)0);
 }

 spin_unlock_irq(&dev->power.lock);


 kfree(psd);

 return 0;
}
