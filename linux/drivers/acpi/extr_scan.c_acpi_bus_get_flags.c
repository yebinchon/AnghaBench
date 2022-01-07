
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dynamic_status; int removable; int ejectable; } ;
struct acpi_device {TYPE_1__ flags; int handle; } ;


 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static void acpi_bus_get_flags(struct acpi_device *device)
{

 if (acpi_has_method(device->handle, "_STA"))
  device->flags.dynamic_status = 1;


 if (acpi_has_method(device->handle, "_RMV"))
  device->flags.removable = 1;


 if (acpi_has_method(device->handle, "_EJD") ||
     acpi_has_method(device->handle, "_EJ0"))
  device->flags.ejectable = 1;
}
