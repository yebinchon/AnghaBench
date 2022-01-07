
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int FALSE ;
 char* acpi_ut_put_number (char*,int ,int,int ) ;

const char *acpi_ut_print_number(char *string, u64 number)
{
 char ascii_string[20];
 const char *pos1;
 char *pos2;

 pos1 = acpi_ut_put_number(ascii_string, number, 10, FALSE);
 pos2 = string;

 while (pos1 != ascii_string) {
  *(pos2++) = *(--pos1);
 }

 *pos2 = 0;
 return (string);
}
