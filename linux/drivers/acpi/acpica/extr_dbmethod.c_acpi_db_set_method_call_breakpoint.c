
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_parse_object {int dummy; } acpi_parse_object ;


 int TRUE ;
 int acpi_gbl_step_to_next_call ;
 int acpi_os_printf (char*) ;

void acpi_db_set_method_call_breakpoint(union acpi_parse_object *op)
{

 if (!op) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }

 acpi_gbl_step_to_next_call = TRUE;
}
