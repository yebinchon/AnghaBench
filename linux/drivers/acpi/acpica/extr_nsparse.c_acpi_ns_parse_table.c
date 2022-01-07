
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GET_FUNCTION_NAME ;
 int acpi_ns_execute_table (int ,struct acpi_namespace_node*) ;
 int ns_parse_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_parse_table(u32 table_index, struct acpi_namespace_node *start_node)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_parse_table);
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_PARSE,
         "%s: **** Start table execution pass\n",
         ACPI_GET_FUNCTION_NAME));

 status = acpi_ns_execute_table(table_index, start_node);

 return_ACPI_STATUS(status);
}
