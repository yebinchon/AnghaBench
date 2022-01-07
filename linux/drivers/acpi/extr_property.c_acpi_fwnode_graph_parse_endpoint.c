
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct fwnode_handle const fwnode_handle ;
struct fwnode_endpoint {int id; int port; struct fwnode_handle const* local_fwnode; } ;


 struct fwnode_handle const* fwnode_get_parent (struct fwnode_handle const*) ;
 scalar_t__ fwnode_property_read_u32 (struct fwnode_handle const*,char*,int *) ;

__attribute__((used)) static int acpi_fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
         struct fwnode_endpoint *endpoint)
{
 struct fwnode_handle *port_fwnode = fwnode_get_parent(fwnode);

 endpoint->local_fwnode = fwnode;

 if (fwnode_property_read_u32(port_fwnode, "reg", &endpoint->port))
  fwnode_property_read_u32(port_fwnode, "port", &endpoint->port);
 if (fwnode_property_read_u32(fwnode, "reg", &endpoint->id))
  fwnode_property_read_u32(fwnode, "endpoint", &endpoint->id);

 return 0;
}
