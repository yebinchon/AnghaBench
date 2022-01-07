
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 int sis_old_port_base (struct ata_device*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_66_set_dmamode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int speed = adev->dma_mode - XFER_MW_DMA_0;
 int drive_pci = sis_old_port_base(adev);
 u16 timing;


 static const u16 mwdma_bits[] = { 0x008, 0x302, 0x301 };
 static const u16 udma_bits[] = { 0xF000, 0xD000, 0xB000, 0xA000, 0x9000, 0x8000 };

 pci_read_config_word(pdev, drive_pci, &timing);

 if (adev->dma_mode < XFER_UDMA_0) {


  timing &= ~0x870F;
  timing |= mwdma_bits[speed];
 } else {

  speed = adev->dma_mode - XFER_UDMA_0;
  timing &= ~0xF000;
  timing |= udma_bits[speed];
 }
 pci_write_config_word(pdev, drive_pci, timing);
}
