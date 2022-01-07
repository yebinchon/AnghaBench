
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_reference_args {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int __acpi_node_get_property_reference (struct fwnode_handle const*,char const*,unsigned int,unsigned int,struct fwnode_reference_args*) ;

__attribute__((used)) static int
acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
          const char *prop, const char *nargs_prop,
          unsigned int args_count, unsigned int index,
          struct fwnode_reference_args *args)
{
 return __acpi_node_get_property_reference(fwnode, prop, index,
        args_count, args);
}
