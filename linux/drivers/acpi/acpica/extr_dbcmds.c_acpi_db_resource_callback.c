
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource {int dummy; } ;
typedef int acpi_status ;


 int AE_OK ;

__attribute__((used)) static acpi_status
acpi_db_resource_callback(struct acpi_resource *resource, void *context)
{

 return (AE_OK);
}
