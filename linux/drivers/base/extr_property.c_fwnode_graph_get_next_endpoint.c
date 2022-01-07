
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle const*,int ,struct fwnode_handle*) ;
 int graph_get_next_endpoint ;

struct fwnode_handle *
fwnode_graph_get_next_endpoint(const struct fwnode_handle *fwnode,
          struct fwnode_handle *prev)
{
 return fwnode_call_ptr_op(fwnode, graph_get_next_endpoint, prev);
}
