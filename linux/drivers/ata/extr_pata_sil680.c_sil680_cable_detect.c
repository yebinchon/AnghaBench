
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int pci_read_config_byte (struct pci_dev*,unsigned long,int*) ;
 unsigned long sil680_selreg (struct ata_port*,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sil680_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned long addr = sil680_selreg(ap, 0);
 u8 ata66;
 pci_read_config_byte(pdev, addr, &ata66);
 if (ata66 & 1)
  return ATA_CBL_PATA80;
 else
  return ATA_CBL_PATA40;
}
