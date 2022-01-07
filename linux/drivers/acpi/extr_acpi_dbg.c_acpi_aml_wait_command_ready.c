
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DEBUGGER_COMMAND_PROMPT ;
 int ACPI_DEBUGGER_EXECUTE_PROMPT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_os_get_line (char*,size_t,int *) ;
 int acpi_os_printf (char*,int ) ;

__attribute__((used)) static int acpi_aml_wait_command_ready(bool single_step,
           char *buffer, size_t length)
{
 acpi_status status;

 if (single_step)
  acpi_os_printf("\n%1c ", ACPI_DEBUGGER_EXECUTE_PROMPT);
 else
  acpi_os_printf("\n%1c ", ACPI_DEBUGGER_COMMAND_PROMPT);

 status = acpi_os_get_line(buffer, length, ((void*)0));
 if (ACPI_FAILURE(status))
  return -EINVAL;
 return 0;
}
