
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int AE_ERROR ;
 int AE_OK ;
 int acpi_debugger_wait_command_ready () ;

acpi_status acpi_os_wait_command_ready(void)
{
 int ret;

 ret = acpi_debugger_wait_command_ready();
 if (ret < 0)
  return AE_ERROR;
 return AE_OK;
}
