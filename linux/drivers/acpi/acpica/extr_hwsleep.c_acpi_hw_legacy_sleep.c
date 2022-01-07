
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_bit_register_info {int access_bit_mask; int bit_position; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_BITREG_SLEEP_ENABLE ;
 int ACPI_BITREG_SLEEP_TYPE ;
 int ACPI_BITREG_WAKE_STATUS ;
 int ACPI_CLEAR_STATUS ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FLUSH_CPU_CACHE () ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGISTER_PM1_CONTROL ;
 scalar_t__ ACPI_STATE_S3 ;
 int ACPI_USEC_PER_SEC ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_OK ;
 int FALSE ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_sleep_type_b ;
 int acpi_gbl_system_awake_and_running ;
 scalar_t__ acpi_hw_clear_acpi_status () ;
 scalar_t__ acpi_hw_disable_all_gpes () ;
 scalar_t__ acpi_hw_enable_all_wakeup_gpes () ;
 struct acpi_bit_register_info* acpi_hw_get_bit_register_info (int ) ;
 scalar_t__ acpi_hw_register_read (int ,int*) ;
 scalar_t__ acpi_hw_register_write (int ,int) ;
 scalar_t__ acpi_hw_write_pm1_control (int,int) ;
 scalar_t__ acpi_os_enter_sleep (scalar_t__,int,int) ;
 int acpi_os_stall (int) ;
 scalar_t__ acpi_read_bit_register (int ,int*) ;
 scalar_t__ acpi_write_bit_register (int ,int ) ;
 int hw_legacy_sleep ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status acpi_hw_legacy_sleep(u8 sleep_state)
{
 struct acpi_bit_register_info *sleep_type_reg_info;
 struct acpi_bit_register_info *sleep_enable_reg_info;
 u32 pm1a_control;
 u32 pm1b_control;
 u32 in_value;
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_legacy_sleep);

 sleep_type_reg_info =
     acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_TYPE);
 sleep_enable_reg_info =
     acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_ENABLE);



 status = acpi_write_bit_register(ACPI_BITREG_WAKE_STATUS,
      ACPI_CLEAR_STATUS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }


 status = acpi_hw_disable_all_gpes();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 status = acpi_hw_clear_acpi_status();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 acpi_gbl_system_awake_and_running = FALSE;


 status = acpi_hw_enable_all_wakeup_gpes();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_hw_register_read(ACPI_REGISTER_PM1_CONTROL,
           &pm1a_control);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 ACPI_DEBUG_PRINT((ACPI_DB_INIT,
     "Entering sleep state [S%u]\n", sleep_state));



 pm1a_control &= ~(sleep_type_reg_info->access_bit_mask |
     sleep_enable_reg_info->access_bit_mask);
 pm1b_control = pm1a_control;



 pm1a_control |=
     (acpi_gbl_sleep_type_a << sleep_type_reg_info->bit_position);
 pm1b_control |=
     (acpi_gbl_sleep_type_b << sleep_type_reg_info->bit_position);
 status = acpi_hw_write_pm1_control(pm1a_control, pm1b_control);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 pm1a_control |= sleep_enable_reg_info->access_bit_mask;
 pm1b_control |= sleep_enable_reg_info->access_bit_mask;



 ACPI_FLUSH_CPU_CACHE();

 status = acpi_os_enter_sleep(sleep_state, pm1a_control, pm1b_control);
 if (status == AE_CTRL_TERMINATE) {
  return_ACPI_STATUS(AE_OK);
 }
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_hw_write_pm1_control(pm1a_control, pm1b_control);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (sleep_state > ACPI_STATE_S3) {
  acpi_os_stall(10 * ACPI_USEC_PER_SEC);

  status = acpi_hw_register_write(ACPI_REGISTER_PM1_CONTROL,
      sleep_enable_reg_info->
      access_bit_mask);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }
 }



 do {
  status =
      acpi_read_bit_register(ACPI_BITREG_WAKE_STATUS, &in_value);
  if (ACPI_FAILURE(status)) {
   return_ACPI_STATUS(status);
  }

 } while (!in_value);

 return_ACPI_STATUS(AE_OK);
}
