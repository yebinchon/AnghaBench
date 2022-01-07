
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_set_output_destination (int ) ;
 int acpi_gbl_root_node ;
 int acpi_ns_dump_object_paths (int ,int ,int ,int ,int ) ;
 int acpi_os_printf (char*) ;

void acpi_db_dump_namespace_paths(void)
{

 acpi_db_set_output_destination(ACPI_DB_DUPLICATE_OUTPUT);
 acpi_os_printf("ACPI Namespace (from root):\n");



 acpi_db_set_output_destination(ACPI_DB_REDIRECTABLE_OUTPUT);
 acpi_ns_dump_object_paths(ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY,
      ACPI_UINT32_MAX, ACPI_OWNER_ID_MAX,
      acpi_gbl_root_node);

 acpi_db_set_output_destination(ACPI_DB_CONSOLE_OUTPUT);
}
