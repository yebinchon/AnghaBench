
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int MRDMODE_INTR_CH0 ;
 int MRDMODE_INTR_CH1 ;
 int ata_bmdma_irq_clear (struct ata_port*) ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd648_sff_irq_clear(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 unsigned long base = pci_resource_start(pdev, 4);
 int irq_mask = ap->port_no ? MRDMODE_INTR_CH1 : MRDMODE_INTR_CH0;
 u8 mrdmode;

 ata_bmdma_irq_clear(ap);


 mrdmode = inb(base + 1);
 mrdmode &= ~(MRDMODE_INTR_CH0 | MRDMODE_INTR_CH1);
 outb(mrdmode | irq_mask, base + 1);
}
