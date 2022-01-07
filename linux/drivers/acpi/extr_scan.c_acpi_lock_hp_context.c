
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_hp_context_lock ;
 int mutex_lock (int *) ;

void acpi_lock_hp_context(void)
{
 mutex_lock(&acpi_hp_context_lock);
}
