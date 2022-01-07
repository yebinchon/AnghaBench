
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_generic_address {int space_id; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;




 int ACPI_FAILURE (int ) ;
 int EINVAL ;
 int EIO ;
 int acpi_os_write_memory (int ,int ,int ) ;
 int acpi_os_write_port (int ,int ,int ) ;
 int apei_check_gar (struct acpi_generic_address*,int *,int *) ;

int apei_write(u64 val, struct acpi_generic_address *reg)
{
 int rc;
 u32 access_bit_width;
 u64 address;
 acpi_status status;

 rc = apei_check_gar(reg, &address, &access_bit_width);
 if (rc)
  return rc;

 switch (reg->space_id) {
 case 128:
  status = acpi_os_write_memory((acpi_physical_address) address,
      val, access_bit_width);
  if (ACPI_FAILURE(status))
   return -EIO;
  break;
 case 129:
  status = acpi_os_write_port(address, val, access_bit_width);
  if (ACPI_FAILURE(status))
   return -EIO;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
