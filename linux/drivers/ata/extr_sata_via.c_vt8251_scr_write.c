
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int device; } ;
struct ata_link {int pmp; TYPE_2__* ap; } ;
struct TYPE_4__ {int port_no; TYPE_1__* host; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;


 int WARN_ON (int) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int vt8251_scr_write(struct ata_link *link, unsigned int scr, u32 val)
{
 struct pci_dev *pdev = to_pci_dev(link->ap->host->dev);
 int slot = 2 * link->ap->port_no + link->pmp;
 u32 v = 0;

 switch (scr) {
 case 128:

  WARN_ON(pdev->device != 0x5287);
  pci_write_config_dword(pdev, 0xB0 + slot * 4, val);
  return 0;

 case 129:

  v |= ((val & 0x4) >> 1) | (val & 0x1);


  v |= ((val >> 8) & 0x3) << 2;

  pci_write_config_byte(pdev, 0xA4 + slot, v);
  return 0;

 default:
  return -EINVAL;
 }
}
