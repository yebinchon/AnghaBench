
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 int ACPI_FORMAT_LEFT ;
 int ACPI_FORMAT_PREFIX ;
 int ACPI_FORMAT_SIGN ;
 int ACPI_FORMAT_SIGN_PLUS ;
 int ACPI_FORMAT_SIGN_PLUS_SPACE ;
 int ACPI_FORMAT_UPPER ;
 int ACPI_FORMAT_ZERO ;
 scalar_t__ ACPI_PTR_DIFF (char*,char*) ;
 int FALSE ;
 int TRUE ;
 char* acpi_ut_bound_string_output (char*,char*,char) ;
 char* acpi_ut_put_number (char*,scalar_t__,int,int) ;

__attribute__((used)) static char *acpi_ut_format_number(char *string,
       char *end,
       u64 number,
       u8 base, s32 width, s32 precision, u8 type)
{
 char *pos;
 char sign;
 char zero;
 u8 need_prefix;
 u8 upper;
 s32 i;
 char reversed_string[66];



 if (base < 2 || base > 16) {
  return (((void*)0));
 }

 if (type & ACPI_FORMAT_LEFT) {
  type &= ~ACPI_FORMAT_ZERO;
 }

 need_prefix = ((type & ACPI_FORMAT_PREFIX)
         && base != 10) ? TRUE : FALSE;
 upper = (type & ACPI_FORMAT_UPPER) ? TRUE : FALSE;
 zero = (type & ACPI_FORMAT_ZERO) ? '0' : ' ';



 sign = '\0';
 if (type & ACPI_FORMAT_SIGN) {
  if ((s64)number < 0) {
   sign = '-';
   number = -(s64)number;
   width--;
  } else if (type & ACPI_FORMAT_SIGN_PLUS) {
   sign = '+';
   width--;
  } else if (type & ACPI_FORMAT_SIGN_PLUS_SPACE) {
   sign = ' ';
   width--;
  }
 }
 if (need_prefix) {
  width--;
  if (base == 16) {
   width--;
  }
 }



 pos = acpi_ut_put_number(reversed_string, number, base, upper);
 i = (s32)ACPI_PTR_DIFF(pos, reversed_string);



 if (i > precision) {
  precision = i;
 }

 width -= precision;



 if (!(type & (ACPI_FORMAT_ZERO | ACPI_FORMAT_LEFT))) {
  while (--width >= 0) {
   string = acpi_ut_bound_string_output(string, end, ' ');
  }
 }
 if (sign) {
  string = acpi_ut_bound_string_output(string, end, sign);
 }
 if (need_prefix) {
  string = acpi_ut_bound_string_output(string, end, '0');
  if (base == 16) {
   string =
       acpi_ut_bound_string_output(string, end,
       upper ? 'X' : 'x');
  }
 }
 if (!(type & ACPI_FORMAT_LEFT)) {
  while (--width >= 0) {
   string = acpi_ut_bound_string_output(string, end, zero);
  }
 }

 while (i <= --precision) {
  string = acpi_ut_bound_string_output(string, end, '0');
 }
 while (--i >= 0) {
  string = acpi_ut_bound_string_output(string, end,
           reversed_string[i]);
 }
 while (--width >= 0) {
  string = acpi_ut_bound_string_output(string, end, ' ');
 }

 return (string);
}
