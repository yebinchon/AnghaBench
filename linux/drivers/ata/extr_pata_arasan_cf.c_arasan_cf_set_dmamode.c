
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; } ;
struct arasan_cf_dev {TYPE_2__* host; scalar_t__ vbase; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {struct arasan_cf_dev* private_data; } ;


 int BUF_AVAIL_IRQ ;
 scalar_t__ DMA_XFER_MODE ;
 scalar_t__ MULTI_WORD_DMA_ENB ;
 scalar_t__ OP_MODE ;
 int PIO_XFER_ERR_IRQ ;
 scalar_t__ TM_CFG ;
 scalar_t__ TRUEIDE_MWORD_DMA_TIMING_MASK ;
 scalar_t__ TRUEIDE_MWORD_DMA_TIMING_SHIFT ;
 scalar_t__ ULTRA_DMA_ENB ;
 scalar_t__ ULTRA_DMA_TIMING_MASK ;
 scalar_t__ ULTRA_DMA_TIMING_SHIFT ;
 scalar_t__ XFER_CTR ;
 int XFER_DONE_IRQ ;
 scalar_t__ XFER_MW_DMA_0 ;
 scalar_t__ XFER_MW_DMA_4 ;
 scalar_t__ XFER_UDMA_0 ;
 scalar_t__ XFER_UDMA_6 ;
 int cf_interrupt_enable (struct arasan_cf_dev*,int,int) ;
 int dev_err (int ,char*) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void arasan_cf_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct arasan_cf_dev *acdev = ap->host->private_data;
 u32 opmode, tmcfg, dma_mode = adev->dma_mode;
 unsigned long flags;

 spin_lock_irqsave(&acdev->host->lock, flags);
 opmode = readl(acdev->vbase + OP_MODE) &
  ~(MULTI_WORD_DMA_ENB | ULTRA_DMA_ENB);
 tmcfg = readl(acdev->vbase + TM_CFG);

 if ((dma_mode >= XFER_UDMA_0) && (dma_mode <= XFER_UDMA_6)) {
  opmode |= ULTRA_DMA_ENB;
  tmcfg &= ~ULTRA_DMA_TIMING_MASK;
  tmcfg |= (dma_mode - XFER_UDMA_0) << ULTRA_DMA_TIMING_SHIFT;
 } else if ((dma_mode >= XFER_MW_DMA_0) && (dma_mode <= XFER_MW_DMA_4)) {
  opmode |= MULTI_WORD_DMA_ENB;
  tmcfg &= ~TRUEIDE_MWORD_DMA_TIMING_MASK;
  tmcfg |= (dma_mode - XFER_MW_DMA_0) <<
   TRUEIDE_MWORD_DMA_TIMING_SHIFT;
 } else {
  dev_err(ap->dev, "Unknown DMA mode\n");
  spin_unlock_irqrestore(&acdev->host->lock, flags);
  return;
 }

 writel(opmode, acdev->vbase + OP_MODE);
 writel(tmcfg, acdev->vbase + TM_CFG);
 writel(DMA_XFER_MODE, acdev->vbase + XFER_CTR);

 cf_interrupt_enable(acdev, PIO_XFER_ERR_IRQ, 0);
 cf_interrupt_enable(acdev, BUF_AVAIL_IRQ | XFER_DONE_IRQ, 1);
 spin_unlock_irqrestore(&acdev->host->lock, flags);
}
