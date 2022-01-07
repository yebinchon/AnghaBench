
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct fwnode_handle const fwnode_handle ;


 struct fwnode_handle const* fwnode_get_next_child_node (struct fwnode_handle const*,struct fwnode_handle const*) ;
 struct fwnode_handle const* fwnode_get_parent (struct fwnode_handle const*) ;
 scalar_t__ is_acpi_graph_node (struct fwnode_handle const*,char*) ;

__attribute__((used)) static struct fwnode_handle *acpi_graph_get_next_endpoint(
 const struct fwnode_handle *fwnode, struct fwnode_handle *prev)
{
 struct fwnode_handle *port = ((void*)0);
 struct fwnode_handle *endpoint;

 if (!prev) {
  do {
   port = fwnode_get_next_child_node(fwnode, port);







   if (is_acpi_graph_node(port, "port"))
    break;
  } while (port);
 } else {
  port = fwnode_get_parent(prev);
 }

 if (!port)
  return ((void*)0);

 endpoint = fwnode_get_next_child_node(port, prev);
 while (!endpoint) {
  port = fwnode_get_next_child_node(fwnode, port);
  if (!port)
   break;
  if (is_acpi_graph_node(port, "port"))
   endpoint = fwnode_get_next_child_node(port, ((void*)0));
 }
 if (!is_acpi_graph_node(endpoint, "endpoint"))
  return ((void*)0);

 return endpoint;
}
