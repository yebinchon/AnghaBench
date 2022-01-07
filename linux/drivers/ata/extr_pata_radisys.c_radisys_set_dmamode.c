
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; unsigned int const pio_mode; int devno; scalar_t__ xfer_mode; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int XFER_MW_DMA_0 ;
 unsigned int const XFER_PIO_0 ;
 unsigned int const XFER_PIO_3 ;
 unsigned int const XFER_PIO_4 ;
 scalar_t__ XFER_UDMA_0 ;
 scalar_t__ XFER_UDMA_2 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void radisys_set_dmamode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 u16 idetm_data;
 u8 udma_enable;

 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 1 },
       { 2, 2 },
       { 3, 3 }, };






 pci_read_config_word(dev, 0x40, &idetm_data);
 pci_read_config_byte(dev, 0x48, &udma_enable);

 if (adev->dma_mode < XFER_UDMA_0) {
  unsigned int mwdma = adev->dma_mode - XFER_MW_DMA_0;
  const unsigned int needed_pio[3] = {
   XFER_PIO_0, XFER_PIO_3, XFER_PIO_4
  };
  int pio = needed_pio[mwdma] - XFER_PIO_0;
  int control = 3;




  if (adev->pio_mode < needed_pio[mwdma])
   control = 1;




  idetm_data &= 0xCCCC;
  idetm_data |= control << (4 * adev->devno);
  idetm_data |= (timings[pio][0] << 12) | (timings[pio][1] << 8);

  udma_enable &= ~(1 << adev->devno);
 } else {
  u8 udma_mode;



  pci_read_config_byte(dev, 0x4A, &udma_mode);

  if (adev->xfer_mode == XFER_UDMA_2)
   udma_mode &= ~(2 << (adev->devno * 4));
  else
   udma_mode |= (2 << (adev->devno * 4));

  pci_write_config_byte(dev, 0x4A, udma_mode);

  udma_enable |= (1 << adev->devno);
 }
 pci_write_config_word(dev, 0x40, idetm_data);
 pci_write_config_byte(dev, 0x48, udma_enable);


 ap->private_data = adev;
}
