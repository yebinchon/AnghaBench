
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 char* acpi_db_get_history_by_index (scalar_t__) ;
 scalar_t__ acpi_gbl_next_cmd_num ;
 scalar_t__ strtoul (char*,int *,int ) ;

char *acpi_db_get_from_history(char *command_num_arg)
{
 u32 cmd_num;

 if (command_num_arg == ((void*)0)) {
  cmd_num = acpi_gbl_next_cmd_num - 1;
 }

 else {
  cmd_num = strtoul(command_num_arg, ((void*)0), 0);
 }

 return (acpi_db_get_history_by_index(cmd_num));
}
