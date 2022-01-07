
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t dma_mode; scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PATA_UDMA_TIMING ;
 size_t XFER_UDMA_0 ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int const) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void vt6421_set_dma_mode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 static const u8 udma_bits[] = { 0xEE, 0xE8, 0xE6, 0xE4, 0xE2, 0xE1, 0xE0, 0xE0 };
 pci_write_config_byte(pdev, PATA_UDMA_TIMING - adev->devno,
         udma_bits[adev->dma_mode - XFER_UDMA_0]);
}
