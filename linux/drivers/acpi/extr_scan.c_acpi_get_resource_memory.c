
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct acpi_resource {int dummy; } ;
typedef int acpi_status ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ acpi_dev_resource_memory (struct acpi_resource*,struct resource*) ;

__attribute__((used)) static acpi_status acpi_get_resource_memory(struct acpi_resource *ares,
         void *context)
{
 struct resource *res = context;

 if (acpi_dev_resource_memory(ares, res))
  return AE_CTRL_TERMINATE;

 return AE_OK;
}
