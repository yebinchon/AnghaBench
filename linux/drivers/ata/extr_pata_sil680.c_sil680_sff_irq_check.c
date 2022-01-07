
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int pci_read_config_byte (struct pci_dev*,unsigned long,int*) ;
 unsigned long sil680_selreg (struct ata_port*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static bool sil680_sff_irq_check(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned long addr = sil680_selreg(ap, 1);
 u8 val;

 pci_read_config_byte(pdev, addr, &val);

 return val & 0x08;
}
