
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 unsigned long long ACPI_STA_DEVICE_ENABLED ;
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 unsigned long long ACPI_STA_DEVICE_UI ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

acpi_status acpi_bus_get_status_handle(acpi_handle handle,
           unsigned long long *sta)
{
 acpi_status status;

 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), sta);
 if (ACPI_SUCCESS(status))
  return AE_OK;

 if (status == AE_NOT_FOUND) {
  *sta = ACPI_STA_DEVICE_PRESENT | ACPI_STA_DEVICE_ENABLED |
         ACPI_STA_DEVICE_UI | ACPI_STA_DEVICE_FUNCTIONING;
  return AE_OK;
 }
 return status;
}
