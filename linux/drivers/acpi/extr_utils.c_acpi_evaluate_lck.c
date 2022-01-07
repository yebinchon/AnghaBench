
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_execute_simple_method (int ,char*,int) ;
 int acpi_handle_warn (int ,char*,scalar_t__) ;

acpi_status acpi_evaluate_lck(acpi_handle handle, int lock)
{
 acpi_status status;

 status = acpi_execute_simple_method(handle, "_LCK", !!lock);
 if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
  if (lock)
   acpi_handle_warn(handle,
    "Locking device failed (0x%x)\n", status);
  else
   acpi_handle_warn(handle,
    "Unlocking device failed (0x%x)\n", status);
 }

 return status;
}
