
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int acpi_match_table; } ;


 struct acpi_device_id* acpi_match_device (int ,struct device const*) ;
 void const* acpi_of_device_get_match_data (struct device const*) ;

const void *acpi_device_get_match_data(const struct device *dev)
{
 const struct acpi_device_id *match;

 if (!dev->driver->acpi_match_table)
  return acpi_of_device_get_match_data(dev);

 match = acpi_match_device(dev->driver->acpi_match_table, dev);
 if (!match)
  return ((void*)0);

 return (const void *)match->driver_data;
}
