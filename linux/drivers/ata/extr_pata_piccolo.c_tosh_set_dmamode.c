
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 size_t XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void tosh_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 conf;
 pci_read_config_dword(pdev, 0x5C, &conf);
 conf &= 0x78FFE088;
 if (adev->dma_mode >= XFER_UDMA_0) {
  int udma = adev->dma_mode - XFER_UDMA_0;
  conf |= 0x80000000;
  conf |= (udma + 2) << 28;
  conf |= (2 - udma) * 0x111;
 } else {
  static const u32 mwdma[4] = {
   0x0655, 0x0200, 0x0200, 0x0100
  };
  conf |= mwdma[adev->dma_mode - XFER_MW_DMA_0];
 }
 pci_write_config_dword(pdev, 0x5C, conf);
}
