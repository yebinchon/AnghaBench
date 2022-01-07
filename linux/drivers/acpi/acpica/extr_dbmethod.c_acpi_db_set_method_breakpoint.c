
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aml; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int aml_start; } ;
struct acpi_walk_state {scalar_t__ user_breakpoint; TYPE_2__ parser_state; } ;


 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 int acpi_os_printf (char*,...) ;
 scalar_t__ strtoul (char*,int *,int) ;

void
acpi_db_set_method_breakpoint(char *location,
         struct acpi_walk_state *walk_state,
         union acpi_parse_object *op)
{
 u32 address;
 u32 aml_offset;

 if (!op) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }



 address = strtoul(location, ((void*)0), 16);
 aml_offset = (u32)ACPI_PTR_DIFF(op->common.aml,
     walk_state->parser_state.aml_start);
 if (address <= aml_offset) {
  acpi_os_printf("Breakpoint %X is beyond current address %X\n",
          address, aml_offset);
 }



 walk_state->user_breakpoint = address;
 acpi_os_printf("Breakpoint set at AML offset %X\n", address);
}
