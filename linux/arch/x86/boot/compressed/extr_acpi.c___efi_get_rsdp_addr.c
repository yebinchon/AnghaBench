
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int efi_guid_t ;
struct TYPE_3__ {int table; int guid; } ;
typedef TYPE_1__ efi_config_table_64_t ;
struct TYPE_4__ {int table; int guid; } ;
typedef TYPE_2__ efi_config_table_32_t ;
typedef int acpi_physical_address ;


 int ACPI_20_TABLE_GUID ;
 int ACPI_TABLE_GUID ;
 int CONFIG_X86_64 ;
 int IS_ENABLED (int ) ;
 int debug_putstr (char*) ;
 int efi_guidcmp (int ,int ) ;

__attribute__((used)) static acpi_physical_address
__efi_get_rsdp_addr(unsigned long config_tables, unsigned int nr_tables,
      bool efi_64)
{
 acpi_physical_address rsdp_addr = 0;
 return rsdp_addr;
}
