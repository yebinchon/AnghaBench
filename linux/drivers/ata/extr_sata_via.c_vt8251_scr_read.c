
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int device; } ;
struct ata_link {int pmp; TYPE_2__* ap; } ;
struct TYPE_4__ {int port_no; TYPE_1__* host; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;



 int WARN_ON (int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int vt8251_scr_read(struct ata_link *link, unsigned int scr, u32 *val)
{
 static const u8 ipm_tbl[] = { 1, 2, 6, 0 };
 struct pci_dev *pdev = to_pci_dev(link->ap->host->dev);
 int slot = 2 * link->ap->port_no + link->pmp;
 u32 v = 0;
 u8 raw;

 switch (scr) {
 case 128:
  pci_read_config_byte(pdev, 0xA0 + slot, &raw);


  v |= raw & 0x03;


  if (raw & (1 << 4))
   v |= 0x02 << 4;
  else
   v |= 0x01 << 4;


  v |= ipm_tbl[(raw >> 2) & 0x3];
  break;

 case 129:

  WARN_ON(pdev->device != 0x5287);
  pci_read_config_dword(pdev, 0xB0 + slot * 4, &v);
  break;

 case 130:
  pci_read_config_byte(pdev, 0xA4 + slot, &raw);


  v |= ((raw & 0x02) << 1) | (raw & 0x01);


  v |= ((raw >> 2) & 0x03) << 8;
  break;

 default:
  return -EINVAL;
 }

 *val = v;
 return 0;
}
