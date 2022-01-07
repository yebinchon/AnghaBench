
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_TYPE_NOT_FOUND ;


 int acpi_db_evaluate_all_predefined_names (int *) ;
 int acpi_db_match_argument (char*,int ) ;
 int acpi_db_test_all_objects () ;
 int acpi_db_test_types ;
 int acpi_os_printf (char*) ;
 int acpi_ut_strupr (char*) ;

void acpi_db_execute_test(char *type_arg)
{
 u32 temp;

 acpi_ut_strupr(type_arg);
 temp = acpi_db_match_argument(type_arg, acpi_db_test_types);
 if (temp == ACPI_TYPE_NOT_FOUND) {
  acpi_os_printf("Invalid or unsupported argument\n");
  return;
 }

 switch (temp) {
 case 129:

  acpi_db_test_all_objects();
  break;

 case 128:

  acpi_db_evaluate_all_predefined_names(((void*)0));
  break;

 default:
  break;
 }
}
