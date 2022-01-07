
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int phys_cpuid_t ;
typedef int acpi_handle ;


 int acpi_get_phys_id (int ,int,int ) ;
 int acpi_map_cpuid (int ,int ) ;

int acpi_get_cpuid(acpi_handle handle, int type, u32 acpi_id)
{
 phys_cpuid_t phys_id;

 phys_id = acpi_get_phys_id(handle, type, acpi_id);

 return acpi_map_cpuid(phys_id, acpi_id);
}
