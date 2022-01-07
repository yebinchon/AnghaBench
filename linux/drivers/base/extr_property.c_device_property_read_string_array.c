
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 int fwnode_property_read_string_array (int ,char const*,char const**,size_t) ;

int device_property_read_string_array(struct device *dev, const char *propname,
          const char **val, size_t nval)
{
 return fwnode_property_read_string_array(dev_fwnode(dev), propname, val, nval);
}
