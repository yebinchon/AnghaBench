
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_timeout_count; } ;
struct vector_private {int reset_tx; TYPE_1__ estats; } ;
struct net_device {int dummy; } ;


 struct vector_private* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void vector_net_tx_timeout(struct net_device *dev)
{
 struct vector_private *vp = netdev_priv(dev);

 vp->estats.tx_timeout_count++;
 netif_trans_update(dev);
 schedule_work(&vp->reset_tx);
}
