
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int acpi_status ;


 int AE_ERROR ;
 int AE_OK ;
 int acpi_debugger_read_cmd (char*,size_t) ;
 scalar_t__ acpi_in_debugger ;
 int kdb_read (char*,size_t) ;
 size_t strlen (char*) ;

acpi_status acpi_os_get_line(char *buffer, u32 buffer_length, u32 *bytes_read)
{
 int ret;

 ret = acpi_debugger_read_cmd(buffer, buffer_length);
 if (ret < 0)
  return AE_ERROR;
 if (bytes_read)
  *bytes_read = ret;


 return AE_OK;
}
