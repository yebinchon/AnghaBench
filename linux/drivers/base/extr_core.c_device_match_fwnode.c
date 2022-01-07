
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void const* dev_fwnode (struct device*) ;

int device_match_fwnode(struct device *dev, const void *fwnode)
{
 return dev_fwnode(dev) == fwnode;
}
