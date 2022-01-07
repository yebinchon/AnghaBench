
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
typedef enum dev_prop_type { ____Placeholder_dev_prop_type } dev_prop_type ;


 int acpi_data_prop_read (int ,char const*,int,void*,size_t) ;
 int acpi_device_data_of_node (struct fwnode_handle const*) ;

int acpi_node_prop_read(const struct fwnode_handle *fwnode,
   const char *propname, enum dev_prop_type proptype,
   void *val, size_t nval)
{
 return acpi_data_prop_read(acpi_device_data_of_node(fwnode),
       propname, proptype, val, nval);
}
