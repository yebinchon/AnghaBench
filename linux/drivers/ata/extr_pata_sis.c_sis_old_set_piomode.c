
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_PIO_0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int sis_old_port_base (struct ata_device*) ;
 int sis_set_fifo (struct ata_port*,struct ata_device*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_old_set_piomode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = sis_old_port_base(adev);
 u8 t1, t2;
 int speed = adev->pio_mode - XFER_PIO_0;

 static const u8 active[] = { 0x00, 0x07, 0x04, 0x03, 0x01 };
 static const u8 recovery[] = { 0x00, 0x06, 0x04, 0x03, 0x03 };

 sis_set_fifo(ap, adev);

 pci_read_config_byte(pdev, port, &t1);
 pci_read_config_byte(pdev, port + 1, &t2);

 t1 &= ~0x0F;
 t2 &= ~0x07;

 t1 |= active[speed];
 t2 |= recovery[speed];

 pci_write_config_byte(pdev, port, t1);
 pci_write_config_byte(pdev, port + 1, t2);
}
