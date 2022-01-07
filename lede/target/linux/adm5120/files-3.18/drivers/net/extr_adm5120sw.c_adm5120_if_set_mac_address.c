
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int adm5120_write_mac (struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;

__attribute__((used)) static int adm5120_if_set_mac_address(struct net_device *dev, void *p)
{
 int ret;

 ret = eth_mac_addr(dev, p);
 if (ret)
  return ret;

 adm5120_write_mac(dev);
 return 0;
}
