
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_reference_args {int nargs; unsigned int* args; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
typedef int args ;


 struct fwnode_handle* acpi_graph_get_child_prop_value (struct fwnode_handle*,char*,unsigned int) ;
 int acpi_node_get_property_reference (struct fwnode_handle const*,char*,int ,struct fwnode_reference_args*) ;
 int is_acpi_device_node (struct fwnode_handle*) ;
 int memset (struct fwnode_reference_args*,int ,int) ;

__attribute__((used)) static struct fwnode_handle *
acpi_graph_get_remote_endpoint(const struct fwnode_handle *__fwnode)
{
 struct fwnode_handle *fwnode;
 unsigned int port_nr, endpoint_nr;
 struct fwnode_reference_args args;
 int ret;

 memset(&args, 0, sizeof(args));
 ret = acpi_node_get_property_reference(__fwnode, "remote-endpoint", 0,
            &args);
 if (ret)
  return ((void*)0);


 if (!is_acpi_device_node(args.fwnode))
  return args.nargs ? ((void*)0) : args.fwnode;





 if (args.nargs != 2)
  return ((void*)0);

 fwnode = args.fwnode;
 port_nr = args.args[0];
 endpoint_nr = args.args[1];

 fwnode = acpi_graph_get_child_prop_value(fwnode, "port", port_nr);

 return acpi_graph_get_child_prop_value(fwnode, "endpoint", endpoint_nr);
}
