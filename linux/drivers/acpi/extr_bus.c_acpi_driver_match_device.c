
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int of_match_table; int acpi_match_table; } ;
struct device {int dummy; } ;


 int ACPI_COMPANION (struct device*) ;
 int __acpi_match_device (int ,int ,int ,int *,int *) ;
 int acpi_companion_match (struct device*) ;
 int acpi_of_match_device (int ,int ,int *) ;

bool acpi_driver_match_device(struct device *dev,
         const struct device_driver *drv)
{
 if (!drv->acpi_match_table)
  return acpi_of_match_device(ACPI_COMPANION(dev),
         drv->of_match_table,
         ((void*)0));

 return __acpi_match_device(acpi_companion_match(dev),
       drv->acpi_match_table, drv->of_match_table,
       ((void*)0), ((void*)0));
}
