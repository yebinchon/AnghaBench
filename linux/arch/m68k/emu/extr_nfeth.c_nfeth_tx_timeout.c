
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void nfeth_tx_timeout(struct net_device *dev)
{
 dev->stats.tx_errors++;
 netif_wake_queue(dev);
}
