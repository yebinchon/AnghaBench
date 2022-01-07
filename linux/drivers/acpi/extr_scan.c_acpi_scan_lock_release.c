
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_scan_lock ;
 int mutex_unlock (int *) ;

void acpi_scan_lock_release(void)
{
 mutex_unlock(&acpi_scan_lock);
}
