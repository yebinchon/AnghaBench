
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int device_is_available ;
 int fwnode_call_bool_op (struct fwnode_handle const*,int ) ;

bool fwnode_device_is_available(const struct fwnode_handle *fwnode)
{
 return fwnode_call_bool_op(fwnode, device_is_available);
}
