
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,int ) ;
 int ACPI_COPY_NAMESEG (size_t*,char*) ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_NAMESEG_SIZE ;
 int ACPI_ROOT_PATHNAME ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_gbl_enable_interpreter_slack ;
 scalar_t__ acpi_ut_valid_name_char (char,size_t) ;
 int ut_repair_name ;

void acpi_ut_repair_name(char *name)
{
 u32 i;
 u8 found_bad_char = FALSE;
 u32 original_name;

 ACPI_FUNCTION_NAME(ut_repair_name);





 if (ACPI_COMPARE_NAMESEG(name, ACPI_ROOT_PATHNAME)) {
  return;
 }

 ACPI_COPY_NAMESEG(&original_name, name);



 for (i = 0; i < ACPI_NAMESEG_SIZE; i++) {
  if (acpi_ut_valid_name_char(name[i], i)) {
   continue;
  }






  name[i] = '*';
  found_bad_char = TRUE;
 }

 if (found_bad_char) {



  if (!acpi_gbl_enable_interpreter_slack) {
   ACPI_WARNING((AE_INFO,
          "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
          original_name, name));
  } else {
   ACPI_DEBUG_PRINT((ACPI_DB_INFO,
       "Invalid character(s) in name (0x%.8X), repaired: [%4.4s]",
       original_name, name));
  }
 }
}
