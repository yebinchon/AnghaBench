
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {struct acpi_walk_state* next; struct acpi_namespace_node* method_node; } ;
struct acpi_namespace_node {int dummy; } ;


 struct acpi_walk_state* acpi_ds_get_current_walk_state (int ) ;
 int acpi_gbl_current_walk_list ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;

void acpi_db_display_calling_tree(void)
{
 struct acpi_walk_state *walk_state;
 struct acpi_namespace_node *node;

 walk_state = acpi_ds_get_current_walk_state(acpi_gbl_current_walk_list);
 if (!walk_state) {
  acpi_os_printf("There is no method currently executing\n");
  return;
 }

 node = walk_state->method_node;
 acpi_os_printf("Current Control Method Call Tree\n");

 while (walk_state) {
  node = walk_state->method_node;
  acpi_os_printf("  [%4.4s]\n", acpi_ut_get_node_name(node));

  walk_state = walk_state->next;
 }
}
