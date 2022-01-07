
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t current_table_count; int flags; int * tables; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FREE (int *) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_TABLES ;
 int ACPI_ROOT_ORIGIN_ALLOCATED ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int acpi_tb_uninstall_table (int *) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_VOID ;
 int tb_terminate ;

void acpi_tb_terminate(void)
{
 u32 i;

 ACPI_FUNCTION_TRACE(tb_terminate);

 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);



 for (i = 0; i < acpi_gbl_root_table_list.current_table_count; i++) {
  acpi_tb_uninstall_table(&acpi_gbl_root_table_list.tables[i]);
 }





 if (acpi_gbl_root_table_list.flags & ACPI_ROOT_ORIGIN_ALLOCATED) {
  ACPI_FREE(acpi_gbl_root_table_list.tables);
 }

 acpi_gbl_root_table_list.tables = ((void*)0);
 acpi_gbl_root_table_list.flags = 0;
 acpi_gbl_root_table_list.current_table_count = 0;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "ACPI Tables freed\n"));

 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 return_VOID;
}
