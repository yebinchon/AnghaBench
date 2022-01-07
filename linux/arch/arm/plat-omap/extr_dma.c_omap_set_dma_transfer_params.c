
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CCR ;
 int CCR2 ;
 int CEN ;
 int CFN ;
 int CSDP ;
 int OMAP_DMA_DST_SYNC_PREFETCH ;
 int OMAP_DMA_SYNC_BLOCK ;
 int OMAP_DMA_SYNC_FRAME ;
 scalar_t__ dma_omap1 () ;
 scalar_t__ dma_omap2plus () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub10 (int,int ,int) ;
 int stub2 (int,int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int,int ,int) ;
 int stub5 (int ,int) ;
 int stub6 (int,int ,int) ;
 int stub7 (int ,int) ;
 int stub8 (int,int ,int) ;
 int stub9 (int,int ,int) ;

void omap_set_dma_transfer_params(int lch, int data_type, int elem_count,
      int frame_count, int sync_mode,
      int dma_trigger, int src_or_dst_synch)
{
 u32 l;

 l = p->dma_read(CSDP, lch);
 l &= ~0x03;
 l |= data_type;
 p->dma_write(l, CSDP, lch);

 if (dma_omap1()) {
  u16 ccr;

  ccr = p->dma_read(CCR, lch);
  ccr &= ~(1 << 5);
  if (sync_mode == OMAP_DMA_SYNC_FRAME)
   ccr |= 1 << 5;
  p->dma_write(ccr, CCR, lch);

  ccr = p->dma_read(CCR2, lch);
  ccr &= ~(1 << 2);
  if (sync_mode == OMAP_DMA_SYNC_BLOCK)
   ccr |= 1 << 2;
  p->dma_write(ccr, CCR2, lch);
 }

 if (dma_omap2plus() && dma_trigger) {
  u32 val;

  val = p->dma_read(CCR, lch);


  val &= ~((1 << 23) | (3 << 19) | 0x1f);
  val |= (dma_trigger & ~0x1f) << 14;
  val |= dma_trigger & 0x1f;

  if (sync_mode & OMAP_DMA_SYNC_FRAME)
   val |= 1 << 5;
  else
   val &= ~(1 << 5);

  if (sync_mode & OMAP_DMA_SYNC_BLOCK)
   val |= 1 << 18;
  else
   val &= ~(1 << 18);

  if (src_or_dst_synch == OMAP_DMA_DST_SYNC_PREFETCH) {
   val &= ~(1 << 24);
   val |= (1 << 23);
  } else if (src_or_dst_synch) {
   val |= 1 << 24;
  } else {
   val &= ~(1 << 24);
  }
  p->dma_write(val, CCR, lch);
 }

 p->dma_write(elem_count, CEN, lch);
 p->dma_write(frame_count, CFN, lch);
}
