
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;
struct acpi_power_resource {int name; TYPE_1__ device; } ;
typedef int acpi_status ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;

__attribute__((used)) static int __acpi_power_off(struct acpi_power_resource *resource)
{
 acpi_status status;

 status = acpi_evaluate_object(resource->device.handle, "_OFF",
          ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  return -ENODEV;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Power resource [%s] turned off\n",
     resource->name));
 return 0;
}
