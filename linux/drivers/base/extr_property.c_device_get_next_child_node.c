
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {struct fwnode_handle fwnode; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 struct fwnode_handle* acpi_fwnode_handle (struct acpi_device*) ;
 struct fwnode_handle* fwnode_get_next_child_node (struct fwnode_handle*,struct fwnode_handle*) ;

struct fwnode_handle *device_get_next_child_node(struct device *dev,
       struct fwnode_handle *child)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 struct fwnode_handle *fwnode = ((void*)0);

 if (dev->of_node)
  fwnode = &dev->of_node->fwnode;
 else if (adev)
  fwnode = acpi_fwnode_handle(adev);

 return fwnode_get_next_child_node(fwnode, child);
}
