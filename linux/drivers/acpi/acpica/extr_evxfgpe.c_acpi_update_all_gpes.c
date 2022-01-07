
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int ACPI_MTX_EVENTS ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_ev_gpe_detect (int ) ;
 int acpi_ev_initialize_gpe_block ;
 int acpi_ev_walk_gpe_list (int ,scalar_t__*) ;
 scalar_t__ acpi_gbl_all_gpes_initialized ;
 int acpi_gbl_gpe_xrupt_list_head ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_update_all_gpes(void)
{
 acpi_status status;
 u8 is_polling_needed = FALSE;

 ACPI_FUNCTION_TRACE(acpi_update_all_gpes);

 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (acpi_gbl_all_gpes_initialized) {
  goto unlock_and_exit;
 }

 status = acpi_ev_walk_gpe_list(acpi_ev_initialize_gpe_block,
           &is_polling_needed);
 if (ACPI_SUCCESS(status)) {
  acpi_gbl_all_gpes_initialized = TRUE;
 }

unlock_and_exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_EVENTS);

 if (is_polling_needed && acpi_gbl_all_gpes_initialized) {



  acpi_ev_gpe_detect(acpi_gbl_gpe_xrupt_list_head);
 }
 return_ACPI_STATUS(status);
}
