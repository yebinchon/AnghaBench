
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int dev; } ;


 int dev_dbg (int *,char*,int,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_warn (int *,char*) ;
 int pci_read_config_byte (struct pci_dev*,int ,scalar_t__*) ;
 int pcibios_last_bus ;
 int pcibios_scan_root (scalar_t__) ;

__attribute__((used)) static void pci_fixup_i450nx(struct pci_dev *d)
{



 int pxb, reg;
 u8 busno, suba, subb;

 dev_warn(&d->dev, "Searching for i450NX host bridges\n");
 reg = 0xd0;
 for(pxb = 0; pxb < 2; pxb++) {
  pci_read_config_byte(d, reg++, &busno);
  pci_read_config_byte(d, reg++, &suba);
  pci_read_config_byte(d, reg++, &subb);
  dev_dbg(&d->dev, "i450NX PXB %d: %02x/%02x/%02x\n", pxb, busno,
   suba, subb);
  if (busno)
   pcibios_scan_root(busno);
  if (suba < subb)
   pcibios_scan_root(suba+1);
 }
 pcibios_last_bus = -1;
}
