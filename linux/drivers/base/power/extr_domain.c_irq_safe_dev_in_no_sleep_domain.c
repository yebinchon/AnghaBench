
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int name; } ;
struct device {int dummy; } ;


 int dev_warn_once (struct device*,char*,int ) ;
 int genpd_is_always_on (struct generic_pm_domain const*) ;
 int genpd_is_irq_safe (struct generic_pm_domain const*) ;
 scalar_t__ pm_runtime_is_irq_safe (struct device*) ;

__attribute__((used)) static inline bool irq_safe_dev_in_no_sleep_domain(struct device *dev,
  const struct generic_pm_domain *genpd)
{
 bool ret;

 ret = pm_runtime_is_irq_safe(dev) && !genpd_is_irq_safe(genpd);






 if (ret && !genpd_is_always_on(genpd))
  dev_warn_once(dev, "PM domain %s will not be powered off\n",
    genpd->name);

 return ret;
}
