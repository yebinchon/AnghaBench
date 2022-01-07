
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_desc {int dummy; } ;
typedef int acpi_status ;
struct TYPE_4__ {size_t current_table_count; TYPE_1__* tables; } ;
struct TYPE_3__ {int flags; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TABLE_IS_LOADED ;
 int ACPI_TABLE_IS_VERIFIED ;
 int AE_ALREADY_EXISTS ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_tb_compare_tables (struct acpi_table_desc*,size_t) ;
 int return_ACPI_STATUS (int ) ;
 int tb_check_duplication ;

__attribute__((used)) static acpi_status
acpi_tb_check_duplication(struct acpi_table_desc *table_desc, u32 *table_index)
{
 u32 i;

 ACPI_FUNCTION_TRACE(tb_check_duplication);



 for (i = 0; i < acpi_gbl_root_table_list.current_table_count; ++i) {



  if (!
      (acpi_gbl_root_table_list.tables[i].
       flags & ACPI_TABLE_IS_VERIFIED)) {
   continue;
  }





  if (!acpi_tb_compare_tables(table_desc, i)) {
   continue;
  }
  if (acpi_gbl_root_table_list.tables[i].flags &
      ACPI_TABLE_IS_LOADED) {



   return_ACPI_STATUS(AE_ALREADY_EXISTS);
  } else {
   *table_index = i;
   return_ACPI_STATUS(AE_CTRL_TERMINATE);
  }
 }



 return_ACPI_STATUS(AE_OK);
}
