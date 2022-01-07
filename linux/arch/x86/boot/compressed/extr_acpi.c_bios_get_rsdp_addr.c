
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u16 ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_EBDA_PTR_LOCATION ;
 int ACPI_EBDA_WINDOW_SIZE ;
 scalar_t__ ACPI_HI_RSDP_WINDOW_BASE ;
 int ACPI_HI_RSDP_WINDOW_SIZE ;
 int * scan_mem_for_rsdp (int *,int ) ;

__attribute__((used)) static acpi_physical_address bios_get_rsdp_addr(void)
{
 unsigned long address;
 u8 *rsdp;


 address = *(u16 *)ACPI_EBDA_PTR_LOCATION;
 address <<= 4;





 if (address > 0x400) {
  rsdp = scan_mem_for_rsdp((u8 *)address, ACPI_EBDA_WINDOW_SIZE);
  if (rsdp)
   return (acpi_physical_address)(unsigned long)rsdp;
 }


 rsdp = scan_mem_for_rsdp((u8 *) ACPI_HI_RSDP_WINDOW_BASE,
     ACPI_HI_RSDP_WINDOW_SIZE);
 if (rsdp)
  return (acpi_physical_address)(unsigned long)rsdp;

 return 0;
}
