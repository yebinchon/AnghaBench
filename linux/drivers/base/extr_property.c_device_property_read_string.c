
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 int fwnode_property_read_string (int ,char const*,char const**) ;

int device_property_read_string(struct device *dev, const char *propname,
    const char **val)
{
 return fwnode_property_read_string(dev_fwnode(dev), propname, val);
}
