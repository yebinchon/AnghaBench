
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_resource {int resource_lock; } ;


 int acpi_power_on_unlocked (struct acpi_power_resource*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_power_on(struct acpi_power_resource *resource)
{
 int result;

 mutex_lock(&resource->resource_lock);
 result = acpi_power_on_unlocked(resource);
 mutex_unlock(&resource->resource_lock);
 return result;
}
