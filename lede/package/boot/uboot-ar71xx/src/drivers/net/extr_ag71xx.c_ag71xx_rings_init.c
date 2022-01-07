
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx {int rx_ring; int tx_ring; } ;


 int AG71XX_RX_RING_SIZE ;
 int AG71XX_TX_RING_SIZE ;
 int ag71xx_ring_alloc (int *,int ) ;
 int ag71xx_ring_rx_init (struct ag71xx*) ;
 int ag71xx_ring_tx_init (struct ag71xx*) ;

__attribute__((used)) static int ag71xx_rings_init(struct ag71xx *ag)
{
 int ret;

 ret = ag71xx_ring_alloc(&ag->tx_ring, AG71XX_TX_RING_SIZE);
 if (ret)
  return ret;

 ag71xx_ring_tx_init(ag);

 ret = ag71xx_ring_alloc(&ag->rx_ring, AG71XX_RX_RING_SIZE);
 if (ret)
  return ret;

 ret = ag71xx_ring_rx_init(ag);
 return ret;
}
