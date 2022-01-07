
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* pm_domain; } ;
struct TYPE_2__ {int (* detach ) (struct device*,int) ;} ;


 int stub1 (struct device*,int) ;

void dev_pm_domain_detach(struct device *dev, bool power_off)
{
 if (dev->pm_domain && dev->pm_domain->detach)
  dev->pm_domain->detach(dev, power_off);
}
