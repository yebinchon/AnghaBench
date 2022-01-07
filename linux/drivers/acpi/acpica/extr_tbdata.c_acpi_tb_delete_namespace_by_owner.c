
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
typedef int acpi_owner_id ;
struct TYPE_4__ {size_t current_table_count; TYPE_1__* tables; } ;
struct TYPE_3__ {int owner_id; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_TABLES ;
 int AE_NOT_EXIST ;
 int acpi_gbl_namespace_rw_lock ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_ns_delete_namespace_by_owner (int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_acquire_write_lock (int *) ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_release_write_lock (int *) ;
 int return_ACPI_STATUS (int ) ;
 int tb_delete_namespace_by_owner ;

acpi_status acpi_tb_delete_namespace_by_owner(u32 table_index)
{
 acpi_owner_id owner_id;
 acpi_status status;

 ACPI_FUNCTION_TRACE(tb_delete_namespace_by_owner);

 status = acpi_ut_acquire_mutex(ACPI_MTX_TABLES);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 if (table_index >= acpi_gbl_root_table_list.current_table_count) {



  (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 owner_id = acpi_gbl_root_table_list.tables[table_index].owner_id;
 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 status = acpi_ut_acquire_write_lock(&acpi_gbl_namespace_rw_lock);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 acpi_ns_delete_namespace_by_owner(owner_id);
 acpi_ut_release_write_lock(&acpi_gbl_namespace_rw_lock);
 return_ACPI_STATUS(status);
}
