
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_graph_get_port_parent (struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_remote_endpoint (struct fwnode_handle const*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;

struct fwnode_handle *
fwnode_graph_get_remote_port_parent(const struct fwnode_handle *fwnode)
{
 struct fwnode_handle *endpoint, *parent;

 endpoint = fwnode_graph_get_remote_endpoint(fwnode);
 parent = fwnode_graph_get_port_parent(endpoint);

 fwnode_handle_put(endpoint);

 return parent;
}
