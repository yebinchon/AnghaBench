
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int FALSE ;
 int TRUE ;

u8 acpi_ut_valid_name_char(char character, u32 position)
{

 if (!((character >= 'A' && character <= 'Z') ||
       (character >= '0' && character <= '9') || (character == '_'))) {



  if (character == '!' && position == 3) {
   return (TRUE);
  }

  return (FALSE);
 }

 return (TRUE);
}
