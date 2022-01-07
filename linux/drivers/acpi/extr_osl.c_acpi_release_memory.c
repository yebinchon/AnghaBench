
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int flags; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_TYPE_REGION ;
 int AE_TYPE ;
 int IORESOURCE_MEM ;
 int acpi_deactivate_mem_region ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,struct resource*,int *) ;

acpi_status acpi_release_memory(acpi_handle handle, struct resource *res,
    u32 level)
{
 if (!(res->flags & IORESOURCE_MEM))
  return AE_TYPE;

 return acpi_walk_namespace(ACPI_TYPE_REGION, handle, level,
       acpi_deactivate_mem_region, ((void*)0), res, ((void*)0));
}
