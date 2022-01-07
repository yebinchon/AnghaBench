
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 scalar_t__ ACPI_INVALID_TABLE_INDEX ;
 scalar_t__ ACPI_SYS_MODE_ACPI ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NO_ACPI_TABLES ;
 int AE_NO_HARDWARE_RESPONSE ;
 int AE_OK ;
 scalar_t__ acpi_gbl_fadt_index ;
 scalar_t__ acpi_gbl_reduced_hardware ;
 scalar_t__ acpi_hw_get_mode () ;
 int acpi_hw_set_mode (scalar_t__) ;
 int acpi_os_stall (int) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_enable(void)
{
 acpi_status status;
 int retry;

 ACPI_FUNCTION_TRACE(acpi_enable);



 if (acpi_gbl_fadt_index == ACPI_INVALID_TABLE_INDEX) {
  return_ACPI_STATUS(AE_NO_ACPI_TABLES);
 }



 if (acpi_gbl_reduced_hardware) {
  return_ACPI_STATUS(AE_OK);
 }



 if (acpi_hw_get_mode() == ACPI_SYS_MODE_ACPI) {
  ACPI_DEBUG_PRINT((ACPI_DB_INIT,
      "System is already in ACPI mode\n"));
  return_ACPI_STATUS(AE_OK);
 }



 status = acpi_hw_set_mode(ACPI_SYS_MODE_ACPI);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO,
       "Could not transition to ACPI mode"));
  return_ACPI_STATUS(status);
 }



 for (retry = 0; retry < 30000; ++retry) {
  if (acpi_hw_get_mode() == ACPI_SYS_MODE_ACPI) {
   if (retry != 0)
    ACPI_WARNING((AE_INFO,
    "Platform took > %d00 usec to enter ACPI mode", retry));
   return_ACPI_STATUS(AE_OK);
  }
  acpi_os_stall(100);
 }

 ACPI_ERROR((AE_INFO, "Hardware did not enter ACPI mode"));
 return_ACPI_STATUS(AE_NO_HARDWARE_RESPONSE);
}
