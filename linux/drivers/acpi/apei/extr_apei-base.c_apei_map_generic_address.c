
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_generic_address {int dummy; } ;


 int acpi_os_map_generic_address (struct acpi_generic_address*) ;
 int apei_check_gar (struct acpi_generic_address*,int *,int *) ;

int apei_map_generic_address(struct acpi_generic_address *reg)
{
 int rc;
 u32 access_bit_width;
 u64 address;

 rc = apei_check_gar(reg, &address, &access_bit_width);
 if (rc)
  return rc;
 return acpi_os_map_generic_address(reg);
}
