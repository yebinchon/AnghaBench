
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
struct TYPE_4__ {TYPE_1__* tables; } ;
struct TYPE_3__ {int owner_id; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_ALREADY_EXISTS ;
 int TRUE ;
 int acpi_ds_initialize_objects (size_t,struct acpi_namespace_node*) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_ns_delete_namespace_by_owner (int ) ;
 int acpi_ns_parse_table (size_t,struct acpi_namespace_node*) ;
 int acpi_tb_allocate_owner_id (size_t) ;
 scalar_t__ acpi_tb_is_table_loaded (size_t) ;
 int acpi_tb_release_owner_id (size_t) ;
 int acpi_tb_set_table_loaded_flag (size_t,int ) ;
 int ns_load_table ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ns_load_table(u32 table_index, struct acpi_namespace_node *node)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_load_table);



 if (acpi_tb_is_table_loaded(table_index)) {
  status = AE_ALREADY_EXISTS;
  goto unlock;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Loading table into namespace ****\n"));

 status = acpi_tb_allocate_owner_id(table_index);
 if (ACPI_FAILURE(status)) {
  goto unlock;
 }
 status = acpi_ns_parse_table(table_index, node);
 if (ACPI_SUCCESS(status)) {
  acpi_tb_set_table_loaded_flag(table_index, TRUE);
 } else {
  acpi_ns_delete_namespace_by_owner(acpi_gbl_root_table_list.
        tables[table_index].owner_id);

  acpi_tb_release_owner_id(table_index);
  return_ACPI_STATUS(status);
 }

unlock:
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }







 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Begin Table Object Initialization\n"));

 acpi_ex_enter_interpreter();
 status = acpi_ds_initialize_objects(table_index, node);
 acpi_ex_exit_interpreter();

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "**** Completed Table Object Initialization\n"));

 return_ACPI_STATUS(status);
}
