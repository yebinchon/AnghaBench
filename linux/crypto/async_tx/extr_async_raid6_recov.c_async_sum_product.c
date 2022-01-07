
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {int dummy; } ;
struct dmaengine_unmap_data {int to_cnt; int bidi_cnt; size_t len; void** addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,void**,void**,int,unsigned char*,size_t,int) ;struct device* dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct async_submit_ctl {int flags; int depend_tx; } ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef void* dma_addr_t ;


 int ASYNC_TX_FENCE ;
 int DMA_BIDIRECTIONAL ;
 int DMA_PQ ;
 int DMA_PREP_FENCE ;
 int DMA_PREP_PQ_DISABLE_P ;
 int DMA_TO_DEVICE ;
 int GFP_NOWAIT ;
 struct dma_chan* async_tx_find_channel (struct async_submit_ctl*,int ,struct page**,int,struct page**,int,size_t) ;
 int async_tx_quiesce (int *) ;
 int async_tx_submit (struct dma_chan*,struct dma_async_tx_descriptor*,struct async_submit_ctl*) ;
 void* dma_map_page (struct device*,struct page*,int ,size_t,int ) ;
 int dma_set_unmap (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ;
 struct dmaengine_unmap_data* dmaengine_get_unmap_data (struct device*,int,int ) ;
 int dmaengine_unmap_put (struct dmaengine_unmap_data*) ;
 int* page_address (struct page*) ;
 int** raid6_gfmul ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,void**,void**,int,unsigned char*,size_t,int) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
async_sum_product(struct page *dest, struct page **srcs, unsigned char *coef,
    size_t len, struct async_submit_ctl *submit)
{
 struct dma_chan *chan = async_tx_find_channel(submit, DMA_PQ,
            &dest, 1, srcs, 2, len);
 struct dma_device *dma = chan ? chan->device : ((void*)0);
 struct dmaengine_unmap_data *unmap = ((void*)0);
 const u8 *amul, *bmul;
 u8 ax, bx;
 u8 *a, *b, *c;

 if (dma)
  unmap = dmaengine_get_unmap_data(dma->dev, 3, GFP_NOWAIT);

 if (unmap) {
  struct device *dev = dma->dev;
  dma_addr_t pq[2];
  struct dma_async_tx_descriptor *tx;
  enum dma_ctrl_flags dma_flags = DMA_PREP_PQ_DISABLE_P;

  if (submit->flags & ASYNC_TX_FENCE)
   dma_flags |= DMA_PREP_FENCE;
  unmap->addr[0] = dma_map_page(dev, srcs[0], 0, len, DMA_TO_DEVICE);
  unmap->addr[1] = dma_map_page(dev, srcs[1], 0, len, DMA_TO_DEVICE);
  unmap->to_cnt = 2;

  unmap->addr[2] = dma_map_page(dev, dest, 0, len, DMA_BIDIRECTIONAL);
  unmap->bidi_cnt = 1;

  pq[1] = unmap->addr[2];

  unmap->len = len;
  tx = dma->device_prep_dma_pq(chan, pq, unmap->addr, 2, coef,
          len, dma_flags);
  if (tx) {
   dma_set_unmap(tx, unmap);
   async_tx_submit(chan, tx, submit);
   dmaengine_unmap_put(unmap);
   return tx;
  }




  dmaengine_unmap_put(unmap);
 }


 async_tx_quiesce(&submit->depend_tx);
 amul = raid6_gfmul[coef[0]];
 bmul = raid6_gfmul[coef[1]];
 a = page_address(srcs[0]);
 b = page_address(srcs[1]);
 c = page_address(dest);

 while (len--) {
  ax = amul[*a++];
  bx = bmul[*b++];
  *c++ = ax ^ bx;
 }

 return ((void*)0);
}
