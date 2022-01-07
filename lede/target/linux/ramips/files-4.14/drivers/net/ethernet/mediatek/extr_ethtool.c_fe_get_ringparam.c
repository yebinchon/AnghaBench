
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int tx_ring_size; } ;
struct TYPE_3__ {int rx_ring_size; } ;
struct fe_priv {TYPE_2__ tx_ring; TYPE_1__ rx_ring; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; void* tx_max_pending; void* rx_max_pending; } ;


 void* MAX_DMA_DESC ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fe_get_ringparam(struct net_device *dev,
        struct ethtool_ringparam *ring)
{
 struct fe_priv *priv = netdev_priv(dev);

 ring->rx_max_pending = MAX_DMA_DESC;
 ring->tx_max_pending = MAX_DMA_DESC;
 ring->rx_pending = priv->rx_ring.rx_ring_size;
 ring->tx_pending = priv->tx_ring.tx_ring_size;
}
