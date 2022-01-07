
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_5__ {int pagecnt_bias; int va; } ;
struct fe_rx_ring {int rx_ring_size; TYPE_2__ frag_cache; TYPE_3__* rx_dma; int rx_phys; scalar_t__* rx_data; int rx_buf_size; } ;
struct fe_priv {TYPE_1__* netdev; struct fe_rx_ring rx_ring; } ;
struct TYPE_6__ {scalar_t__ rxd1; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int __page_frag_cache_drain (struct page*,int ) ;
 int dma_free_coherent (int *,int,TYPE_3__*,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int kfree (scalar_t__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int skb_free_frag (scalar_t__) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static void fe_clean_rx(struct fe_priv *priv)
{
 struct fe_rx_ring *ring = &priv->rx_ring;
 struct page *page;
 int i;

 if (ring->rx_data) {
  for (i = 0; i < ring->rx_ring_size; i++)
   if (ring->rx_data[i]) {
    if (ring->rx_dma && ring->rx_dma[i].rxd1)
     dma_unmap_single(&priv->netdev->dev,
        ring->rx_dma[i].rxd1,
        ring->rx_buf_size,
        DMA_FROM_DEVICE);
    skb_free_frag(ring->rx_data[i]);
   }

  kfree(ring->rx_data);
  ring->rx_data = ((void*)0);
 }

 if (ring->rx_dma) {
  dma_free_coherent(&priv->netdev->dev,
      ring->rx_ring_size * sizeof(*ring->rx_dma),
      ring->rx_dma,
      ring->rx_phys);
  ring->rx_dma = ((void*)0);
 }

 if (!ring->frag_cache.va)
     return;

 page = virt_to_page(ring->frag_cache.va);
 __page_frag_cache_drain(page, ring->frag_cache.pagecnt_bias);
 memset(&ring->frag_cache, 0, sizeof(ring->frag_cache));
}
