
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dma_chan {TYPE_1__* device; } ;
struct dma_async_tx_descriptor {int (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct arasan_cf_dev* callback_param; int callback; } ;
struct arasan_cf_dev {TYPE_2__* host; int dma_completion; struct dma_chan* dma_chan; } ;
typedef int dma_cookie_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* device_issue_pending ) (struct dma_chan*) ;struct dma_async_tx_descriptor* (* device_prep_dma_memcpy ) (struct dma_chan*,int ,int ,int ,unsigned long) ;} ;


 unsigned long DMA_PREP_INTERRUPT ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 int dev_err (int ,char*) ;
 int dma_callback ;
 int dma_submit_error (int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;
 struct dma_async_tx_descriptor* stub1 (struct dma_chan*,int ,int ,int ,unsigned long) ;
 int stub2 (struct dma_async_tx_descriptor*) ;
 int stub3 (struct dma_chan*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
dma_xfer(struct arasan_cf_dev *acdev, dma_addr_t src, dma_addr_t dest, u32 len)
{
 struct dma_async_tx_descriptor *tx;
 struct dma_chan *chan = acdev->dma_chan;
 dma_cookie_t cookie;
 unsigned long flags = DMA_PREP_INTERRUPT;
 int ret = 0;

 tx = chan->device->device_prep_dma_memcpy(chan, dest, src, len, flags);
 if (!tx) {
  dev_err(acdev->host->dev, "device_prep_dma_memcpy failed\n");
  return -EAGAIN;
 }

 tx->callback = dma_callback;
 tx->callback_param = acdev;
 cookie = tx->tx_submit(tx);

 ret = dma_submit_error(cookie);
 if (ret) {
  dev_err(acdev->host->dev, "dma_submit_error\n");
  return ret;
 }

 chan->device->device_issue_pending(chan);


 if (!wait_for_completion_timeout(&acdev->dma_completion, TIMEOUT)) {
  dmaengine_terminate_all(chan);
  dev_err(acdev->host->dev, "wait_for_completion_timeout\n");
  return -ETIMEDOUT;
 }

 return ret;
}
