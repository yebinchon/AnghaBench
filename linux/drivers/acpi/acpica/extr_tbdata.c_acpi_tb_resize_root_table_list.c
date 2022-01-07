
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_desc {scalar_t__ address; } ;
typedef int acpi_status ;
typedef int acpi_size ;
struct TYPE_2__ {int flags; size_t max_table_count; size_t current_table_count; struct acpi_table_desc* tables; } ;


 struct acpi_table_desc* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (struct acpi_table_desc*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_ROOT_ALLOW_RESIZE ;
 int ACPI_ROOT_ORIGIN_ALLOCATED ;
 size_t ACPI_ROOT_TABLE_SIZE_INCREMENT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_SUPPORT ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int memcpy (struct acpi_table_desc*,struct acpi_table_desc*,int) ;
 int return_ACPI_STATUS (int ) ;
 int tb_resize_root_table_list ;

acpi_status acpi_tb_resize_root_table_list(void)
{
 struct acpi_table_desc *tables;
 u32 table_count;
 u32 current_table_count, max_table_count;
 u32 i;

 ACPI_FUNCTION_TRACE(tb_resize_root_table_list);



 if (!(acpi_gbl_root_table_list.flags & ACPI_ROOT_ALLOW_RESIZE)) {
  ACPI_ERROR((AE_INFO,
       "Resize of Root Table Array is not allowed"));
  return_ACPI_STATUS(AE_SUPPORT);
 }



 if (acpi_gbl_root_table_list.flags & ACPI_ROOT_ORIGIN_ALLOCATED) {
  table_count = acpi_gbl_root_table_list.max_table_count;
 } else {
  table_count = acpi_gbl_root_table_list.current_table_count;
 }

 max_table_count = table_count + ACPI_ROOT_TABLE_SIZE_INCREMENT;
 tables = ACPI_ALLOCATE_ZEROED(((acpi_size)max_table_count) *
          sizeof(struct acpi_table_desc));
 if (!tables) {
  ACPI_ERROR((AE_INFO,
       "Could not allocate new root table array"));
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 current_table_count = 0;
 if (acpi_gbl_root_table_list.tables) {
  for (i = 0; i < table_count; i++) {
   if (acpi_gbl_root_table_list.tables[i].address) {
    memcpy(tables + current_table_count,
           acpi_gbl_root_table_list.tables + i,
           sizeof(struct acpi_table_desc));
    current_table_count++;
   }
  }

  if (acpi_gbl_root_table_list.flags & ACPI_ROOT_ORIGIN_ALLOCATED) {
   ACPI_FREE(acpi_gbl_root_table_list.tables);
  }
 }

 acpi_gbl_root_table_list.tables = tables;
 acpi_gbl_root_table_list.max_table_count = max_table_count;
 acpi_gbl_root_table_list.current_table_count = current_table_count;
 acpi_gbl_root_table_list.flags |= ACPI_ROOT_ORIGIN_ALLOCATED;

 return_ACPI_STATUS(AE_OK);
}
