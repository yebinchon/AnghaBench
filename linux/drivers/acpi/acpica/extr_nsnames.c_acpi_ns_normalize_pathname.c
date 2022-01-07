
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_FREE (char*) ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void acpi_ns_normalize_pathname(char *original_path)
{
 char *input_path = original_path;
 char *new_path_buffer;
 char *new_path;
 u32 i;



 new_path_buffer = ACPI_ALLOCATE_ZEROED(strlen(input_path) + 1);
 new_path = new_path_buffer;
 if (!new_path_buffer) {
  return;
 }



 if (*input_path == '\\') {
  *new_path = *input_path;
  new_path++;
  input_path++;
 }

 while (*input_path == '^') {
  *new_path = *input_path;
  new_path++;
  input_path++;
 }



 while (*input_path) {



  for (i = 0; (i < ACPI_NAMESEG_SIZE) && *input_path; i++) {
   if ((i == 0) || (*input_path != '_')) {
    *new_path = *input_path;
    new_path++;
   }

   input_path++;
  }



  if (*input_path == '.') {
   *new_path = *input_path;
   new_path++;
   input_path++;
  }
 }

 *new_path = 0;
 strcpy(original_path, new_path_buffer);
 ACPI_FREE(new_path_buffer);
}
