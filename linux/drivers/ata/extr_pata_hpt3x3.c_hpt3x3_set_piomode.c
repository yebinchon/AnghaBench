
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_PIO_0 ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt3x3_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 r1, r2;
 int dn = 2 * ap->port_no + adev->devno;

 pci_read_config_dword(pdev, 0x44, &r1);
 pci_read_config_dword(pdev, 0x48, &r2);

 r1 &= ~(7 << (3 * dn));
 r1 |= (adev->pio_mode - XFER_PIO_0) << (3 * dn);
 r2 &= ~(0x11 << dn);

 pci_write_config_dword(pdev, 0x44, r1);
 pci_write_config_dword(pdev, 0x48, r2);
}
