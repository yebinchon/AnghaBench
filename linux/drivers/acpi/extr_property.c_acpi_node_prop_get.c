
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct fwnode_handle {int dummy; } ;


 int ACPI_TYPE_ANY ;
 int acpi_data_get_property (int ,char const*,int ,union acpi_object const**) ;
 int acpi_device_data_of_node (struct fwnode_handle const*) ;

int acpi_node_prop_get(const struct fwnode_handle *fwnode,
         const char *propname, void **valptr)
{
 return acpi_data_get_property(acpi_device_data_of_node(fwnode),
          propname, ACPI_TYPE_ANY,
          (const union acpi_object **)valptr);
}
