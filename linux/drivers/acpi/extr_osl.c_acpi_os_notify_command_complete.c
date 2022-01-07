
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int AE_ERROR ;
 int AE_OK ;
 int acpi_debugger_notify_command_complete () ;

acpi_status acpi_os_notify_command_complete(void)
{
 int ret;

 ret = acpi_debugger_notify_command_complete();
 if (ret < 0)
  return AE_ERROR;
 return AE_OK;
}
