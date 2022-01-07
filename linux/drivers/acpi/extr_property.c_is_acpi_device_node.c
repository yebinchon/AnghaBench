
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int * ops; } ;


 int IS_ERR_OR_NULL (struct fwnode_handle const*) ;
 int acpi_device_fwnode_ops ;

bool is_acpi_device_node(const struct fwnode_handle *fwnode)
{
 return !IS_ERR_OR_NULL(fwnode) &&
  fwnode->ops == &acpi_device_fwnode_ops;
}
