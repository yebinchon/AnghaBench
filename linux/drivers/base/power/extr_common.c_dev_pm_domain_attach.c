
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ pm_domain; } ;


 int acpi_dev_pm_attach (struct device*,int) ;
 int genpd_dev_pm_attach (struct device*) ;

int dev_pm_domain_attach(struct device *dev, bool power_on)
{
 int ret;

 if (dev->pm_domain)
  return 0;

 ret = acpi_dev_pm_attach(dev, power_on);
 if (!ret)
  ret = genpd_dev_pm_attach(dev);

 return ret < 0 ? ret : 0;
}
