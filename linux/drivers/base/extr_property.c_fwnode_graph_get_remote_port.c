
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_get_next_parent (int ) ;
 int fwnode_graph_get_remote_endpoint (struct fwnode_handle const*) ;

struct fwnode_handle *
fwnode_graph_get_remote_port(const struct fwnode_handle *fwnode)
{
 return fwnode_get_next_parent(fwnode_graph_get_remote_endpoint(fwnode));
}
