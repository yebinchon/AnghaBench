
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_6__ {int imask; } ;
struct TYPE_4__ {int control; } ;
struct TYPE_5__ {TYPE_1__ pci; } ;


 int CRIME_IRQ_BASE ;
 int MACEPCI_CONTROL_INT (int) ;
 int MACEPCI_SCSI0_IRQ ;
 TYPE_3__* crime ;
 int crime_mask ;
 TYPE_2__* mace ;
 int macepci_mask ;

__attribute__((used)) static void enable_macepci_irq(struct irq_data *d)
{
 macepci_mask |= MACEPCI_CONTROL_INT(d->irq - MACEPCI_SCSI0_IRQ);
 mace->pci.control = macepci_mask;
 crime_mask |= 1 << (d->irq - CRIME_IRQ_BASE);
 crime->imask = crime_mask;
}
