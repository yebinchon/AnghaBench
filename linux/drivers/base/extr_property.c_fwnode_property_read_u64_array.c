
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fwnode_handle {int dummy; } ;


 int fwnode_property_read_int_array (struct fwnode_handle const*,char const*,int,int *,size_t) ;

int fwnode_property_read_u64_array(const struct fwnode_handle *fwnode,
       const char *propname, u64 *val, size_t nval)
{
 return fwnode_property_read_int_array(fwnode, propname, sizeof(u64),
           val, nval);
}
