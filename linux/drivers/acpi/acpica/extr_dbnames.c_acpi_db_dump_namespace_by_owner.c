
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ acpi_owner_id ;
typedef int acpi_handle ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_TYPE_ANY ;
 scalar_t__ ACPI_UINT32_MAX ;
 int acpi_db_set_output_destination (int ) ;
 int acpi_gbl_root_node ;
 int acpi_ns_dump_objects (int ,int ,scalar_t__,scalar_t__,int ) ;
 int acpi_os_printf (char*,scalar_t__) ;
 scalar_t__ strtoul (char*,int *,int ) ;

void acpi_db_dump_namespace_by_owner(char *owner_arg, char *depth_arg)
{
 acpi_handle subtree_entry = acpi_gbl_root_node;
 u32 max_depth = ACPI_UINT32_MAX;
 acpi_owner_id owner_id;

 owner_id = (acpi_owner_id)strtoul(owner_arg, ((void*)0), 0);



 if (depth_arg) {
  max_depth = strtoul(depth_arg, ((void*)0), 0);
 }

 acpi_db_set_output_destination(ACPI_DB_DUPLICATE_OUTPUT);
 acpi_os_printf("ACPI Namespace by owner %X:\n", owner_id);



 acpi_db_set_output_destination(ACPI_DB_REDIRECTABLE_OUTPUT);
 acpi_ns_dump_objects(ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, max_depth,
        owner_id, subtree_entry);
 acpi_db_set_output_destination(ACPI_DB_CONSOLE_OUTPUT);
}
