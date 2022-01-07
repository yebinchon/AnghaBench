
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_timing {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ class; scalar_t__ dma_mode; scalar_t__ pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_TIMING_8BIT ;
 int ATA_TIMING_SETUP ;
 scalar_t__ XFER_UDMA_0 ;
 scalar_t__ XFER_UDMA_3 ;
 int ali_fifo_control (struct ata_port*,struct ata_device*,int) ;
 int ali_program_modes (struct ata_port*,struct ata_device*,struct ata_timing*,int) ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,scalar_t__,struct ata_timing*,unsigned long,int) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static u8 udma_timing[7] = { 0xC, 0xB, 0xA, 0x9, 0x8, 0xF, 0xD };
 struct ata_device *pair = ata_dev_pair(adev);
 struct ata_timing t;
 unsigned long T = 1000000000 / 33333;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);


 if (adev->class == ATA_DEV_ATA)
  ali_fifo_control(ap, adev, 0x08);

 if (adev->dma_mode >= XFER_UDMA_0) {
  ali_program_modes(ap, adev, ((void*)0), udma_timing[adev->dma_mode - XFER_UDMA_0]);
  if (adev->dma_mode >= XFER_UDMA_3) {
   u8 reg4b;
   pci_read_config_byte(pdev, 0x4B, &reg4b);
   reg4b |= 1;
   pci_write_config_byte(pdev, 0x4B, reg4b);
  }
 } else {
  ata_timing_compute(adev, adev->dma_mode, &t, T, 1);
  if (pair) {
   struct ata_timing p;
   ata_timing_compute(pair, pair->pio_mode, &p, T, 1);
   ata_timing_merge(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
   if (pair->dma_mode) {
    ata_timing_compute(pair, pair->dma_mode, &p, T, 1);
    ata_timing_merge(&p, &t, &t, ATA_TIMING_SETUP|ATA_TIMING_8BIT);
   }
  }
  ali_program_modes(ap, adev, &t, 0);
 }
}
