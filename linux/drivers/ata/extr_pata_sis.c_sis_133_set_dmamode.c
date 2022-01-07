
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


 int XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int sis_port_base (struct ata_device*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_133_set_dmamode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port;
 u32 t1;

 port = sis_port_base(adev);
 pci_read_config_dword(pdev, port, &t1);

 if (adev->dma_mode < XFER_UDMA_0) {

  static const u32 timing_u100[] = { 0x19154000, 0x06072000, 0x04062000 };
  static const u32 timing_u133[] = { 0x221C6000, 0x0C0A3000, 0x05093000 };
  int speed = adev->dma_mode - XFER_MW_DMA_0;

  t1 &= 0xC0C00FFF;

  t1 &= ~0x00000004;
  if (t1 & 0x08)
   t1 |= timing_u133[speed];
  else
   t1 |= timing_u100[speed];
 } else {

  static const u32 timing_u100[] = { 0x6B0, 0x470, 0x350, 0x140, 0x120, 0x110, 0x000 };
  static const u32 timing_u133[] = { 0x9F0, 0x6A0, 0x470, 0x250, 0x230, 0x220, 0x210 };
  int speed = adev->dma_mode - XFER_UDMA_0;

  t1 &= ~0x00000FF0;

  t1 |= 0x00000004;
  if (t1 & 0x08)
   t1 |= timing_u133[speed];
  else
   t1 |= timing_u100[speed];
 }
 pci_write_config_dword(pdev, port, t1);
}
