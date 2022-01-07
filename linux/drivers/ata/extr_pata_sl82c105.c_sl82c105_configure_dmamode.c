
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_MW_DMA_0 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sl82c105_configure_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 static u16 dma_timing[3] = {
  0x707, 0x201, 0x200
 };
 u16 dummy;
 int timing = 0x44 + (8 * ap->port_no) + (4 * adev->devno);
 int dma = adev->dma_mode - XFER_MW_DMA_0;

 pci_write_config_word(pdev, timing, dma_timing[dma]);

 pci_read_config_word(pdev, timing, &dummy);
}
