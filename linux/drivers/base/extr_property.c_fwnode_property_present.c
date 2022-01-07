
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {struct fwnode_handle const* secondary; } ;


 int IS_ERR_OR_NULL (struct fwnode_handle const*) ;
 int fwnode_call_bool_op (struct fwnode_handle const*,int ,char const*) ;
 int property_present ;

bool fwnode_property_present(const struct fwnode_handle *fwnode,
        const char *propname)
{
 bool ret;

 ret = fwnode_call_bool_op(fwnode, property_present, propname);
 if (ret == 0 && !IS_ERR_OR_NULL(fwnode) &&
     !IS_ERR_OR_NULL(fwnode->secondary))
  ret = fwnode_call_bool_op(fwnode->secondary, property_present,
      propname);
 return ret;
}
