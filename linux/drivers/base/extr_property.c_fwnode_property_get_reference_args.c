
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_reference_args {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int fwnode_call_int_op (struct fwnode_handle const*,int ,char const*,char const*,unsigned int,unsigned int,struct fwnode_reference_args*) ;
 int get_reference_args ;

int fwnode_property_get_reference_args(const struct fwnode_handle *fwnode,
           const char *prop, const char *nargs_prop,
           unsigned int nargs, unsigned int index,
           struct fwnode_reference_args *args)
{
 return fwnode_call_int_op(fwnode, get_reference_args, prop, nargs_prop,
      nargs, index, args);
}
