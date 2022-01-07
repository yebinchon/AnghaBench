
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int out_crc; } ;


 int ACPI_AML_OUT_USER ;
 int __acpi_aml_access_ok (int ) ;
 scalar_t__ __acpi_aml_readable (int *,int ) ;
 TYPE_1__ acpi_aml_io ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool acpi_aml_user_readable(void)
{
 bool ret;

 mutex_lock(&acpi_aml_io.lock);
 ret = !__acpi_aml_access_ok(ACPI_AML_OUT_USER) ||
       __acpi_aml_readable(&acpi_aml_io.out_crc, ACPI_AML_OUT_USER);
 mutex_unlock(&acpi_aml_io.lock);
 return ret;
}
