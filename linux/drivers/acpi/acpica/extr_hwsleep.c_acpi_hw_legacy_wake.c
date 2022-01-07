
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int acpi_status ;
struct TYPE_2__ {int status_register_id; int enable_register_id; } ;


 int ACPI_BITREG_WAKE_STATUS ;
 int ACPI_CLEAR_STATUS ;
 int ACPI_ENABLE_EVENT ;
 size_t ACPI_EVENT_POWER_BUTTON ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SLEEP_TYPE_INVALID ;
 int ACPI_SST_WAKING ;
 int ACPI_SST_WORKING ;
 int METHOD_PATHNAME__SST ;
 int METHOD_PATHNAME__WAK ;
 int TRUE ;
 TYPE_1__* acpi_gbl_fixed_event_info ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_system_awake_and_running ;
 int acpi_hw_disable_all_gpes () ;
 int acpi_hw_enable_all_runtime_gpes () ;
 int acpi_hw_execute_sleep_method (int ,int ) ;
 int acpi_write_bit_register (int ,int ) ;
 int hw_legacy_wake ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_legacy_wake(u8 sleep_state)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_legacy_wake);



 acpi_gbl_sleep_type_a = ACPI_SLEEP_TYPE_INVALID;
 acpi_hw_execute_sleep_method(METHOD_PATHNAME__SST, ACPI_SST_WAKING);
 status = acpi_hw_disable_all_gpes();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_hw_enable_all_runtime_gpes();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }





 acpi_hw_execute_sleep_method(METHOD_PATHNAME__WAK, sleep_state);






 (void)acpi_write_bit_register(ACPI_BITREG_WAKE_STATUS,
          ACPI_CLEAR_STATUS);
 acpi_gbl_system_awake_and_running = TRUE;



 (void)
     acpi_write_bit_register(acpi_gbl_fixed_event_info
        [ACPI_EVENT_POWER_BUTTON].
        enable_register_id, ACPI_ENABLE_EVENT);

 (void)
     acpi_write_bit_register(acpi_gbl_fixed_event_info
        [ACPI_EVENT_POWER_BUTTON].
        status_register_id, ACPI_CLEAR_STATUS);

 acpi_hw_execute_sleep_method(METHOD_PATHNAME__SST, ACPI_SST_WORKING);
 return_ACPI_STATUS(status);
}
