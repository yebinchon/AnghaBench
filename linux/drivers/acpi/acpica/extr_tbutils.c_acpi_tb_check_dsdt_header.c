
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; scalar_t__ checksum; } ;


 int ACPI_BIOS_ERROR (int ) ;
 int ACPI_ERROR (int ) ;
 int AE_INFO ;
 TYPE_1__* acpi_gbl_DSDT ;
 TYPE_1__ acpi_gbl_original_dsdt_header ;
 int acpi_tb_print_table_header (int ,TYPE_1__*) ;

void acpi_tb_check_dsdt_header(void)
{



 if (acpi_gbl_original_dsdt_header.length != acpi_gbl_DSDT->length ||
     acpi_gbl_original_dsdt_header.checksum != acpi_gbl_DSDT->checksum) {
  ACPI_BIOS_ERROR((AE_INFO,
     "The DSDT has been corrupted or replaced - "
     "old, new headers below"));

  acpi_tb_print_table_header(0, &acpi_gbl_original_dsdt_header);
  acpi_tb_print_table_header(0, acpi_gbl_DSDT);

  ACPI_ERROR((AE_INFO,
       "Please send DMI info to linux-acpi@vger.kernel.org\n"
       "If system does not work as expected, please boot with acpi=copy_dsdt"));



  acpi_gbl_original_dsdt_header.length = acpi_gbl_DSDT->length;
  acpi_gbl_original_dsdt_header.checksum =
      acpi_gbl_DSDT->checksum;
 }
}
