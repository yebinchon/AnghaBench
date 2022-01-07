
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 int fwnode_get_phy_mode (int ) ;

int device_get_phy_mode(struct device *dev)
{
 return fwnode_get_phy_mode(dev_fwnode(dev));
}
