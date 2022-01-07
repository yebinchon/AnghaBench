
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_namestring_info {char* external_name; int num_segments; char const* next_external_char; scalar_t__ num_carats; scalar_t__ length; int fully_qualified; } ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_IS_PARENT_PREFIX (char const) ;
 scalar_t__ ACPI_IS_PATH_SEPARATOR (char const) ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (char const) ;
 int ACPI_NAMESEG_SIZE ;
 int FALSE ;
 int TRUE ;

void acpi_ns_get_internal_name_length(struct acpi_namestring_info *info)
{
 const char *next_external_char;
 u32 i;

 ACPI_FUNCTION_ENTRY();

 next_external_char = info->external_name;
 info->num_carats = 0;
 info->num_segments = 0;
 info->fully_qualified = FALSE;
 if (ACPI_IS_ROOT_PREFIX(*next_external_char)) {
  info->fully_qualified = TRUE;
  next_external_char++;



  while (ACPI_IS_ROOT_PREFIX(*next_external_char)) {
   next_external_char++;
  }
 } else {


  while (ACPI_IS_PARENT_PREFIX(*next_external_char)) {
   info->num_carats++;
   next_external_char++;
  }
 }






 if (*next_external_char) {
  info->num_segments = 1;
  for (i = 0; next_external_char[i]; i++) {
   if (ACPI_IS_PATH_SEPARATOR(next_external_char[i])) {
    info->num_segments++;
   }
  }
 }

 info->length = (ACPI_NAMESEG_SIZE * info->num_segments) +
     4 + info->num_carats;

 info->next_external_char = next_external_char;
}
