
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int iosapic_remove (int ) ;

int acpi_unregister_ioapic(acpi_handle handle, u32 gsi_base)
{
 return iosapic_remove(gsi_base);
}
