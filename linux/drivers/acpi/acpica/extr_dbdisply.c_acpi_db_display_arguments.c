
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {int dummy; } ;


 int acpi_db_decode_arguments (struct acpi_walk_state*) ;
 struct acpi_walk_state* acpi_ds_get_current_walk_state (int ) ;
 int acpi_gbl_current_walk_list ;
 int acpi_os_printf (char*) ;

void acpi_db_display_arguments(void)
{
 struct acpi_walk_state *walk_state;

 walk_state = acpi_ds_get_current_walk_state(acpi_gbl_current_walk_list);
 if (!walk_state) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }

 acpi_db_decode_arguments(walk_state);
}
