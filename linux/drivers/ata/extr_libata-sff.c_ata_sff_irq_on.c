
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_ioports {scalar_t__ ctl_addr; } ;
struct ata_port {TYPE_1__* ops; int ctl; int last_ctl; struct ata_ioports ioaddr; } ;
struct TYPE_2__ {int (* sff_irq_clear ) (struct ata_port*) ;scalar_t__ sff_set_devctl; int (* sff_irq_on ) (struct ata_port*) ;} ;


 int ATA_NIEN ;
 int ata_sff_set_devctl (struct ata_port*,int ) ;
 int ata_wait_idle (struct ata_port*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

void ata_sff_irq_on(struct ata_port *ap)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 if (ap->ops->sff_irq_on) {
  ap->ops->sff_irq_on(ap);
  return;
 }

 ap->ctl &= ~ATA_NIEN;
 ap->last_ctl = ap->ctl;

 if (ap->ops->sff_set_devctl || ioaddr->ctl_addr)
  ata_sff_set_devctl(ap, ap->ctl);
 ata_wait_idle(ap);

 if (ap->ops->sff_irq_clear)
  ap->ops->sff_irq_clear(ap);
}
