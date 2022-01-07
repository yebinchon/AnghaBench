
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct acpi_generic_address {int bit_offset; int bit_width; scalar_t__ space_id; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;
typedef scalar_t__ acpi_io_address ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_IO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DIV_8 (int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_MASK_BITS_ABOVE_64 (int) ;
 int ACPI_SET_BITS (scalar_t__*,int,int ,scalar_t__) ;
 int acpi_hw_get_access_bit_width (scalar_t__,struct acpi_generic_address*,int) ;
 int acpi_hw_read_port (scalar_t__,int*,int) ;
 int acpi_hw_validate_register (struct acpi_generic_address*,int,scalar_t__*) ;
 int acpi_os_read_memory (scalar_t__,scalar_t__*,int) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int hw_read ;

acpi_status acpi_hw_read(u64 *value, struct acpi_generic_address *reg)
{
 u64 address;
 u8 access_width;
 u32 bit_width;
 u8 bit_offset;
 u64 value64;
 u32 value32;
 u8 index;
 acpi_status status;

 ACPI_FUNCTION_NAME(hw_read);



 status = acpi_hw_validate_register(reg, 64, &address);
 if (ACPI_FAILURE(status)) {
  return (status);
 }





 *value = 0;
 access_width = acpi_hw_get_access_bit_width(address, reg, 64);
 bit_width = reg->bit_offset + reg->bit_width;
 bit_offset = reg->bit_offset;





 index = 0;
 while (bit_width) {
  if (bit_offset >= access_width) {
   value64 = 0;
   bit_offset -= access_width;
  } else {
   if (reg->space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) {
    status =
        acpi_os_read_memory((acpi_physical_address)
       address +
       index *
       ACPI_DIV_8
       (access_width),
       &value64, access_width);
   } else {

    status = acpi_hw_read_port((acpi_io_address)
          address +
          index *
          ACPI_DIV_8
          (access_width),
          &value32,
          access_width);
    value64 = (u64)value32;
   }
  }





  ACPI_SET_BITS(value, index * access_width,
         ACPI_MASK_BITS_ABOVE_64(access_width), value64);

  bit_width -=
      bit_width > access_width ? access_width : bit_width;
  index++;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_IO,
     "Read:  %8.8X%8.8X width %2d from %8.8X%8.8X (%s)\n",
     ACPI_FORMAT_UINT64(*value), access_width,
     ACPI_FORMAT_UINT64(address),
     acpi_ut_get_region_name(reg->space_id)));

 return (status);
}
