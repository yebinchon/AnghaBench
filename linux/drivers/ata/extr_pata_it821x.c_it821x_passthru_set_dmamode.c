
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct it821x_dev {int** want; int* mwdma; int* udma; scalar_t__ timing10; } ;
struct ata_port {int port_no; struct it821x_dev* private_data; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int dev; } ;





 int MWDMA_OFF ;
 int UDMA_OFF ;
 int XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int it821x_clock_strategy (struct ata_port*,struct ata_device*) ;
 int it821x_program_udma (struct ata_port*,struct ata_device*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it821x_passthru_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static const u16 dma[] = { 0x8866, 0x3222, 0x3121 };
 static const u8 mwdma_want[] = { 128, 129, 128 };
 static const u16 udma[] = { 0x4433, 0x4231, 0x3121, 0x2121, 0x1111, 0x2211, 0x1111 };
 static const u8 udma_want[] = { 128, 130, 128, 129, 129, 130, 129 };

 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct it821x_dev *itdev = ap->private_data;
 int channel = ap->port_no;
 int unit = adev->devno;
 u8 conf;

 if (adev->dma_mode >= XFER_UDMA_0) {
  int mode_wanted = adev->dma_mode - XFER_UDMA_0;

  itdev->want[unit][1] = udma_want[mode_wanted];
  itdev->want[unit][0] = 3;
  itdev->mwdma[unit] = MWDMA_OFF;
  itdev->udma[unit] = udma[mode_wanted];
  if (mode_wanted >= 5)
   itdev->udma[unit] |= 0x8080;


  pci_read_config_byte(pdev, 0x50, &conf);
  if (itdev->timing10)
   conf &= channel ? 0x9F: 0xE7;
  else
   conf &= ~ (1 << (3 + 2 * channel + unit));
  pci_write_config_byte(pdev, 0x50, conf);
  it821x_clock_strategy(ap, adev);
  it821x_program_udma(ap, adev, itdev->udma[unit]);
 } else {
  int mode_wanted = adev->dma_mode - XFER_MW_DMA_0;

  itdev->want[unit][1] = mwdma_want[mode_wanted];
  itdev->want[unit][0] = 2;
  itdev->mwdma[unit] = dma[mode_wanted];
  itdev->udma[unit] = UDMA_OFF;


  pci_read_config_byte(pdev, 0x50, &conf);
  if (itdev->timing10)
   conf |= channel ? 0x60: 0x18;
  else
   conf |= 1 << (3 + 2 * channel + unit);
  pci_write_config_byte(pdev, 0x50, conf);
  it821x_clock_strategy(ap, adev);
 }
}
