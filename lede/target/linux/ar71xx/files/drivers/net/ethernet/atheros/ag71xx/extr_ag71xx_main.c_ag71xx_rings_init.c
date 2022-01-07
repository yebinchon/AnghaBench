
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_ring {scalar_t__ descs_dma; void* descs_cpu; int order; int * buf; } ;
struct ag71xx {struct ag71xx_ring rx_ring; struct ag71xx_ring tx_ring; } ;


 int AG71XX_DESC_SIZE ;
 size_t BIT (int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int ag71xx_ring_rx_init (struct ag71xx*) ;
 int ag71xx_ring_tx_init (struct ag71xx*) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int ag71xx_rings_init(struct ag71xx *ag)
{
 struct ag71xx_ring *tx = &ag->tx_ring;
 struct ag71xx_ring *rx = &ag->rx_ring;
 int ring_size = BIT(tx->order) + BIT(rx->order);
 int tx_size = BIT(tx->order);

 tx->buf = kzalloc(ring_size * sizeof(*tx->buf), GFP_KERNEL);
 if (!tx->buf)
  return -ENOMEM;

 tx->descs_cpu = dma_alloc_coherent(((void*)0), ring_size * AG71XX_DESC_SIZE,
        &tx->descs_dma, GFP_ATOMIC);
 if (!tx->descs_cpu) {
  kfree(tx->buf);
  tx->buf = ((void*)0);
  return -ENOMEM;
 }

 rx->buf = &tx->buf[BIT(tx->order)];
 rx->descs_cpu = ((void *)tx->descs_cpu) + tx_size * AG71XX_DESC_SIZE;
 rx->descs_dma = tx->descs_dma + tx_size * AG71XX_DESC_SIZE;

 ag71xx_ring_tx_init(ag);
 return ag71xx_ring_rx_init(ag);
}
