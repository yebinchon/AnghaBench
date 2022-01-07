
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_table_desc {int length; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;
struct TYPE_4__ {scalar_t__ Xfacs; scalar_t__ facs; scalar_t__ Xdsdt; } ;
struct TYPE_3__ {struct acpi_table_desc* tables; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL ;
 int FALSE ;
 int TRUE ;
 TYPE_2__ acpi_gbl_FADT ;
 int acpi_gbl_dsdt_index ;
 int acpi_gbl_facs_index ;
 size_t acpi_gbl_fadt_index ;
 int acpi_gbl_reduced_hardware ;
 TYPE_1__ acpi_gbl_root_table_list ;
 int acpi_gbl_xfacs_index ;
 int acpi_tb_create_local_fadt (struct acpi_table_header*,int ) ;
 int acpi_tb_get_table (struct acpi_table_desc*,struct acpi_table_header**) ;
 int acpi_tb_install_standard_table (int ,int ,int ,int ,int *) ;
 int acpi_tb_put_table (struct acpi_table_desc*) ;
 int acpi_tb_verify_checksum (struct acpi_table_header*,int ) ;

void acpi_tb_parse_fadt(void)
{
 u32 length;
 struct acpi_table_header *table;
 struct acpi_table_desc *fadt_desc;
 acpi_status status;
 fadt_desc = &acpi_gbl_root_table_list.tables[acpi_gbl_fadt_index];
 status = acpi_tb_get_table(fadt_desc, &table);
 if (ACPI_FAILURE(status)) {
  return;
 }
 length = fadt_desc->length;





 (void)acpi_tb_verify_checksum(table, length);



 acpi_tb_create_local_fadt(table, length);



 acpi_tb_put_table(fadt_desc);



 acpi_tb_install_standard_table((acpi_physical_address)acpi_gbl_FADT.
           Xdsdt,
           ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL,
           FALSE, TRUE, &acpi_gbl_dsdt_index);



 if (!acpi_gbl_reduced_hardware) {
  if (acpi_gbl_FADT.facs) {
   acpi_tb_install_standard_table((acpi_physical_address)
             acpi_gbl_FADT.facs,
             ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL,
             FALSE, TRUE,
             &acpi_gbl_facs_index);
  }
  if (acpi_gbl_FADT.Xfacs) {
   acpi_tb_install_standard_table((acpi_physical_address)
             acpi_gbl_FADT.Xfacs,
             ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL,
             FALSE, TRUE,
             &acpi_gbl_xfacs_index);
  }
 }
}
