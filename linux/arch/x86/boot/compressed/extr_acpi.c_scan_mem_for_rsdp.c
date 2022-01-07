
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_table_rsdp {int revision; int signature; } ;


 int ACPI_RSDP_CHECKSUM_LENGTH ;
 int ACPI_RSDP_SCAN_STEP ;
 int ACPI_RSDP_XCHECKSUM_LENGTH ;
 int ACPI_VALIDATE_RSDP_SIG (int ) ;
 scalar_t__ compute_checksum (int *,int ) ;

__attribute__((used)) static u8 *scan_mem_for_rsdp(u8 *start, u32 length)
{
 struct acpi_table_rsdp *rsdp;
 u8 *address, *end;

 end = start + length;


 for (address = start; address < end; address += ACPI_RSDP_SCAN_STEP) {






  rsdp = (struct acpi_table_rsdp *)address;


  if (!ACPI_VALIDATE_RSDP_SIG(rsdp->signature))
   continue;


  if (compute_checksum((u8 *)rsdp, ACPI_RSDP_CHECKSUM_LENGTH))
   continue;


  if ((rsdp->revision >= 2) &&
      (compute_checksum((u8 *)rsdp, ACPI_RSDP_XCHECKSUM_LENGTH)))
   continue;


  return address;
 }
 return ((void*)0);
}
