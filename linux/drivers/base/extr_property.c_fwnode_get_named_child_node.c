
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle const*,int ,char const*) ;
 int get_named_child_node ;

struct fwnode_handle *
fwnode_get_named_child_node(const struct fwnode_handle *fwnode,
       const char *childname)
{
 return fwnode_call_ptr_op(fwnode, get_named_child_node, childname);
}
