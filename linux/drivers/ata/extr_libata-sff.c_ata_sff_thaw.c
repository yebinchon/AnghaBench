
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sff_irq_clear ) (struct ata_port*) ;int (* sff_check_status ) (struct ata_port*) ;} ;


 int ata_sff_irq_on (struct ata_port*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_port*) ;

void ata_sff_thaw(struct ata_port *ap)
{

 ap->ops->sff_check_status(ap);
 if (ap->ops->sff_irq_clear)
  ap->ops->sff_irq_clear(ap);
 ata_sff_irq_on(ap);
}
