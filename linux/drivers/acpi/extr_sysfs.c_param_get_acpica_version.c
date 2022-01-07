
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int ACPI_CA_VERSION ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int param_get_acpica_version(char *buffer,
        const struct kernel_param *kp)
{
 int result;

 result = sprintf(buffer, "%x", ACPI_CA_VERSION);

 return result;
}
