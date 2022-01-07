
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;


 int ACPI_ERROR (int ) ;
 int ACPI_EVENT_GLOBAL ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 scalar_t__ AE_NO_HARDWARE_RESPONSE ;
 scalar_t__ AE_OK ;
 void* FALSE ;
 void* TRUE ;
 int acpi_ev_global_lock_handler ;
 void* acpi_gbl_global_lock_pending ;
 int acpi_gbl_global_lock_pending_lock ;
 void* acpi_gbl_global_lock_present ;
 scalar_t__ acpi_gbl_reduced_hardware ;
 scalar_t__ acpi_install_fixed_event_handler (int ,int ,int *) ;
 scalar_t__ acpi_os_create_lock (int *) ;
 int ev_init_global_lock_handler ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_ev_init_global_lock_handler(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_init_global_lock_handler);



 if (acpi_gbl_reduced_hardware) {
  return_ACPI_STATUS(AE_OK);
 }



 status = acpi_install_fixed_event_handler(ACPI_EVENT_GLOBAL,
        acpi_ev_global_lock_handler,
        ((void*)0));







 acpi_gbl_global_lock_present = FALSE;
 if (status == AE_NO_HARDWARE_RESPONSE) {
  ACPI_ERROR((AE_INFO,
       "No response from Global Lock hardware, disabling lock"));

  return_ACPI_STATUS(AE_OK);
 }

 status = acpi_os_create_lock(&acpi_gbl_global_lock_pending_lock);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 acpi_gbl_global_lock_pending = FALSE;
 acpi_gbl_global_lock_present = TRUE;
 return_ACPI_STATUS(status);
}
