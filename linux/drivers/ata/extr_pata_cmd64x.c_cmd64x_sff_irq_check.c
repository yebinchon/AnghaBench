
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
 int ARTTIM23_INTR_CH1 ;
 int CFR ;
 int CFR_INTR_CH0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static bool cmd64x_sff_irq_check(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int irq_mask = ap->port_no ? ARTTIM23_INTR_CH1 : CFR_INTR_CH0;
 int irq_reg = ap->port_no ? ARTTIM23 : CFR;
 u8 irq_stat;


 pci_read_config_byte(pdev, irq_reg, &irq_stat);

 return irq_stat & irq_mask;
}
