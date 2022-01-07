
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; int devno; unsigned int const pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int XFER_MW_DMA_0 ;



 scalar_t__ XFER_UDMA_0 ;
 int min (int,unsigned int) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,scalar_t__) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it8213_set_dmamode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 u16 master_data;
 u8 speed = adev->dma_mode;
 int devid = adev->devno;
 u8 udma_enable;

 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };

 pci_read_config_word(dev, 0x40, &master_data);
 pci_read_config_byte(dev, 0x48, &udma_enable);

 if (speed >= XFER_UDMA_0) {
  unsigned int udma = adev->dma_mode - XFER_UDMA_0;
  u16 udma_timing;
  u16 ideconf;
  int u_clock, u_speed;


  u_speed = min(2 - (udma & 1), udma);
  if (udma > 4)
   u_clock = 0x1000;
  else if (udma > 2)
   u_clock = 1;
  else
   u_clock = 0;

  udma_enable |= (1 << devid);


  pci_read_config_word(dev, 0x4A, &udma_timing);
  udma_timing &= ~(3 << (4 * devid));
  udma_timing |= u_speed << (4 * devid);
  pci_write_config_word(dev, 0x4A, udma_timing);


  pci_read_config_word(dev, 0x54, &ideconf);
  ideconf &= ~(0x1001 << devid);
  ideconf |= u_clock << devid;
  pci_write_config_word(dev, 0x54, ideconf);
 } else {





  unsigned int mwdma = adev->dma_mode - XFER_MW_DMA_0;
  unsigned int control;
  u8 slave_data;
  static const unsigned int needed_pio[3] = {
   130, 129, 128
  };
  int pio = needed_pio[mwdma] - 130;

  control = 3;




  if (adev->pio_mode < needed_pio[mwdma])

   control |= 8;

  if (devid) {
   master_data &= 0xFF4F;
   master_data |= control << 4;
   pci_read_config_byte(dev, 0x44, &slave_data);
   slave_data &= 0xF0;

   slave_data |= ((timings[pio][0] << 2) | timings[pio][1]) << (ap->port_no ? 4 : 0);
   pci_write_config_byte(dev, 0x44, slave_data);
  } else {
   master_data &= 0xCCF4;

   master_data |= control;
   master_data |=
    (timings[pio][0] << 12) |
    (timings[pio][1] << 8);
  }
  udma_enable &= ~(1 << devid);
  pci_write_config_word(dev, 0x40, master_data);
 }
 pci_write_config_byte(dev, 0x48, udma_enable);
}
