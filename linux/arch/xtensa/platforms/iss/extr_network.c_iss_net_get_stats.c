
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct iss_net_private {struct net_device_stats stats; } ;


 struct iss_net_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *iss_net_get_stats(struct net_device *dev)
{
 struct iss_net_private *lp = netdev_priv(dev);
 return &lp->stats;
}
