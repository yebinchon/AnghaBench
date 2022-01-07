
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dma_mode; scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 int ETC ;
 int IDE_D0_SHIFT ;
 int IDE_D1_SHIFT ;
 int IDE_DRV_MASK ;
 int IDE_ETC_UDMA_MASK ;
 int XFER_MW_DMA_0 ;
 int XFER_UDMA_0 ;
 int cs5536_program_dtc (struct ata_device*,int const) ;
 int cs5536_read (struct pci_dev*,int ,int*) ;
 int cs5536_write (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cs5536_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static const u8 udma_timings[6] = {
  0xc2, 0xc1, 0xc0, 0xc4, 0xc5, 0xc6,
 };

 static const u8 mwdma_timings[3] = {
  0x67, 0x21, 0x20,
 };

 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 etc;
 int mode = adev->dma_mode;
 int dshift = adev->devno ? IDE_D1_SHIFT : IDE_D0_SHIFT;

 cs5536_read(pdev, ETC, &etc);

 if (mode >= XFER_UDMA_0) {
  etc &= ~(IDE_DRV_MASK << dshift);
  etc |= udma_timings[mode - XFER_UDMA_0] << dshift;
 } else {
  etc &= ~(IDE_ETC_UDMA_MASK << dshift);
  cs5536_program_dtc(adev, mwdma_timings[mode - XFER_MW_DMA_0]);
 }

 cs5536_write(pdev, ETC, etc);
}
