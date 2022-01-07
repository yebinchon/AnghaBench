
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ag71xx {int restart_work; TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 struct ag71xx* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_tx_err (struct ag71xx*) ;
 int pr_info (char*,int ) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void ag71xx_tx_timeout(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);

 if (netif_msg_tx_err(ag))
  pr_info("%s: tx timeout\n", ag->dev->name);

 schedule_delayed_work(&ag->restart_work, 1);
}
