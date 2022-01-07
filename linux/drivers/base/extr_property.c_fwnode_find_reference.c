
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_reference_args {struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* ERR_PTR (int) ;
 int fwnode_property_get_reference_args (struct fwnode_handle const*,char const*,int *,int ,unsigned int,struct fwnode_reference_args*) ;

struct fwnode_handle *fwnode_find_reference(const struct fwnode_handle *fwnode,
         const char *name,
         unsigned int index)
{
 struct fwnode_reference_args args;
 int ret;

 ret = fwnode_property_get_reference_args(fwnode, name, ((void*)0), 0, index,
       &args);
 return ret ? ERR_PTR(ret) : args.fwnode;
}
