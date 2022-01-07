
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_PIO_0 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int const) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 scalar_t__ serverworks_is_csb (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void serverworks_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static const u8 pio_mode[] = { 0x5d, 0x47, 0x34, 0x22, 0x20 };
 int offset = 1 + 2 * ap->port_no - adev->devno;
 int devbits = (2 * ap->port_no + adev->devno) * 4;
 u16 csb5_pio;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int pio = adev->pio_mode - XFER_PIO_0;

 pci_write_config_byte(pdev, 0x40 + offset, pio_mode[pio]);



 if (serverworks_is_csb(pdev)) {
  pci_read_config_word(pdev, 0x4A, &csb5_pio);
  csb5_pio &= ~(0x0F << devbits);
  pci_write_config_word(pdev, 0x4A, csb5_pio | (pio << devbits));
 }
}
