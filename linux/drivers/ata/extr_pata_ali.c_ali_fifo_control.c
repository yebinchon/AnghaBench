
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_fifo_control(struct ata_port *ap, struct ata_device *adev, int on)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int pio_fifo = 0x54 + ap->port_no;
 u8 fifo;
 int shift = 4 * adev->devno;





 pci_read_config_byte(pdev, pio_fifo, &fifo);
 fifo &= ~(0x0F << shift);
 fifo |= (on << shift);
 pci_write_config_byte(pdev, pio_fifo, fifo);
}
