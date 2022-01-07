
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 int fwnode_property_present (int ,char const*) ;

bool device_property_present(struct device *dev, const char *propname)
{
 return fwnode_property_present(dev_fwnode(dev), propname);
}
