
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_walk_state {struct acpi_thread_state* thread; scalar_t__ deferred_node; struct acpi_namespace_node* method_node; } ;
struct acpi_thread_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int AE_CODE_CONTROL ;
 int AE_CODE_MASK ;
 int acpi_db_decode_arguments (struct acpi_walk_state*) ;
 int acpi_db_decode_locals (struct acpi_walk_state*) ;
 struct acpi_namespace_node* acpi_gbl_root_node ;
 int acpi_os_printf (char*) ;

void
acpi_db_dump_method_info(acpi_status status, struct acpi_walk_state *walk_state)
{
 struct acpi_thread_state *thread;
 struct acpi_namespace_node *node;

 node = walk_state->method_node;



 if (node == acpi_gbl_root_node) {
  return;
 }



 if ((status & AE_CODE_MASK) == AE_CODE_CONTROL) {
  return;
 }



 if (walk_state->deferred_node) {
  acpi_os_printf("Executing subtree for Buffer/Package/Region\n");
  return;
 }






 thread = walk_state->thread;
 if (!thread) {
  return;
 }



 acpi_os_printf("\n");
 acpi_db_decode_locals(walk_state);
 acpi_os_printf("\n");
 acpi_db_decode_arguments(walk_state);
 acpi_os_printf("\n");
}
