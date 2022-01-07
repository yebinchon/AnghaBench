
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_bit_register_info {int access_bit_mask; int bit_position; } ;
typedef int acpi_status ;


 int ACPI_BITREG_SLEEP_ENABLE ;
 int ACPI_BITREG_SLEEP_TYPE ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGISTER_PM1_CONTROL ;
 int ACPI_STATE_S0 ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_sleep_type_b ;
 int acpi_get_sleep_type_data (int ,int*,int*) ;
 struct acpi_bit_register_info* acpi_hw_get_bit_register_info (int ) ;
 int acpi_hw_register_read (int ,int*) ;
 int acpi_hw_write_pm1_control (int,int) ;
 int hw_legacy_wake_prep ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_legacy_wake_prep(u8 sleep_state)
{
 acpi_status status;
 struct acpi_bit_register_info *sleep_type_reg_info;
 struct acpi_bit_register_info *sleep_enable_reg_info;
 u32 pm1a_control;
 u32 pm1b_control;

 ACPI_FUNCTION_TRACE(hw_legacy_wake_prep);






 status = acpi_get_sleep_type_data(ACPI_STATE_S0,
       &acpi_gbl_sleep_type_a,
       &acpi_gbl_sleep_type_b);
 if (ACPI_SUCCESS(status)) {
  sleep_type_reg_info =
      acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_TYPE);
  sleep_enable_reg_info =
      acpi_hw_get_bit_register_info(ACPI_BITREG_SLEEP_ENABLE);



  status = acpi_hw_register_read(ACPI_REGISTER_PM1_CONTROL,
            &pm1a_control);
  if (ACPI_SUCCESS(status)) {



   pm1a_control &= ~(sleep_type_reg_info->access_bit_mask |
       sleep_enable_reg_info->
       access_bit_mask);
   pm1b_control = pm1a_control;



   pm1a_control |= (acpi_gbl_sleep_type_a <<
      sleep_type_reg_info->bit_position);
   pm1b_control |= (acpi_gbl_sleep_type_b <<
      sleep_type_reg_info->bit_position);



   (void)acpi_hw_write_pm1_control(pm1a_control,
       pm1b_control);
  }
 }

 return_ACPI_STATUS(status);
}
