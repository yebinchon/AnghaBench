
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (int) ;

int acpi_ut_stricmp(char *string1, char *string2)
{
 int c1;
 int c2;

 do {
  c1 = tolower((int)*string1);
  c2 = tolower((int)*string2);

  string1++;
  string2++;
 }
 while ((c1 == c2) && (c1));

 return (c1 - c2);
}
