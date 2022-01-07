
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct acpi_table_header {int revision; } ;
struct acpi_table_fadt {int dummy; } ;
struct TYPE_4__ {int flags; } ;


 int ACPI_BIOS_WARNING (int ) ;
 int ACPI_FADT_CONFORMANCE ;
 int ACPI_FADT_HW_REDUCED ;
 int ACPI_MIN (int,int) ;
 int AE_INFO ;
 int FALSE ;
 int TRUE ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_gbl_reduced_hardware ;
 int acpi_tb_convert_fadt () ;
 int acpi_tb_setup_fadt_registers () ;
 int memcpy (TYPE_1__*,struct acpi_table_header*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void acpi_tb_create_local_fadt(struct acpi_table_header *table, u32 length)
{





 if (length > sizeof(struct acpi_table_fadt)) {
  ACPI_BIOS_WARNING((AE_INFO,
       "FADT (revision %u) is longer than %s length, "
       "truncating length %u to %u",
       table->revision, ACPI_FADT_CONFORMANCE,
       length,
       (u32)sizeof(struct acpi_table_fadt)));
 }



 memset(&acpi_gbl_FADT, 0, sizeof(struct acpi_table_fadt));



 memcpy(&acpi_gbl_FADT, table,
        ACPI_MIN(length, sizeof(struct acpi_table_fadt)));



 acpi_gbl_reduced_hardware = FALSE;
 if (acpi_gbl_FADT.flags & ACPI_FADT_HW_REDUCED) {
  acpi_gbl_reduced_hardware = TRUE;
 }



 acpi_tb_convert_fadt();



 acpi_tb_setup_fadt_registers();
}
