
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {struct device* dev; } ;
struct TYPE_7__ {int notifier_call; } ;
struct TYPE_6__ {int constraint_changed; int effective_constraint_ns; } ;
struct generic_pm_domain_data {TYPE_4__ base; TYPE_2__ nb; TYPE_1__ td; } ;
struct TYPE_10__ {int lock; TYPE_3__* subsys_data; } ;
struct device {TYPE_5__ power; } ;
struct TYPE_8__ {TYPE_4__* domain_data; } ;


 int EINVAL ;
 int ENOMEM ;
 struct generic_pm_domain_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS ;
 int dev_pm_get_subsys_data (struct device*) ;
 int dev_pm_put_subsys_data (struct device*) ;
 int genpd_dev_pm_qos_notifier ;
 int kfree (struct generic_pm_domain_data*) ;
 struct generic_pm_domain_data* kzalloc (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct generic_pm_domain_data *genpd_alloc_dev_data(struct device *dev)
{
 struct generic_pm_domain_data *gpd_data;
 int ret;

 ret = dev_pm_get_subsys_data(dev);
 if (ret)
  return ERR_PTR(ret);

 gpd_data = kzalloc(sizeof(*gpd_data), GFP_KERNEL);
 if (!gpd_data) {
  ret = -ENOMEM;
  goto err_put;
 }

 gpd_data->base.dev = dev;
 gpd_data->td.constraint_changed = 1;
 gpd_data->td.effective_constraint_ns = PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS;
 gpd_data->nb.notifier_call = genpd_dev_pm_qos_notifier;

 spin_lock_irq(&dev->power.lock);

 if (dev->power.subsys_data->domain_data) {
  ret = -EINVAL;
  goto err_free;
 }

 dev->power.subsys_data->domain_data = &gpd_data->base;

 spin_unlock_irq(&dev->power.lock);

 return gpd_data;

 err_free:
 spin_unlock_irq(&dev->power.lock);
 kfree(gpd_data);
 err_put:
 dev_pm_put_subsys_data(dev);
 return ERR_PTR(ret);
}
