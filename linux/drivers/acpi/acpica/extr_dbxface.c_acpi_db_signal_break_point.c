
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {int dummy; } ;


 int TRUE ;
 int acpi_gbl_cm_single_step ;
 scalar_t__ acpi_gbl_db_thread_id ;
 scalar_t__ acpi_os_get_thread_id () ;
 int acpi_os_printf (char*) ;

void acpi_db_signal_break_point(struct acpi_walk_state *walk_state)
{


 if (acpi_gbl_db_thread_id != acpi_os_get_thread_id()) {
  return;
 }







 acpi_gbl_cm_single_step = TRUE;
 acpi_os_printf("**break** Executed AML BreakPoint opcode\n");
}
