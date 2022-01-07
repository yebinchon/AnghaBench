
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NULL_ENTRY ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 scalar_t__ acpi_get_parent (int ,int *) ;
 struct acpi_device* acpi_root ;

__attribute__((used)) static struct acpi_device *acpi_bus_get_parent(acpi_handle handle)
{
 struct acpi_device *device = ((void*)0);
 acpi_status status;






 if (!handle)
  return acpi_root;

 do {
  status = acpi_get_parent(handle, &handle);
  if (ACPI_FAILURE(status))
   return status == AE_NULL_ENTRY ? ((void*)0) : acpi_root;
 } while (acpi_bus_get_device(handle, &device));
 return device;
}
