
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct arasan_cf_dev {int dma_status; scalar_t__ vbase; } ;
struct TYPE_2__ {struct arasan_cf_dev* private_data; } ;


 int ATA_DMA_ERR ;
 scalar_t__ XFER_CTR ;
 int XFER_START ;
 int ata_sff_dma_pause (struct ata_port*) ;
 int ata_sff_freeze (struct ata_port*) ;
 int cf_ctrl_reset (struct arasan_cf_dev*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arasan_cf_freeze(struct ata_port *ap)
{
 struct arasan_cf_dev *acdev = ap->host->private_data;


 writel(readl(acdev->vbase + XFER_CTR) & ~XFER_START,
   acdev->vbase + XFER_CTR);
 cf_ctrl_reset(acdev);
 acdev->dma_status = ATA_DMA_ERR;

 ata_sff_dma_pause(ap);
 ata_sff_freeze(ap);
}
