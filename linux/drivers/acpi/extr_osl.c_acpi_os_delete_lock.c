
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_spinlock ;


 int ACPI_FREE (int ) ;

void acpi_os_delete_lock(acpi_spinlock handle)
{
 ACPI_FREE(handle);
}
