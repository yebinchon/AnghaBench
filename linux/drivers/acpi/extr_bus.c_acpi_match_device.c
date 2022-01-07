
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device_id {int dummy; } ;


 int __acpi_match_device (int ,struct acpi_device_id const*,int *,struct acpi_device_id const**,int *) ;
 int acpi_companion_match (struct device const*) ;

const struct acpi_device_id *acpi_match_device(const struct acpi_device_id *ids,
            const struct device *dev)
{
 const struct acpi_device_id *id = ((void*)0);

 __acpi_match_device(acpi_companion_match(dev), ids, ((void*)0), &id, ((void*)0));
 return id;
}
