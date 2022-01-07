
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct acpi_generic_address {int space_id; int bit_width; scalar_t__ access_width; scalar_t__ bit_offset; int address; } ;


 int ACPI_ERROR (int ) ;
 int ACPI_FADT_GPE_REGISTER ;
 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 int AE_INFO ;

__attribute__((used)) static void
acpi_tb_init_generic_address(struct acpi_generic_address *generic_address,
        u8 space_id,
        u8 byte_width,
        u64 address, const char *register_name, u8 flags)
{
 u8 bit_width;





 bit_width = (u8)(byte_width * 8);
 if (byte_width > 31) {





  if (!(flags & ACPI_FADT_GPE_REGISTER)) {
   ACPI_ERROR((AE_INFO,
        "%s - 32-bit FADT register is too long (%u bytes, %u bits) "
        "to convert to GAS struct - 255 bits max, truncating",
        register_name, byte_width,
        (byte_width * 8)));
  }

  bit_width = 255;
 }





 ACPI_MOVE_64_TO_64(&generic_address->address, &address);



 generic_address->space_id = space_id;
 generic_address->bit_width = bit_width;
 generic_address->bit_offset = 0;
 generic_address->access_width = 0;
}
