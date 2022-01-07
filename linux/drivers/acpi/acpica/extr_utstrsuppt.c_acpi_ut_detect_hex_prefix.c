
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FALSE ;
 int TRUE ;
 int acpi_ut_remove_hex_prefix (char**) ;

u8 acpi_ut_detect_hex_prefix(char **string)
{
 char *initial_position = *string;

 acpi_ut_remove_hex_prefix(string);
 if (*string != initial_position) {
  return (TRUE);
 }

 return (FALSE);
}
