
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int __acpi_aml_busy () ;
 TYPE_1__ acpi_aml_io ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool acpi_aml_busy(void)
{
 bool ret;

 mutex_lock(&acpi_aml_io.lock);
 ret = __acpi_aml_busy();
 mutex_unlock(&acpi_aml_io.lock);
 return ret;
}
