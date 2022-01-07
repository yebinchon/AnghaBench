
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ACPI_ASCII_ZERO ;
 char tolower (int) ;

void acpi_ut_remove_hex_prefix(char **string)
{
 if ((**string == ACPI_ASCII_ZERO) &&
     (tolower((int)*(*string + 1)) == 'x')) {
  *string += 2;
 }
}
