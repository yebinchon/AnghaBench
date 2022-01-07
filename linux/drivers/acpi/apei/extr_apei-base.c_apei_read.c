
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct acpi_generic_address {int space_id; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;




 int ACPI_FAILURE (int ) ;
 int EINVAL ;
 int EIO ;
 int acpi_os_read_memory (int ,scalar_t__*,int ) ;
 int acpi_os_read_port (scalar_t__,int *,int ) ;
 int apei_check_gar (struct acpi_generic_address*,scalar_t__*,int *) ;

int apei_read(u64 *val, struct acpi_generic_address *reg)
{
 int rc;
 u32 access_bit_width;
 u64 address;
 acpi_status status;

 rc = apei_check_gar(reg, &address, &access_bit_width);
 if (rc)
  return rc;

 *val = 0;
 switch(reg->space_id) {
 case 128:
  status = acpi_os_read_memory((acpi_physical_address) address,
            val, access_bit_width);
  if (ACPI_FAILURE(status))
   return -EIO;
  break;
 case 129:
  status = acpi_os_read_port(address, (u32 *)val,
        access_bit_width);
  if (ACPI_FAILURE(status))
   return -EIO;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
