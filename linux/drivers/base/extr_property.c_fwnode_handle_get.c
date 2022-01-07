
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* fwnode_call_ptr_op (struct fwnode_handle*,int ) ;
 int fwnode_has_op (struct fwnode_handle*,int ) ;
 int get ;

struct fwnode_handle *fwnode_handle_get(struct fwnode_handle *fwnode)
{
 if (!fwnode_has_op(fwnode, get))
  return fwnode;

 return fwnode_call_ptr_op(fwnode, get);
}
