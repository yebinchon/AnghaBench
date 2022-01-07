
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int fwnode_call_void_op (struct fwnode_handle*,int ) ;
 int put ;

void fwnode_handle_put(struct fwnode_handle *fwnode)
{
 fwnode_call_void_op(fwnode, put);
}
