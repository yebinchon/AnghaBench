
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef size_t u32 ;
typedef int u16 ;


 size_t ACPI_ASCII_ZERO ;
 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_MAX32_DECIMAL_DIGITS ;
 size_t ACPI_MAX64_DECIMAL_DIGITS ;
 size_t ACPI_MAX8_DECIMAL_DIGITS ;
 int ACPI_MUL_4 (size_t) ;
 int FALSE ;
 int TRUE ;
 int acpi_ut_hex_to_ascii_char (int ,int ) ;
 int acpi_ut_short_divide (int ,int,int *,size_t*) ;

__attribute__((used)) static u32
acpi_ex_convert_to_ascii(u64 integer, u16 base, u8 *string, u8 data_width)
{
 u64 digit;
 u32 i;
 u32 j;
 u32 k = 0;
 u32 hex_length;
 u32 decimal_length;
 u32 remainder;
 u8 supress_zeros;

 ACPI_FUNCTION_ENTRY();

 switch (base) {
 case 10:



  switch (data_width) {
  case 1:

   decimal_length = ACPI_MAX8_DECIMAL_DIGITS;
   break;

  case 4:

   decimal_length = ACPI_MAX32_DECIMAL_DIGITS;
   break;

  case 8:
  default:

   decimal_length = ACPI_MAX64_DECIMAL_DIGITS;
   break;
  }

  supress_zeros = TRUE;
  remainder = 0;

  for (i = decimal_length; i > 0; i--) {



   digit = integer;
   for (j = 0; j < i; j++) {
    (void)acpi_ut_short_divide(digit, 10, &digit,
          &remainder);
   }



   if (remainder != 0) {
    supress_zeros = FALSE;
   }

   if (!supress_zeros) {
    string[k] = (u8) (ACPI_ASCII_ZERO + remainder);
    k++;
   }
  }
  break;

 case 16:



  hex_length = (data_width * 2);
  for (i = 0, j = (hex_length - 1); i < hex_length; i++, j--) {



   string[k] = (u8)
       acpi_ut_hex_to_ascii_char(integer, ACPI_MUL_4(j));
   k++;
  }
  break;

 default:
  return (0);
 }







 if (!k) {
  string[0] = ACPI_ASCII_ZERO;
  k = 1;
 }

 string[k] = 0;
 return ((u32) k);
}
