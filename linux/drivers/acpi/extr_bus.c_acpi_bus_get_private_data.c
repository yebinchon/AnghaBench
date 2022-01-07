
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int acpi_bus_private_data_handler ;
 int acpi_get_data (int ,int ,void**) ;
 int acpi_handle_debug (int ,char*) ;

int acpi_bus_get_private_data(acpi_handle handle, void **data)
{
 acpi_status status;

 if (!*data)
  return -EINVAL;

 status = acpi_get_data(handle, acpi_bus_private_data_handler, data);
 if (ACPI_FAILURE(status)) {
  acpi_handle_debug(handle, "No context for object\n");
  return -ENODEV;
 }

 return 0;
}
