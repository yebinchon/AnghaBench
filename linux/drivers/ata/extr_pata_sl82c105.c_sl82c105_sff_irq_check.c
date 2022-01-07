
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int CTRL_IDE_IRQA ;
 int CTRL_IDE_IRQB ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static bool sl82c105_sff_irq_check(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 val, mask = ap->port_no ? CTRL_IDE_IRQB : CTRL_IDE_IRQA;

 pci_read_config_dword(pdev, 0x40, &val);

 return val & mask;
}
