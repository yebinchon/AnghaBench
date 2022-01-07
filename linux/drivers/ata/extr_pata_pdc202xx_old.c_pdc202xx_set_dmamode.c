
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pdc202xx_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = 0x60 + 8 * ap->port_no + 4 * adev->devno;
 static u8 udma_timing[6][2] = {
  { 0x60, 0x03 },
  { 0x40, 0x02 },
  { 0x20, 0x01 },
  { 0x40, 0x02 },
  { 0x20, 0x01 },
  { 0x20, 0x01 }
 };
 static u8 mdma_timing[3][2] = {
  { 0xe0, 0x0f },
  { 0x60, 0x04 },
  { 0x60, 0x03 },
 };
 u8 r_bp, r_cp;

 pci_read_config_byte(pdev, port + 1, &r_bp);
 pci_read_config_byte(pdev, port + 2, &r_cp);

 r_bp &= ~0xE0;
 r_cp &= ~0x0F;

 if (adev->dma_mode >= XFER_UDMA_0) {
  int speed = adev->dma_mode - XFER_UDMA_0;
  r_bp |= udma_timing[speed][0];
  r_cp |= udma_timing[speed][1];

 } else {
  int speed = adev->dma_mode - XFER_MW_DMA_0;
  r_bp |= mdma_timing[speed][0];
  r_cp |= mdma_timing[speed][1];
 }
 pci_write_config_byte(pdev, port + 1, r_bp);
 pci_write_config_byte(pdev, port + 2, r_cp);

}
