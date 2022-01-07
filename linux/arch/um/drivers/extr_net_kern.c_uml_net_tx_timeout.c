
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void uml_net_tx_timeout(struct net_device *dev)
{
 netif_trans_update(dev);
 netif_wake_queue(dev);
}
