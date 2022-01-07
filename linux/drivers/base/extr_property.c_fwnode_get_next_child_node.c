
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle const*,int ,struct fwnode_handle*) ;
 int get_next_child_node ;

struct fwnode_handle *
fwnode_get_next_child_node(const struct fwnode_handle *fwnode,
      struct fwnode_handle *child)
{
 return fwnode_call_ptr_op(fwnode, get_next_child_node, child);
}
