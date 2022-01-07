
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_handle ;


 int acpi_bay_match (int ) ;
 scalar_t__ acpi_device_is_battery (struct acpi_device*) ;
 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static bool is_ejectable_bay(struct acpi_device *adev)
{
 acpi_handle handle = adev->handle;

 if (acpi_has_method(handle, "_EJ0") && acpi_device_is_battery(adev))
  return 1;

 return acpi_bay_match(handle);
}
