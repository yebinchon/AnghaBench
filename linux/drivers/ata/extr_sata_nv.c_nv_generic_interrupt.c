
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct TYPE_4__ {int active_tag; } ;
struct ata_port {TYPE_3__* ops; TYPE_1__ link; } ;
struct ata_host {unsigned int n_ports; int lock; struct ata_port** ports; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int (* sff_check_status ) (struct ata_port*) ;} ;


 int ATA_TFLAG_POLLING ;
 int IRQ_RETVAL (unsigned int) ;
 scalar_t__ ata_bmdma_port_intr (struct ata_port*,struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static irqreturn_t nv_generic_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 unsigned int i;
 unsigned int handled = 0;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  struct ata_queued_cmd *qc;

  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if (qc && (!(qc->tf.flags & ATA_TFLAG_POLLING))) {
   handled += ata_bmdma_port_intr(ap, qc);
  } else {




   ap->ops->sff_check_status(ap);
  }
 }

 spin_unlock_irqrestore(&host->lock, flags);

 return IRQ_RETVAL(handled);
}
