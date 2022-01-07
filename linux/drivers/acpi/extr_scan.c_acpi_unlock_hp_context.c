
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_hp_context_lock ;
 int mutex_unlock (int *) ;

void acpi_unlock_hp_context(void)
{
 mutex_unlock(&acpi_hp_context_lock);
}
