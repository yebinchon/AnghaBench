
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct TYPE_4__ {size_t current_table_count; TYPE_1__* tables; } ;
struct TYPE_3__ {int flags; } ;


 int ACPI_MTX_TABLES ;
 int ACPI_TABLE_IS_LOADED ;
 scalar_t__ FALSE ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

u8 acpi_tb_is_table_loaded(u32 table_index)
{
 u8 is_loaded = FALSE;

 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);
 if (table_index < acpi_gbl_root_table_list.current_table_count) {
  is_loaded = (u8)
      (acpi_gbl_root_table_list.tables[table_index].flags &
       ACPI_TABLE_IS_LOADED);
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 return (is_loaded);
}
