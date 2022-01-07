
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_3__ {scalar_t__ address; } ;
struct TYPE_4__ {TYPE_1__ xpm1b_control_block; TYPE_1__ xpm1a_control_block; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 TYPE_2__ acpi_gbl_FADT ;
 int acpi_hw_write (int ,TYPE_1__*) ;
 int hw_write_pm1_control ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_hw_write_pm1_control(u32 pm1a_control, u32 pm1b_control)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(hw_write_pm1_control);

 status =
     acpi_hw_write(pm1a_control, &acpi_gbl_FADT.xpm1a_control_block);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (acpi_gbl_FADT.xpm1b_control_block.address) {
  status =
      acpi_hw_write(pm1b_control,
      &acpi_gbl_FADT.xpm1b_control_block);
 }
 return_ACPI_STATUS(status);
}
