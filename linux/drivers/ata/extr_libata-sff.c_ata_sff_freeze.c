
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctl_addr; } ;
struct ata_port {TYPE_1__* ops; int ctl; TYPE_2__ ioaddr; int last_ctl; } ;
struct TYPE_3__ {int (* sff_irq_clear ) (struct ata_port*) ;int (* sff_check_status ) (struct ata_port*) ;scalar_t__ sff_set_devctl; } ;


 int ATA_NIEN ;
 int ata_sff_set_devctl (struct ata_port*,int ) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

void ata_sff_freeze(struct ata_port *ap)
{
 ap->ctl |= ATA_NIEN;
 ap->last_ctl = ap->ctl;

 if (ap->ops->sff_set_devctl || ap->ioaddr.ctl_addr)
  ata_sff_set_devctl(ap, ap->ctl);





 ap->ops->sff_check_status(ap);

 if (ap->ops->sff_irq_clear)
  ap->ops->sff_irq_clear(ap);
}
