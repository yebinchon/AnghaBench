
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t acpi_size ;


 int ACPI_MOVE_16_TO_32 (int*,int *) ;
 int ACPI_MOVE_32_TO_32 (int*,int *) ;




 int acpi_os_printf (char*,...) ;
 scalar_t__ isprint (int ) ;

void acpi_ut_dump_buffer(u8 *buffer, u32 count, u32 display, u32 base_offset)
{
 u32 i = 0;
 u32 j;
 u32 temp32;
 u8 buf_char;

 if (!buffer) {
  acpi_os_printf("Null Buffer Pointer in DumpBuffer!\n");
  return;
 }

 if ((count < 4) || (count & 0x01)) {
  display = 131;
 }



 while (i < count) {



  acpi_os_printf("%8.4X: ", (base_offset + i));



  for (j = 0; j < 16;) {
   if (i + j >= count) {



    acpi_os_printf("%*s", ((display * 2) + 1), " ");
    j += display;
    continue;
   }

   switch (display) {
   case 131:
   default:

    acpi_os_printf("%02X ",
            buffer[(acpi_size)i + j]);
    break;

   case 128:

    ACPI_MOVE_16_TO_32(&temp32,
         &buffer[(acpi_size)i + j]);
    acpi_os_printf("%04X ", temp32);
    break;

   case 130:

    ACPI_MOVE_32_TO_32(&temp32,
         &buffer[(acpi_size)i + j]);
    acpi_os_printf("%08X ", temp32);
    break;

   case 129:

    ACPI_MOVE_32_TO_32(&temp32,
         &buffer[(acpi_size)i + j]);
    acpi_os_printf("%08X", temp32);

    ACPI_MOVE_32_TO_32(&temp32,
         &buffer[(acpi_size)i + j +
          4]);
    acpi_os_printf("%08X ", temp32);
    break;
   }

   j += display;
  }





  acpi_os_printf(" ");
  for (j = 0; j < 16; j++) {
   if (i + j >= count) {
    acpi_os_printf("\n");
    return;
   }





   if (j == 0) {
    acpi_os_printf("// ");
   }

   buf_char = buffer[(acpi_size)i + j];
   if (isprint(buf_char)) {
    acpi_os_printf("%c", buf_char);
   } else {
    acpi_os_printf(".");
   }
  }



  acpi_os_printf("\n");
  i += 16;
 }

 return;
}
