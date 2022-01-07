
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {unsigned int pio_mode; scalar_t__ class; scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 unsigned int XFER_PIO_0 ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,unsigned int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,unsigned int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it8213_set_piomode (struct ata_port *ap, struct ata_device *adev)
{
 unsigned int pio = adev->pio_mode - XFER_PIO_0;
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 unsigned int master_port = ap->port_no ? 0x42 : 0x40;
 u16 master_data;
 int control = 0;






 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };

 if (pio > 1)
  control |= 1;
 if (ata_pio_need_iordy(adev))
  control |= 2;

 if (adev->class != ATA_DEV_ATA)
  control |= 4;

 pci_read_config_word(dev, master_port, &master_data);


 if (adev->devno == 0) {
  master_data &= 0xCCF0;
  master_data |= control;
  master_data |= (timings[pio][0] << 12) |
   (timings[pio][1] << 8);
 } else {
  u8 slave_data;

  master_data &= 0xFF0F;
  master_data |= (control << 4);


  pci_read_config_byte(dev, 0x44, &slave_data);
  slave_data &= 0xF0;
  slave_data |= (timings[pio][0] << 2) | timings[pio][1];
  pci_write_config_byte(dev, 0x44, slave_data);
 }

 master_data |= 0x4000;
 pci_write_config_word(dev, master_port, master_data);
}
