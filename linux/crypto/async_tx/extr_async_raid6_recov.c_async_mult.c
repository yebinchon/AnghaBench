
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct page {int dummy; } ;
struct dmaengine_unmap_data {size_t len; void** addr; int bidi_cnt; int to_cnt; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,void**,void**,int,size_t*,size_t,int) ;struct device* dev; } ;
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
 size_t* page_address (struct page*) ;
 size_t** raid6_gfmul ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,void**,void**,int,size_t*,size_t,int) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
async_mult(struct page *dest, struct page *src, u8 coef, size_t len,
    struct async_submit_ctl *submit)
{
 struct dma_chan *chan = async_tx_find_channel(submit, DMA_PQ,
            &dest, 1, &src, 1, len);
 struct dma_device *dma = chan ? chan->device : ((void*)0);
 struct dmaengine_unmap_data *unmap = ((void*)0);
 const u8 *qmul;
 u8 *d, *s;

 if (dma)
  unmap = dmaengine_get_unmap_data(dma->dev, 3, GFP_NOWAIT);

 if (unmap) {
  dma_addr_t dma_dest[2];
  struct device *dev = dma->dev;
  struct dma_async_tx_descriptor *tx;
  enum dma_ctrl_flags dma_flags = DMA_PREP_PQ_DISABLE_P;

  if (submit->flags & ASYNC_TX_FENCE)
   dma_flags |= DMA_PREP_FENCE;
  unmap->addr[0] = dma_map_page(dev, src, 0, len, DMA_TO_DEVICE);
  unmap->to_cnt++;
  unmap->addr[1] = dma_map_page(dev, dest, 0, len, DMA_BIDIRECTIONAL);
  dma_dest[1] = unmap->addr[1];
  unmap->bidi_cnt++;
  unmap->len = len;





  tx = dma->device_prep_dma_pq(chan, dma_dest, unmap->addr,
          1, &coef, len, dma_flags);

  if (tx) {
   dma_set_unmap(tx, unmap);
   dmaengine_unmap_put(unmap);
   async_tx_submit(chan, tx, submit);
   return tx;
  }




  dmaengine_unmap_put(unmap);
 }




 async_tx_quiesce(&submit->depend_tx);
 qmul = raid6_gfmul[coef];
 d = page_address(dest);
 s = page_address(src);

 while (len--)
  *d++ = qmul[*s++];

 return ((void*)0);
}
