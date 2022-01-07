
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct ata_host {struct arasan_cf_dev* private_data; } ;
struct arasan_cf_dev {int cf_completion; struct ata_queued_cmd* qc; TYPE_1__* host; scalar_t__ vbase; int dma_status; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int lock; int dev; } ;


 int ATA_DMA_ERR ;
 int ATA_TFLAG_WRITE ;
 int BUF_AVAIL_IRQ ;
 int CARD_DETECT_IRQ ;
 int GIRQ_CF ;
 scalar_t__ GIRQ_STS ;
 int IGNORED_IRQS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ IRQ_STS ;
 int PIO_XFER_ERR_IRQ ;
 scalar_t__ XFER_CTR ;
 int XFER_DONE_IRQ ;
 int XFER_START ;
 int cf_card_detect (struct arasan_cf_dev*,int) ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t arasan_cf_interrupt(int irq, void *dev)
{
 struct arasan_cf_dev *acdev = ((struct ata_host *)dev)->private_data;
 unsigned long flags;
 u32 irqsts;

 irqsts = readl(acdev->vbase + GIRQ_STS);
 if (!(irqsts & GIRQ_CF))
  return IRQ_NONE;

 spin_lock_irqsave(&acdev->host->lock, flags);
 irqsts = readl(acdev->vbase + IRQ_STS);
 writel(irqsts, acdev->vbase + IRQ_STS);
 writel(GIRQ_CF, acdev->vbase + GIRQ_STS);


 irqsts &= ~IGNORED_IRQS;

 if (irqsts & CARD_DETECT_IRQ) {
  cf_card_detect(acdev, 1);
  spin_unlock_irqrestore(&acdev->host->lock, flags);
  return IRQ_HANDLED;
 }

 if (irqsts & PIO_XFER_ERR_IRQ) {
  acdev->dma_status = ATA_DMA_ERR;
  writel(readl(acdev->vbase + XFER_CTR) & ~XFER_START,
    acdev->vbase + XFER_CTR);
  spin_unlock_irqrestore(&acdev->host->lock, flags);
  complete(&acdev->cf_completion);
  dev_err(acdev->host->dev, "pio xfer err irq\n");
  return IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&acdev->host->lock, flags);

 if (irqsts & BUF_AVAIL_IRQ) {
  complete(&acdev->cf_completion);
  return IRQ_HANDLED;
 }

 if (irqsts & XFER_DONE_IRQ) {
  struct ata_queued_cmd *qc = acdev->qc;


  if (qc->tf.flags & ATA_TFLAG_WRITE)
   complete(&acdev->cf_completion);
 }

 return IRQ_HANDLED;
}
