
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; } ;
struct ag71xx {int mac_base; } ;


 int ag71xx_debugfs_exit (struct ag71xx*) ;
 int ag71xx_phy_disconnect (struct ag71xx*) ;
 int free_irq (int ,struct net_device*) ;
 int iounmap (int ) ;
 int kfree (struct net_device*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ag71xx_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);

 if (dev) {
  struct ag71xx *ag = netdev_priv(dev);

  ag71xx_debugfs_exit(ag);
  ag71xx_phy_disconnect(ag);
  unregister_netdev(dev);
  free_irq(dev->irq, dev);
  iounmap(ag->mac_base);
  kfree(dev);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
