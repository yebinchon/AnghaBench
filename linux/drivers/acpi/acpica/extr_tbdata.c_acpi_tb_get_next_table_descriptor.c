
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_desc {int dummy; } ;
typedef int acpi_status ;
struct TYPE_2__ {scalar_t__ current_table_count; scalar_t__ max_table_count; struct acpi_table_desc* tables; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int acpi_tb_resize_root_table_list () ;

acpi_status
acpi_tb_get_next_table_descriptor(u32 *table_index,
      struct acpi_table_desc **table_desc)
{
 acpi_status status;
 u32 i;



 if (acpi_gbl_root_table_list.current_table_count >=
     acpi_gbl_root_table_list.max_table_count) {
  status = acpi_tb_resize_root_table_list();
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }

 i = acpi_gbl_root_table_list.current_table_count;
 acpi_gbl_root_table_list.current_table_count++;

 if (table_index) {
  *table_index = i;
 }
 if (table_desc) {
  *table_desc = &acpi_gbl_root_table_list.tables[i];
 }

 return (AE_OK);
}
