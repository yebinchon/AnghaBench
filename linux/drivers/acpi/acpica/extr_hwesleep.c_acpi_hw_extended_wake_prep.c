
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int acpi_status ;
struct TYPE_2__ {int sleep_control; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_STATE_S0 ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_X_SLEEP_ENABLE ;
 int ACPI_X_SLEEP_TYPE_MASK ;
 int ACPI_X_SLEEP_TYPE_POSITION ;
 int AE_OK ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_gbl_sleep_type_a ;
 int acpi_gbl_sleep_type_b ;
 int acpi_get_sleep_type_data (int ,int*,int *) ;
 int acpi_write (int ,int *) ;
 int hw_extended_wake_prep ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_extended_wake_prep(u8 sleep_state)
{
 acpi_status status;
 u8 sleep_type_value;

 ACPI_FUNCTION_TRACE(hw_extended_wake_prep);

 status = acpi_get_sleep_type_data(ACPI_STATE_S0,
       &acpi_gbl_sleep_type_a,
       &acpi_gbl_sleep_type_b);
 if (ACPI_SUCCESS(status)) {
  sleep_type_value =
      ((acpi_gbl_sleep_type_a << ACPI_X_SLEEP_TYPE_POSITION) &
       ACPI_X_SLEEP_TYPE_MASK);

  (void)acpi_write((u64)(sleep_type_value | ACPI_X_SLEEP_ENABLE),
     &acpi_gbl_FADT.sleep_control);
 }

 return_ACPI_STATUS(AE_OK);
}
