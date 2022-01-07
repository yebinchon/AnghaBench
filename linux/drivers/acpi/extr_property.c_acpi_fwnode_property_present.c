
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int acpi_node_prop_get (struct fwnode_handle const*,char const*,int *) ;

__attribute__((used)) static bool acpi_fwnode_property_present(const struct fwnode_handle *fwnode,
      const char *propname)
{
 return !acpi_node_prop_get(fwnode, propname, ((void*)0));
}
