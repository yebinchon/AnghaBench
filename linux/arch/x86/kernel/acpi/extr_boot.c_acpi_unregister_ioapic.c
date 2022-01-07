
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int ENOSYS ;
 int acpi_ioapic_lock ;
 int mp_unregister_ioapic (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_unregister_ioapic(acpi_handle handle, u32 gsi_base)
{
 int ret = -ENOSYS;







 return ret;
}
