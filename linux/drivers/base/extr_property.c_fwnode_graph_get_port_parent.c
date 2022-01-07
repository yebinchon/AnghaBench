
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle*,int ) ;
 struct fwnode_handle* fwnode_get_parent (struct fwnode_handle const*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int graph_get_port_parent ;

struct fwnode_handle *
fwnode_graph_get_port_parent(const struct fwnode_handle *endpoint)
{
 struct fwnode_handle *port, *parent;

 port = fwnode_get_parent(endpoint);
 parent = fwnode_call_ptr_op(port, graph_get_port_parent);

 fwnode_handle_put(port);

 return parent;
}
