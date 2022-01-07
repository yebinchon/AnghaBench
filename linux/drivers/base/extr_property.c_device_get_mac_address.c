
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 void* fwnode_get_mac_address (int ,char*,int) ;

void *device_get_mac_address(struct device *dev, char *addr, int alen)
{
 return fwnode_get_mac_address(dev_fwnode(dev), addr, alen);
}
