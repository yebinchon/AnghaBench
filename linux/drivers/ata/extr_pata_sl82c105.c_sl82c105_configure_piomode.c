
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int dev; } ;


 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sl82c105_configure_piomode(struct ata_port *ap, struct ata_device *adev, int pio)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 static u16 pio_timing[5] = {
  0x50D, 0x407, 0x304, 0x242, 0x240
 };
 u16 dummy;
 int timing = 0x44 + (8 * ap->port_no) + (4 * adev->devno);

 pci_write_config_word(pdev, timing, pio_timing[pio]);

 pci_read_config_word(pdev, timing, &dummy);
}
