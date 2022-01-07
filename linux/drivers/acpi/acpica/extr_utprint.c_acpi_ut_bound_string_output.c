
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *acpi_ut_bound_string_output(char *string, const char *end, char c)
{

 if (string < end) {
  *string = c;
 }

 ++string;
 return (string);
}
