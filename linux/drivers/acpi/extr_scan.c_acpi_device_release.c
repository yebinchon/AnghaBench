
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_device {int pnp; } ;


 int acpi_free_pnp_ids (int *) ;
 int acpi_free_power_resources_lists (struct acpi_device*) ;
 int acpi_free_properties (struct acpi_device*) ;
 int kfree (struct acpi_device*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static void acpi_device_release(struct device *dev)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);

 acpi_free_properties(acpi_dev);
 acpi_free_pnp_ids(&acpi_dev->pnp);
 acpi_free_power_resources_lists(acpi_dev);
 kfree(acpi_dev);
}
