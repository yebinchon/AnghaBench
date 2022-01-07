
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int inb (unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static bool pdc202xx_irq_check(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned long master = pci_resource_start(pdev, 4);
 u8 sc1d = inb(master + 0x1d);

 if (ap->port_no) {




  return sc1d & 0x40;
 } else {




  return sc1d & 0x04;
 }
}
