
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_ring {int * buf; int * descs_cpu; int descs_dma; int order; } ;
struct ag71xx {struct ag71xx_ring rx_ring; struct ag71xx_ring tx_ring; } ;


 int AG71XX_DESC_SIZE ;
 int BIT (int ) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void ag71xx_rings_free(struct ag71xx *ag)
{
 struct ag71xx_ring *tx = &ag->tx_ring;
 struct ag71xx_ring *rx = &ag->rx_ring;
 int ring_size = BIT(tx->order) + BIT(rx->order);

 if (tx->descs_cpu)
  dma_free_coherent(((void*)0), ring_size * AG71XX_DESC_SIZE,
      tx->descs_cpu, tx->descs_dma);

 kfree(tx->buf);

 tx->descs_cpu = ((void*)0);
 rx->descs_cpu = ((void*)0);
 tx->buf = ((void*)0);
 rx->buf = ((void*)0);
}
