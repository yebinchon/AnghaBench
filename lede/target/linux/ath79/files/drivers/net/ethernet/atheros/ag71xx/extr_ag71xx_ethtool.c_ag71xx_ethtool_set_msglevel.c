
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ag71xx {int msg_enable; } ;


 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ag71xx_ethtool_set_msglevel(struct net_device *dev, u32 msg_level)
{
 struct ag71xx *ag = netdev_priv(dev);

 ag->msg_enable = msg_level;
}
