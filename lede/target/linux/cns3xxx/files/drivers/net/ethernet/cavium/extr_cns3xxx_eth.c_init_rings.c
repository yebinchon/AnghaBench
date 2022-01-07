
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc {int eor; int fsd; int lsd; int cown; int sdp; int sdl; } ;
struct _tx_ring {int phys_addr; scalar_t__* buff_tab; struct tx_desc* desc; } ;
struct _rx_ring {int phys_addr; int * phys_tab; void** buff_tab; struct tx_desc* desc; } ;
struct sw {TYPE_1__* regs; int dev; struct _tx_ring tx_ring; struct _rx_ring rx_ring; } ;
struct rx_desc {int eor; int fsd; int lsd; int cown; int sdp; int sdl; } ;
struct TYPE_2__ {int ts_desc_base_addr0; int ts_desc_ptr0; int fs_desc_base_addr0; int fs_desc_ptr0; int dma_ring_ctrl; int dma_auto_poll_cfg; int fs_dma_ctrl0; } ;


 int CLR_FS_STATE ;
 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENOMEM ;
 int FS_SUSPEND ;
 int GFP_KERNEL ;
 int QUEUE_THRESHOLD ;
 int RX_DESCS ;
 int RX_POOL_ALLOC_SIZE ;
 int RX_SEGMENT_ALLOC_SIZE ;
 int RX_SEGMENT_MRU ;
 int SKB_HEAD_ALIGN ;
 int TS_SUSPEND ;
 int TX_DESCS ;
 int TX_POOL_ALLOC_SIZE ;
 int __raw_writel (int,int *) ;
 int dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 void* dmam_alloc_coherent (int ,int ,int*,int ) ;
 int memset (struct tx_desc*,int ,int ) ;
 void* netdev_alloc_frag (int ) ;

__attribute__((used)) static int init_rings(struct sw *sw)
{
 int i;
 struct _rx_ring *rx_ring = &sw->rx_ring;
 struct _tx_ring *tx_ring = &sw->tx_ring;

 __raw_writel(0, &sw->regs->fs_dma_ctrl0);
 __raw_writel(TS_SUSPEND | FS_SUSPEND, &sw->regs->dma_auto_poll_cfg);
 __raw_writel(QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);
 __raw_writel(CLR_FS_STATE | QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);
 __raw_writel(QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);

 rx_ring->desc = dmam_alloc_coherent(sw->dev, RX_POOL_ALLOC_SIZE,
         &rx_ring->phys_addr, GFP_KERNEL);
 if (!rx_ring->desc)
  return -ENOMEM;


 memset(rx_ring->desc, 0, RX_POOL_ALLOC_SIZE);

 for (i = 0; i < RX_DESCS; i++) {
  struct rx_desc *desc = &(rx_ring)->desc[i];
  void *buf;

  buf = netdev_alloc_frag(RX_SEGMENT_ALLOC_SIZE);
  if (!buf)
   return -ENOMEM;

  desc->sdl = RX_SEGMENT_MRU;

  if (i == (RX_DESCS - 1))
   desc->eor = 1;

  desc->fsd = 1;
  desc->lsd = 1;

  desc->sdp = dma_map_single(sw->dev, buf + SKB_HEAD_ALIGN,
        RX_SEGMENT_MRU, DMA_FROM_DEVICE);

  if (dma_mapping_error(sw->dev, desc->sdp))
   return -EIO;

  rx_ring->buff_tab[i] = buf;
  rx_ring->phys_tab[i] = desc->sdp;
  desc->cown = 0;
 }
 __raw_writel(rx_ring->phys_addr, &sw->regs->fs_desc_ptr0);
 __raw_writel(rx_ring->phys_addr, &sw->regs->fs_desc_base_addr0);

 tx_ring->desc = dmam_alloc_coherent(sw->dev, TX_POOL_ALLOC_SIZE,
         &tx_ring->phys_addr, GFP_KERNEL);
 if (!tx_ring->desc)
  return -ENOMEM;


 memset(tx_ring->desc, 0, TX_POOL_ALLOC_SIZE);

 for (i = 0; i < TX_DESCS; i++) {
  struct tx_desc *desc = &(tx_ring)->desc[i];
  tx_ring->buff_tab[i] = 0;

  if (i == (TX_DESCS - 1))
   desc->eor = 1;

  desc->cown = 1;
 }
 __raw_writel(tx_ring->phys_addr, &sw->regs->ts_desc_ptr0);
 __raw_writel(tx_ring->phys_addr, &sw->regs->ts_desc_base_addr0);

 return 0;
}
