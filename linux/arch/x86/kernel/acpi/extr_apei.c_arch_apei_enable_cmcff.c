
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hest_ia_error_bank {int bank_number; } ;
struct acpi_hest_ia_corrected {int flags; int num_hardware_banks; int enabled; } ;
struct acpi_hest_header {int dummy; } ;


 int ACPI_HEST_FIRMWARE_FIRST ;
 int mce_disable_bank (int ) ;
 int pr_info (char*) ;

int arch_apei_enable_cmcff(struct acpi_hest_header *hest_hdr, void *data)
{
 return 1;
}
