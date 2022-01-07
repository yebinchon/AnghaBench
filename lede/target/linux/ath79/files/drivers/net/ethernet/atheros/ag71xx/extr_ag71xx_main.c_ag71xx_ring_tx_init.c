
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ag71xx_ring {scalar_t__ dirty; scalar_t__ curr; TYPE_1__* buf; scalar_t__ descs_dma; int order; } ;
struct ag71xx_desc {int ctrl; scalar_t__ next; } ;
struct ag71xx {int dev; struct ag71xx_ring tx_ring; } ;
struct TYPE_2__ {int * skb; } ;


 int AG71XX_DESC_SIZE ;
 int BIT (int ) ;
 int DESC_EMPTY ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,int) ;
 int netdev_reset_queue (int ) ;
 int wmb () ;

__attribute__((used)) static void ag71xx_ring_tx_init(struct ag71xx *ag)
{
 struct ag71xx_ring *ring = &ag->tx_ring;
 int ring_size = BIT(ring->order);
 int ring_mask = ring_size - 1;
 int i;

 for (i = 0; i < ring_size; i++) {
  struct ag71xx_desc *desc = ag71xx_ring_desc(ring, i);

  desc->next = (u32) (ring->descs_dma +
   AG71XX_DESC_SIZE * ((i + 1) & ring_mask));

  desc->ctrl = DESC_EMPTY;
  ring->buf[i].skb = ((void*)0);
 }


 wmb();

 ring->curr = 0;
 ring->dirty = 0;
 netdev_reset_queue(ag->dev);
}
