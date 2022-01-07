
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int acpi_get_data_full (int ,int ,void**,void (*) (void*)) ;
 int acpi_scan_drop_device ;

__attribute__((used)) static int acpi_get_device_data(acpi_handle handle, struct acpi_device **device,
    void (*callback)(void *))
{
 acpi_status status;

 if (!device)
  return -EINVAL;

 status = acpi_get_data_full(handle, acpi_scan_drop_device,
        (void **)device, callback);
 if (ACPI_FAILURE(status) || !*device) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No context for object [%p]\n",
      handle));
  return -ENODEV;
 }
 return 0;
}
