
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct arasan_cf_dev {TYPE_2__* host; scalar_t__ vbase; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {struct arasan_cf_dev* private_data; } ;


 int BUF_AVAIL_IRQ ;
 int DRQ_BLOCK_SIZE_MASK ;
 int MULTI_WORD_DMA_ENB ;
 scalar_t__ OP_MODE ;
 int PIO_XFER_ERR_IRQ ;
 scalar_t__ TM_CFG ;
 int TRUEIDE_PIO_TIMING_MASK ;
 int TRUEIDE_PIO_TIMING_SHIFT ;
 int ULTRA_DMA_ENB ;
 int XFER_DONE_IRQ ;
 int XFER_PIO_0 ;
 int cf_interrupt_enable (struct arasan_cf_dev*,int,int) ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arasan_cf_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct arasan_cf_dev *acdev = ap->host->private_data;
 u8 pio = adev->pio_mode - XFER_PIO_0;
 unsigned long flags;
 u32 val;


 if (pio > 6) {
  dev_err(ap->dev, "Unknown PIO mode\n");
  return;
 }

 spin_lock_irqsave(&acdev->host->lock, flags);
 val = readl(acdev->vbase + OP_MODE) &
  ~(ULTRA_DMA_ENB | MULTI_WORD_DMA_ENB | DRQ_BLOCK_SIZE_MASK);
 writel(val, acdev->vbase + OP_MODE);
 val = readl(acdev->vbase + TM_CFG) & ~TRUEIDE_PIO_TIMING_MASK;
 val |= pio << TRUEIDE_PIO_TIMING_SHIFT;
 writel(val, acdev->vbase + TM_CFG);

 cf_interrupt_enable(acdev, BUF_AVAIL_IRQ | XFER_DONE_IRQ, 0);
 cf_interrupt_enable(acdev, PIO_XFER_ERR_IRQ, 1);
 spin_unlock_irqrestore(&acdev->host->lock, flags);
}
