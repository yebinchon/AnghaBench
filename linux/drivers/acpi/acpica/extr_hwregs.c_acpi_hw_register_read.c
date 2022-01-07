
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int smi_command; int xpm_timer_block; int xpm2_control_block; int xpm1b_control_block; int xpm1a_control_block; } ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PM1_CONTROL_WRITEONLY_BITS ;






 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_gbl_xpm1a_enable ;
 int acpi_gbl_xpm1a_status ;
 int acpi_gbl_xpm1b_enable ;
 int acpi_gbl_xpm1b_status ;
 int acpi_hw_read (scalar_t__*,int *) ;
 int acpi_hw_read_multiple (int*,int *,int *) ;
 int acpi_hw_read_port (int ,int*,int) ;
 int hw_register_read ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_register_read(u32 register_id, u32 *return_value)
{
 u32 value = 0;
 u64 value64;
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_register_read);

 switch (register_id) {
 case 131:

  status = acpi_hw_read_multiple(&value,
            &acpi_gbl_xpm1a_status,
            &acpi_gbl_xpm1b_status);
  break;

 case 132:

  status = acpi_hw_read_multiple(&value,
            &acpi_gbl_xpm1a_enable,
            &acpi_gbl_xpm1b_enable);
  break;

 case 133:

  status = acpi_hw_read_multiple(&value,
            &acpi_gbl_FADT.
            xpm1a_control_block,
            &acpi_gbl_FADT.
            xpm1b_control_block);






  value &= ~ACPI_PM1_CONTROL_WRITEONLY_BITS;
  break;

 case 130:

  status =
      acpi_hw_read(&value64, &acpi_gbl_FADT.xpm2_control_block);
  if (ACPI_SUCCESS(status)) {
   value = (u32)value64;
  }
  break;

 case 129:

  status = acpi_hw_read(&value64, &acpi_gbl_FADT.xpm_timer_block);
  if (ACPI_SUCCESS(status)) {
   value = (u32)value64;
  }

  break;

 case 128:

  status =
      acpi_hw_read_port(acpi_gbl_FADT.smi_command, &value, 8);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown Register ID: 0x%X", register_id));
  status = AE_BAD_PARAMETER;
  break;
 }

 if (ACPI_SUCCESS(status)) {
  *return_value = (u32)value;
 }

 return_ACPI_STATUS(status);
}
