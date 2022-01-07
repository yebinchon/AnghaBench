
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int *) ;
 int pcibios_last_bus ;
 int pcibios_scan_root (int ) ;

__attribute__((used)) static void pci_fixup_i450gx(struct pci_dev *d)
{




 u8 busno;
 pci_read_config_byte(d, 0x4a, &busno);
 dev_info(&d->dev, "i440KX/GX host bridge; secondary bus %02x\n", busno);
 pcibios_scan_root(busno);
 pcibios_last_bus = -1;
}
