
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; void* cbl; TYPE_1__* host; } ;
struct ata_link {struct ata_port* ap; } ;
typedef int port_type ;
struct TYPE_2__ {int dev; } ;


 void* ATA_CBL_PATA40 ;
 void* ATA_CBL_PATA80 ;
 void* ATA_CBL_SATA ;
 int ENOENT ;



 int ata_sff_prereset (struct ata_link*,unsigned long) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int jmicron_pre_reset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 control;
 u32 control5;
 int port_mask = 1<< (4 * ap->port_no);
 int port = ap->port_no;
 port_type port_map[2];


 pci_read_config_dword(pdev, 0x40, &control);
 if ((control & port_mask) == 0)
  return -ENOENT;




 if (control & (1 << 23)) {
  port_map[0] = 128;
  port_map[1] = 130;
 } else {
  port_map[0] = 128;
  port_map[1] = 128;
 }



 pci_read_config_dword(pdev, 0x80, &control5);
 if (control5 & (1<<24))
  port_map[0] = 129;


 if (control & (1 << 22))
  port = port ^ 1;






 switch (port_map[port]) {
 case 130:
  if ((control & (1 << 5)) == 0)
   return -ENOENT;
  if (control & (1 << 3))
   ap->cbl = ATA_CBL_PATA40;
  else
   ap->cbl = ATA_CBL_PATA80;
  break;
 case 129:

  if ((control5 & (1 << 21)) == 0)
   return -ENOENT;
  if (control5 & (1 << 19))
   ap->cbl = ATA_CBL_PATA40;
  else
   ap->cbl = ATA_CBL_PATA80;
  break;
 case 128:
  ap->cbl = ATA_CBL_SATA;
  break;
 }
 return ata_sff_prereset(link, deadline);
}
