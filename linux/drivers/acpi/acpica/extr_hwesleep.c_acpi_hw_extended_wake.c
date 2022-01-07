
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int acpi_status ;
struct TYPE_2__ {int sleep_status; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SLEEP_TYPE_INVALID ;
 int ACPI_SST_WAKING ;
 int ACPI_SST_WORKING ;
 scalar_t__ ACPI_X_WAKE_STATUS ;
 int AE_OK ;
 int METHOD_PATHNAME__SST ;
 int METHOD_PATHNAME__WAK ;
 int TRUE ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_system_awake_and_running ;
 int acpi_hw_execute_sleep_method (int ,int ) ;
 int acpi_write (int ,int *) ;
 int hw_extended_wake ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_extended_wake(u8 sleep_state)
{
 ACPI_FUNCTION_TRACE(hw_extended_wake);



 acpi_gbl_sleep_type_a = ACPI_SLEEP_TYPE_INVALID;



 acpi_hw_execute_sleep_method(METHOD_PATHNAME__SST, ACPI_SST_WAKING);
 acpi_hw_execute_sleep_method(METHOD_PATHNAME__WAK, sleep_state);






 (void)acpi_write((u64)ACPI_X_WAKE_STATUS, &acpi_gbl_FADT.sleep_status);
 acpi_gbl_system_awake_and_running = TRUE;

 acpi_hw_execute_sleep_method(METHOD_PATHNAME__SST, ACPI_SST_WORKING);
 return_ACPI_STATUS(AE_OK);
}
