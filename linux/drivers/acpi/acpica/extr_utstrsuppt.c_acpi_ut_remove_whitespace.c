
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ isspace (int ) ;

char acpi_ut_remove_whitespace(char **string)
{

 while (isspace((u8)**string)) {
  *string += 1;
 }

 return (**string);
}
