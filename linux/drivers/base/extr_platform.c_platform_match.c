
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {scalar_t__ id_table; } ;
struct platform_device {scalar_t__ name; scalar_t__ driver_override; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 scalar_t__ acpi_driver_match_device (struct device*,struct device_driver*) ;
 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 int * platform_match_id (scalar_t__,struct platform_device*) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct platform_driver* to_platform_driver (struct device_driver*) ;

__attribute__((used)) static int platform_match(struct device *dev, struct device_driver *drv)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct platform_driver *pdrv = to_platform_driver(drv);


 if (pdev->driver_override)
  return !strcmp(pdev->driver_override, drv->name);


 if (of_driver_match_device(dev, drv))
  return 1;


 if (acpi_driver_match_device(dev, drv))
  return 1;


 if (pdrv->id_table)
  return platform_match_id(pdrv->id_table, pdev) != ((void*)0);


 return (strcmp(pdev->name, drv->name) == 0);
}
