
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int DEV_PROP_STRING ;
 int acpi_node_prop_read (struct fwnode_handle const*,char const*,int ,char const**,size_t) ;

__attribute__((used)) static int
acpi_fwnode_property_read_string_array(const struct fwnode_handle *fwnode,
           const char *propname, const char **val,
           size_t nval)
{
 return acpi_node_prop_read(fwnode, propname, DEV_PROP_STRING,
       val, nval);
}
