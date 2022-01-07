
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int flags; int max_table_count; } ;


 int ACPI_ROOT_ALLOW_RESIZE ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int acpi_tb_resize_root_table_list () ;

acpi_status acpi_allocate_root_table(u32 initial_table_count)
{

 acpi_gbl_root_table_list.max_table_count = initial_table_count;
 acpi_gbl_root_table_list.flags = ACPI_ROOT_ALLOW_RESIZE;

 return (acpi_tb_resize_root_table_list());
}
