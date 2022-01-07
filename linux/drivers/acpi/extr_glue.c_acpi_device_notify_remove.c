
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct acpi_device {TYPE_1__* handler; } ;
struct acpi_bus_type {int (* cleanup ) (struct device*) ;} ;
struct TYPE_2__ {int (* unbind ) (struct device*) ;} ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 struct acpi_bus_type* acpi_get_bus_type (struct device*) ;
 int acpi_unbind_one (struct device*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;

__attribute__((used)) static int acpi_device_notify_remove(struct device *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 struct acpi_bus_type *type;

 if (!adev)
  return 0;

 type = acpi_get_bus_type(dev);
 if (type && type->cleanup)
  type->cleanup(dev);
 else if (adev->handler && adev->handler->unbind)
  adev->handler->unbind(dev);

 acpi_unbind_one(dev);
 return 0;
}
