
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct generic_pm_domain* dev_to_genpd_safe (struct device*) ;
 int genpd_remove_device (struct generic_pm_domain*,struct device*) ;

int pm_genpd_remove_device(struct device *dev)
{
 struct generic_pm_domain *genpd = dev_to_genpd_safe(dev);

 if (!genpd)
  return -EINVAL;

 return genpd_remove_device(genpd, dev);
}
