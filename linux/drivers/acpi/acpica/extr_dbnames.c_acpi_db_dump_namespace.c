
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; scalar_t__ parent; } ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_NAMESPACE_ROOT ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 scalar_t__ acpi_db_convert_to_node (char*) ;
 int acpi_db_set_output_destination (int ) ;
 scalar_t__ acpi_gbl_root_node ;
 int acpi_ns_dump_objects (int ,int ,int ,int ,scalar_t__) ;
 int acpi_os_printf (char*,int ,...) ;
 int strtoul (char*,int *,int ) ;

void acpi_db_dump_namespace(char *start_arg, char *depth_arg)
{
 acpi_handle subtree_entry = acpi_gbl_root_node;
 u32 max_depth = ACPI_UINT32_MAX;



 if (start_arg) {
  subtree_entry = acpi_db_convert_to_node(start_arg);
  if (!subtree_entry) {
   return;
  }



  if (depth_arg) {
   max_depth = strtoul(depth_arg, ((void*)0), 0);
  }
 }

 acpi_db_set_output_destination(ACPI_DB_DUPLICATE_OUTPUT);

 if (((struct acpi_namespace_node *)subtree_entry)->parent) {
  acpi_os_printf("ACPI Namespace (from %4.4s (%p) subtree):\n",
          ((struct acpi_namespace_node *)subtree_entry)->
          name.ascii, subtree_entry);
 } else {
  acpi_os_printf("ACPI Namespace (from %s):\n",
          ACPI_NAMESPACE_ROOT);
 }



 acpi_db_set_output_destination(ACPI_DB_REDIRECTABLE_OUTPUT);
 acpi_ns_dump_objects(ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, max_depth,
        ACPI_OWNER_ID_MAX, subtree_entry);
 acpi_db_set_output_destination(ACPI_DB_CONSOLE_OUTPUT);
}
