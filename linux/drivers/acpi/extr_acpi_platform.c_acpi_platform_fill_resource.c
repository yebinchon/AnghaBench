
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int parent; } ;
struct device {int dummy; } ;
struct acpi_device {int parent; } ;


 struct device* acpi_get_first_physical_node (int ) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int pci_find_resource (int ,struct resource*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static void acpi_platform_fill_resource(struct acpi_device *adev,
 const struct resource *src, struct resource *dest)
{
 struct device *parent;

 *dest = *src;





 parent = acpi_get_first_physical_node(adev->parent);
 if (parent && dev_is_pci(parent))
  dest->parent = pci_find_resource(to_pci_dev(parent), dest);
}
