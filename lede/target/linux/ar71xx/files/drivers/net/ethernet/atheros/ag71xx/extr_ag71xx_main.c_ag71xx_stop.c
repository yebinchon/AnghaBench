
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ag71xx {int dummy; } ;


 int ag71xx_hw_disable (struct ag71xx*) ;
 int ag71xx_phy_stop (struct ag71xx*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int ag71xx_stop(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);

 netif_carrier_off(dev);
 ag71xx_phy_stop(ag);
 ag71xx_hw_disable(ag);

 return 0;
}
