
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct ag71xx {struct phy_device* phy_dev; } ;


 int ENODEV ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int phy_ethtool_ioctl (struct phy_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int ag71xx_ethtool_set_settings(struct net_device *dev,
           struct ethtool_cmd *cmd)
{
 struct ag71xx *ag = netdev_priv(dev);
 struct phy_device *phydev = ag->phy_dev;

 if (!phydev)
  return -ENODEV;

 return phy_ethtool_ioctl(phydev, cmd);
}
