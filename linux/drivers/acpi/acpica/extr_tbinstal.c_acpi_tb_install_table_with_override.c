
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct acpi_table_desc {TYPE_1__* pointer; int address; int flags; } ;
typedef int acpi_status ;
struct TYPE_5__ {int * tables; } ;
struct TYPE_4__ {int revision; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 size_t acpi_gbl_dsdt_index ;
 TYPE_3__ acpi_gbl_root_table_list ;
 int acpi_tb_get_next_table_descriptor (size_t*,int *) ;
 int acpi_tb_init_table_descriptor (int *,int ,int ,TYPE_1__*) ;
 int acpi_tb_override_table (struct acpi_table_desc*) ;
 int acpi_tb_print_table_header (int ,TYPE_1__*) ;
 int acpi_ut_set_integer_width (int ) ;

void
acpi_tb_install_table_with_override(struct acpi_table_desc *new_table_desc,
        u8 override, u32 *table_index)
{
 u32 i;
 acpi_status status;

 status = acpi_tb_get_next_table_descriptor(&i, ((void*)0));
 if (ACPI_FAILURE(status)) {
  return;
 }
 if (override) {
  acpi_tb_override_table(new_table_desc);
 }

 acpi_tb_init_table_descriptor(&acpi_gbl_root_table_list.tables[i],
          new_table_desc->address,
          new_table_desc->flags,
          new_table_desc->pointer);

 acpi_tb_print_table_header(new_table_desc->address,
       new_table_desc->pointer);



 *table_index = i;



 if (i == acpi_gbl_dsdt_index) {
  acpi_ut_set_integer_width(new_table_desc->pointer->revision);
 }
}
