
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int acpi_db_set_output_destination (int ) ;
 int acpi_db_walk_and_match_name ;
 int acpi_os_printf (char*) ;
 int acpi_ut_strupr (char*) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,char*,int *) ;
 scalar_t__ strlen (char*) ;

acpi_status acpi_db_find_name_in_namespace(char *name_arg)
{
 char acpi_name[5] = "____";
 char *acpi_name_ptr = acpi_name;

 if (strlen(name_arg) > ACPI_NAMESEG_SIZE) {
  acpi_os_printf("Name must be no longer than 4 characters\n");
  return (AE_OK);
 }



 acpi_ut_strupr(name_arg);
 while (*name_arg) {
  *acpi_name_ptr = *name_arg;
  acpi_name_ptr++;
  name_arg++;
 }



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_walk_and_match_name,
      ((void*)0), acpi_name, ((void*)0));

 acpi_db_set_output_destination(ACPI_DB_CONSOLE_OUTPUT);
 return (AE_OK);
}
