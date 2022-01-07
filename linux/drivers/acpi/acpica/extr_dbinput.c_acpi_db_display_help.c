
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_db_command_help {int description; scalar_t__ invocation; } ;


 int TRUE ;
 int acpi_db_display_command_info (char*,int ) ;
 struct acpi_db_command_help* acpi_gbl_db_command_help ;
 int acpi_os_printf (char*,...) ;

__attribute__((used)) static void acpi_db_display_help(char *command)
{
 const struct acpi_db_command_help *next = acpi_gbl_db_command_help;

 if (!command) {



  acpi_os_printf("\nSummary of AML Debugger Commands\n\n");

  while (next->invocation) {
   acpi_os_printf("%-38s%s", next->invocation,
           next->description);
   next++;
  }
  acpi_os_printf("\n");

 } else {


  acpi_db_display_command_info(command, TRUE);
 }
}
