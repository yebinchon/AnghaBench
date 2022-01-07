
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ acpi_physical_address ;
struct TYPE_2__ {scalar_t__ acpi_rsdp_addr; } ;


 scalar_t__ bios_get_rsdp_addr () ;
 TYPE_1__* boot_params ;
 scalar_t__ efi_get_rsdp_addr () ;
 scalar_t__ kexec_get_rsdp_addr () ;

acpi_physical_address get_rsdp_addr(void)
{
 acpi_physical_address pa;

 pa = boot_params->acpi_rsdp_addr;






 if (!pa)
  pa = kexec_get_rsdp_addr();

 if (!pa)
  pa = efi_get_rsdp_addr();

 if (!pa)
  pa = bios_get_rsdp_addr();

 return pa;
}
