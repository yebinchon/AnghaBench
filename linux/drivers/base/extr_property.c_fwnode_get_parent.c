
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle const*,int ) ;
 int get_parent ;

struct fwnode_handle *fwnode_get_parent(const struct fwnode_handle *fwnode)
{
 return fwnode_call_ptr_op(fwnode, get_parent);
}
