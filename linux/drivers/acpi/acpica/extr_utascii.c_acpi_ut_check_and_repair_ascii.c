
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;


 int isprint (scalar_t__) ;

void acpi_ut_check_and_repair_ascii(u8 *name, char *repaired_name, u32 count)
{
 u32 i;

 for (i = 0; i < count; i++) {
  repaired_name[i] = (char)name[i];

  if (!name[i]) {
   return;
  }
  if (!isprint(name[i])) {
   repaired_name[i] = ' ';
  }
 }
}
