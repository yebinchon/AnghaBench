
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ARTTIM23 ;
 int CFR ;
 int ata_bmdma_irq_clear (struct ata_port*) ;
 int pci_read_config_byte (struct pci_dev*,int,int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd64x_sff_irq_clear(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int irq_reg = ap->port_no ? ARTTIM23 : CFR;
 u8 irq_stat;

 ata_bmdma_irq_clear(ap);


 pci_read_config_byte(pdev, irq_reg, &irq_stat);
}
