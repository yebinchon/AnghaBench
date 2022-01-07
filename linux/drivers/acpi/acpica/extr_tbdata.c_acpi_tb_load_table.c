
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_owner_id ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TABLE_EVENT_LOAD ;
 int acpi_ev_update_gpes (int ) ;
 int acpi_get_table_by_index (int ,struct acpi_table_header**) ;
 int acpi_ns_load_table (int ,struct acpi_namespace_node*) ;
 int acpi_tb_get_owner_id (int ,int *) ;
 int acpi_tb_notify_table (int ,struct acpi_table_header*) ;
 int return_ACPI_STATUS (int ) ;
 int tb_load_table ;

acpi_status
acpi_tb_load_table(u32 table_index, struct acpi_namespace_node *parent_node)
{
 struct acpi_table_header *table;
 acpi_status status;
 acpi_owner_id owner_id;

 ACPI_FUNCTION_TRACE(tb_load_table);





 status = acpi_get_table_by_index(table_index, &table);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_ns_load_table(table_index, parent_node);






 status = acpi_tb_get_owner_id(table_index, &owner_id);
 if (ACPI_SUCCESS(status)) {
  acpi_ev_update_gpes(owner_id);
 }



 acpi_tb_notify_table(ACPI_TABLE_EVENT_LOAD, table);
 return_ACPI_STATUS(status);
}
