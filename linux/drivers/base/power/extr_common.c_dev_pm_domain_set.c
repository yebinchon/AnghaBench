
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct dev_pm_domain* pm_domain; } ;
struct dev_pm_domain {int dummy; } ;


 int WARN (int,char*) ;
 scalar_t__ device_is_bound (struct device*) ;
 int device_pm_check_callbacks (struct device*) ;

void dev_pm_domain_set(struct device *dev, struct dev_pm_domain *pd)
{
 if (dev->pm_domain == pd)
  return;

 WARN(pd && device_is_bound(dev),
      "PM domains can only be changed for unbound devices\n");
 dev->pm_domain = pd;
 device_pm_check_callbacks(dev);
}
