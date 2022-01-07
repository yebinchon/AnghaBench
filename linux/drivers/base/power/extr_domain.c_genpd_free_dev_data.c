
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct generic_pm_domain_data {int dummy; } ;
struct TYPE_4__ {int lock; TYPE_1__* subsys_data; } ;
struct device {TYPE_2__ power; } ;
struct TYPE_3__ {int * domain_data; } ;


 int dev_pm_put_subsys_data (struct device*) ;
 int kfree (struct generic_pm_domain_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void genpd_free_dev_data(struct device *dev,
    struct generic_pm_domain_data *gpd_data)
{
 spin_lock_irq(&dev->power.lock);

 dev->power.subsys_data->domain_data = ((void*)0);

 spin_unlock_irq(&dev->power.lock);

 kfree(gpd_data);
 dev_pm_put_subsys_data(dev);
}
