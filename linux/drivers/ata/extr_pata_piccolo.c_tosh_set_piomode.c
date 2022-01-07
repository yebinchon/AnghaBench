
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 size_t XFER_PIO_0 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void tosh_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static const u16 pio[6] = {
  0x0566, 0x0433, 0x0311, 0x0201, 0x0200, 0x0100
 };
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u16 conf;
 pci_read_config_word(pdev, 0x50, &conf);
 conf &= 0xE088;
 conf |= pio[adev->pio_mode - XFER_PIO_0];
 pci_write_config_word(pdev, 0x50, conf);
}
