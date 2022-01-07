
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efi_info {int efi_systab; scalar_t__ efi_memmap_hi; scalar_t__ efi_systab_hi; int efi_loader_signature; } ;
struct TYPE_4__ {unsigned long tables; unsigned int nr_tables; } ;
typedef TYPE_1__ efi_system_table_64_t ;
struct TYPE_5__ {unsigned long tables; unsigned int nr_tables; } ;
typedef TYPE_2__ efi_system_table_32_t ;
typedef int acpi_physical_address ;
typedef int __u64 ;
struct TYPE_6__ {struct efi_info efi_info; } ;


 int EFI32_LOADER_SIGNATURE ;
 int EFI64_LOADER_SIGNATURE ;
 int __efi_get_rsdp_addr (unsigned long,unsigned int,int) ;
 TYPE_3__* boot_params ;
 int debug_putstr (char*) ;
 int error (char*) ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static acpi_physical_address efi_get_rsdp_addr(void)
{
 return 0;

}
