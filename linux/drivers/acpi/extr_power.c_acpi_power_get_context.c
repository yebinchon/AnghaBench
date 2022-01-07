
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_resource {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 struct acpi_power_resource* to_power_resource (struct acpi_device*) ;

__attribute__((used)) static struct acpi_power_resource *acpi_power_get_context(acpi_handle handle)
{
 struct acpi_device *device;

 if (acpi_bus_get_device(handle, &device))
  return ((void*)0);

 return to_power_resource(device);
}
