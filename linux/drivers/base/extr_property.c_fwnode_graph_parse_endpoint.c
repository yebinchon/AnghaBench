
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct fwnode_endpoint {int dummy; } ;


 int fwnode_call_int_op (struct fwnode_handle const*,int ,struct fwnode_endpoint*) ;
 int graph_parse_endpoint ;
 int memset (struct fwnode_endpoint*,int ,int) ;

int fwnode_graph_parse_endpoint(const struct fwnode_handle *fwnode,
    struct fwnode_endpoint *endpoint)
{
 memset(endpoint, 0, sizeof(*endpoint));

 return fwnode_call_int_op(fwnode, graph_parse_endpoint, endpoint);
}
