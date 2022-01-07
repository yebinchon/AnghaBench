
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_get_handle (int ,char*,int *) ;

__attribute__((used)) static bool acpi_nvdimm_has_method(struct acpi_device *adev, char *method)
{
 acpi_handle handle;
 acpi_status status;

 status = acpi_get_handle(adev->handle, method, &handle);

 if (ACPI_SUCCESS(status))
  return 1;
 return 0;
}
