
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 size_t ACPI_NAMESEG_SIZE ;
 int FALSE ;
 int TRUE ;
 int acpi_ut_valid_name_char (char,size_t) ;

u8 acpi_ut_valid_nameseg(char *name)
{
 u32 i;



 for (i = 0; i < ACPI_NAMESEG_SIZE; i++) {
  if (!acpi_ut_valid_name_char(name[i], i)) {
   return (FALSE);
  }
 }

 return (TRUE);
}
