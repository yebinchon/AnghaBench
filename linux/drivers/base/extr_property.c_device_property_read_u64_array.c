
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 int fwnode_property_read_u64_array (int ,char const*,int *,size_t) ;

int device_property_read_u64_array(struct device *dev, const char *propname,
       u64 *val, size_t nval)
{
 return fwnode_property_read_u64_array(dev_fwnode(dev), propname, val, nval);
}
