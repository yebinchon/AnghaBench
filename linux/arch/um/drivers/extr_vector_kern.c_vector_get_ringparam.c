
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vector_private {TYPE_1__* tx_queue; TYPE_2__* rx_queue; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct TYPE_4__ {int max_depth; } ;
struct TYPE_3__ {int max_depth; } ;


 struct vector_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void vector_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct vector_private *vp = netdev_priv(netdev);

 ring->rx_max_pending = vp->rx_queue->max_depth;
 ring->tx_max_pending = vp->tx_queue->max_depth;
 ring->rx_pending = vp->rx_queue->max_depth;
 ring->tx_pending = vp->tx_queue->max_depth;
}
