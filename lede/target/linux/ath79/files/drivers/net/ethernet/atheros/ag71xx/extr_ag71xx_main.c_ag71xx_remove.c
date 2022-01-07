
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ag71xx {int dummy; } ;


 int ag71xx_debugfs_exit (struct ag71xx*) ;
 int ag71xx_phy_disconnect (struct ag71xx*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ag71xx_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct ag71xx *ag;

 if (!dev)
  return 0;

 ag = netdev_priv(dev);
 ag71xx_debugfs_exit(ag);
 ag71xx_phy_disconnect(ag);
 unregister_netdev(dev);
 platform_set_drvdata(pdev, ((void*)0));
 return 0;
}
