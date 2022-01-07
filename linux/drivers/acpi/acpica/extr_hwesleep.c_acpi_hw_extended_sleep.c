
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ acpi_status ;
struct TYPE_4__ {int address; } ;
struct TYPE_5__ {TYPE_1__ sleep_status; TYPE_1__ sleep_control; } ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FLUSH_CPU_CACHE () ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_X_SLEEP_ENABLE ;
 int ACPI_X_SLEEP_TYPE_MASK ;
 int ACPI_X_SLEEP_TYPE_POSITION ;
 int ACPI_X_WAKE_STATUS ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_OK ;
 int FALSE ;
 TYPE_3__ acpi_gbl_FADT ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_system_awake_and_running ;
 scalar_t__ acpi_os_enter_sleep (int,int,int ) ;
 scalar_t__ acpi_read (scalar_t__*,TYPE_1__*) ;
 scalar_t__ acpi_write (scalar_t__,TYPE_1__*) ;
 int hw_extended_sleep ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_hw_extended_sleep(u8 sleep_state)
{
 acpi_status status;
 u8 sleep_control;
 u64 sleep_status;

 ACPI_FUNCTION_TRACE(hw_extended_sleep);



 if (!acpi_gbl_FADT.sleep_control.address ||
     !acpi_gbl_FADT.sleep_status.address) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 status = acpi_write((u64)ACPI_X_WAKE_STATUS,
       &acpi_gbl_FADT.sleep_status);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 acpi_gbl_system_awake_and_running = FALSE;







 ACPI_DEBUG_PRINT((ACPI_DB_INIT,
     "Entering sleep state [S%u]\n", sleep_state));

 sleep_control = ((acpi_gbl_sleep_type_a << ACPI_X_SLEEP_TYPE_POSITION) &
    ACPI_X_SLEEP_TYPE_MASK) | ACPI_X_SLEEP_ENABLE;



 ACPI_FLUSH_CPU_CACHE();

 status = acpi_os_enter_sleep(sleep_state, sleep_control, 0);
 if (status == AE_CTRL_TERMINATE) {
  return_ACPI_STATUS(AE_OK);
 }
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_write((u64)sleep_control, &acpi_gbl_FADT.sleep_control);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 do {
  status = acpi_read(&sleep_status, &acpi_gbl_FADT.sleep_status);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

 } while (!(((u8)sleep_status) & ACPI_X_WAKE_STATUS));

 return_ACPI_STATUS(AE_OK);
}
