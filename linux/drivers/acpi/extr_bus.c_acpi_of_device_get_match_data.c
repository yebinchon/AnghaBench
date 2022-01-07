
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device_id {void const* data; } ;
struct device {TYPE_1__* driver; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int of_match_table; } ;


 struct acpi_device* ACPI_COMPANION (struct device const*) ;
 int acpi_of_match_device (struct acpi_device*,int ,struct of_device_id const**) ;

__attribute__((used)) static const void *acpi_of_device_get_match_data(const struct device *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 const struct of_device_id *match = ((void*)0);

 if (!acpi_of_match_device(adev, dev->driver->of_match_table, &match))
  return ((void*)0);

 return match->data;
}
