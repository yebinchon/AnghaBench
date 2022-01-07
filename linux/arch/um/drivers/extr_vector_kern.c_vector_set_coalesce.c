
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int coalesce; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; } ;


 int HZ ;
 struct vector_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vector_set_coalesce(struct net_device *netdev,
     struct ethtool_coalesce *ec)
{
 struct vector_private *vp = netdev_priv(netdev);

 vp->coalesce = (ec->tx_coalesce_usecs * HZ) / 1000000;
 if (vp->coalesce == 0)
  vp->coalesce = 1;
 return 0;
}
