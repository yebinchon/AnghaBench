
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ acpi_size ;



__attribute__((used)) static acpi_size
acpi_ut_bound_string_length(const char *string, acpi_size count)
{
 u32 length = 0;

 while (*string && count) {
  length++;
  string++;
  count--;
 }

 return (length);
}
