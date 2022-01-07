
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; scalar_t__ udma_mask; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ class; scalar_t__ pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 scalar_t__ XFER_PIO_0 ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,unsigned int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,unsigned int,int) ;
 int piix_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void piix_set_timings(struct ata_port *ap, struct ata_device *adev,
        u8 pio)
{
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 unsigned long flags;
 unsigned int is_slave = (adev->devno != 0);
 unsigned int master_port= ap->port_no ? 0x42 : 0x40;
 unsigned int slave_port = 0x44;
 u16 master_data;
 u8 slave_data;
 u8 udma_enable;
 int control = 0;






 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };

 if (pio >= 2)
  control |= 1;
 if (ata_pio_need_iordy(adev))
  control |= 2;

 if (adev->class == ATA_DEV_ATA)
  control |= 4;




 if (adev->pio_mode < XFER_PIO_0 + pio)

  control |= 8;

 spin_lock_irqsave(&piix_lock, flags);





 pci_read_config_word(dev, master_port, &master_data);
 if (is_slave) {

  master_data &= 0xff0f;

  master_data |= (control << 4);
  pci_read_config_byte(dev, slave_port, &slave_data);
  slave_data &= (ap->port_no ? 0x0f : 0xf0);

  slave_data |= ((timings[pio][0] << 2) | timings[pio][1])
      << (ap->port_no ? 4 : 0);
 } else {

  master_data &= 0xccf0;

  master_data |= control;

  master_data |=
   (timings[pio][0] << 12) |
   (timings[pio][1] << 8);
 }


 master_data |= 0x4000;
 pci_write_config_word(dev, master_port, master_data);
 if (is_slave)
  pci_write_config_byte(dev, slave_port, slave_data);




 if (ap->udma_mask) {
  pci_read_config_byte(dev, 0x48, &udma_enable);
  udma_enable &= ~(1 << (2 * ap->port_no + adev->devno));
  pci_write_config_byte(dev, 0x48, udma_enable);
 }

 spin_unlock_irqrestore(&piix_lock, flags);
}
