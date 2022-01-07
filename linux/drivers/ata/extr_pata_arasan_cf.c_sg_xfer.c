
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct arasan_cf_dev {int pbase; TYPE_3__* host; scalar_t__ vbase; TYPE_2__* qc; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int lock; int dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ tf; } ;


 int ATA_TFLAG_WRITE ;
 int EXT_READ_PORT ;
 int EXT_WRITE_PORT ;
 int FIFO_SIZE ;
 int MAX_XFER_COUNT ;
 int XFER_COUNT_MASK ;
 scalar_t__ XFER_CTR ;
 int XFER_START ;
 int dev_err (int ,char*) ;
 int dma_xfer (struct arasan_cf_dev*,int,int,int) ;
 int min (int,int ) ;
 int readl (scalar_t__) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait4buf (struct arasan_cf_dev*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sg_xfer(struct arasan_cf_dev *acdev, struct scatterlist *sg)
{
 dma_addr_t dest = 0, src = 0;
 u32 xfer_cnt, sglen, dma_len, xfer_ctr;
 u32 write = acdev->qc->tf.flags & ATA_TFLAG_WRITE;
 unsigned long flags;
 int ret = 0;

 sglen = sg_dma_len(sg);
 if (write) {
  src = sg_dma_address(sg);
  dest = acdev->pbase + EXT_WRITE_PORT;
 } else {
  dest = sg_dma_address(sg);
  src = acdev->pbase + EXT_READ_PORT;
 }
 while (sglen) {
  xfer_cnt = min(sglen, MAX_XFER_COUNT);
  spin_lock_irqsave(&acdev->host->lock, flags);
  xfer_ctr = readl(acdev->vbase + XFER_CTR) &
   ~XFER_COUNT_MASK;
  writel(xfer_ctr | xfer_cnt | XFER_START,
    acdev->vbase + XFER_CTR);
  spin_unlock_irqrestore(&acdev->host->lock, flags);


  while (xfer_cnt) {

   if (!write) {
    ret = wait4buf(acdev);
    if (ret)
     goto fail;
   }


   dma_len = min(xfer_cnt, FIFO_SIZE);
   ret = dma_xfer(acdev, src, dest, dma_len);
   if (ret) {
    dev_err(acdev->host->dev, "dma failed");
    goto fail;
   }

   if (write)
    src += dma_len;
   else
    dest += dma_len;

   sglen -= dma_len;
   xfer_cnt -= dma_len;


   if (write) {
    ret = wait4buf(acdev);
    if (ret)
     goto fail;
   }
  }
 }

fail:
 spin_lock_irqsave(&acdev->host->lock, flags);
 writel(readl(acdev->vbase + XFER_CTR) & ~XFER_START,
   acdev->vbase + XFER_CTR);
 spin_unlock_irqrestore(&acdev->host->lock, flags);

 return ret;
}
