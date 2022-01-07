
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct generic_pm_domain_data {unsigned int performance_state; } ;
struct generic_pm_domain {int set_performance_state; } ;
struct TYPE_4__ {TYPE_1__* subsys_data; } ;
struct device {TYPE_2__ power; } ;
struct TYPE_3__ {int domain_data; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 unsigned int _genpd_reeval_performance_state (struct generic_pm_domain*,unsigned int) ;
 int _genpd_set_performance_state (struct generic_pm_domain*,unsigned int,int ) ;
 struct generic_pm_domain* dev_to_genpd_safe (struct device*) ;
 int genpd_lock (struct generic_pm_domain*) ;
 int genpd_unlock (struct generic_pm_domain*) ;
 struct generic_pm_domain_data* to_gpd_data (int ) ;
 scalar_t__ unlikely (int) ;

int dev_pm_genpd_set_performance_state(struct device *dev, unsigned int state)
{
 struct generic_pm_domain *genpd;
 struct generic_pm_domain_data *gpd_data;
 unsigned int prev;
 int ret;

 genpd = dev_to_genpd_safe(dev);
 if (!genpd)
  return -ENODEV;

 if (unlikely(!genpd->set_performance_state))
  return -EINVAL;

 if (WARN_ON(!dev->power.subsys_data ||
       !dev->power.subsys_data->domain_data))
  return -EINVAL;

 genpd_lock(genpd);

 gpd_data = to_gpd_data(dev->power.subsys_data->domain_data);
 prev = gpd_data->performance_state;
 gpd_data->performance_state = state;

 state = _genpd_reeval_performance_state(genpd, state);
 ret = _genpd_set_performance_state(genpd, state, 0);
 if (ret)
  gpd_data->performance_state = prev;

 genpd_unlock(genpd);

 return ret;
}
