
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct generic_pm_domain {int dummy; } ;
struct TYPE_2__ {scalar_t__ runtime_suspend; } ;
struct device {struct device* pm_domain; TYPE_1__ ops; } ;


 scalar_t__ IS_ERR_OR_NULL (struct device*) ;
 scalar_t__ genpd_runtime_suspend ;
 struct generic_pm_domain* pd_to_genpd (struct device*) ;

__attribute__((used)) static struct generic_pm_domain *dev_to_genpd_safe(struct device *dev)
{
 if (IS_ERR_OR_NULL(dev) || IS_ERR_OR_NULL(dev->pm_domain))
  return ((void*)0);


 if (dev->pm_domain->ops.runtime_suspend == genpd_runtime_suspend)
  return pd_to_genpd(dev->pm_domain);

 return ((void*)0);
}
