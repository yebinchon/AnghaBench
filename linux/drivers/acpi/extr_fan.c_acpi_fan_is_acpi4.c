
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;


 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static bool acpi_fan_is_acpi4(struct acpi_device *device)
{
 return acpi_has_method(device->handle, "_FIF") &&
        acpi_has_method(device->handle, "_FPS") &&
        acpi_has_method(device->handle, "_FSL") &&
        acpi_has_method(device->handle, "_FST");
}
