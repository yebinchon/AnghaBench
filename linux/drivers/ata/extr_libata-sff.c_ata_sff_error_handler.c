
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {int flags; } ;
struct TYPE_4__ {int active_tag; } ;
struct ata_port {TYPE_1__* ops; TYPE_2__ link; int lock; } ;
typedef int * ata_reset_fn_t ;
struct TYPE_3__ {int postreset; int prereset; int (* sff_drain_fifo ) (struct ata_queued_cmd*) ;int * hardreset; int * softreset; } ;


 int ATA_QCFLAG_FAILED ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_do_eh (struct ata_port*,int ,int *,int *,int ) ;
 int sata_scr_valid (TYPE_2__*) ;
 int * sata_sff_hardreset ;
 int * sata_std_hardreset ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ata_queued_cmd*) ;

void ata_sff_error_handler(struct ata_port *ap)
{
 ata_reset_fn_t softreset = ap->ops->softreset;
 ata_reset_fn_t hardreset = ap->ops->hardreset;
 struct ata_queued_cmd *qc;
 unsigned long flags;

 qc = __ata_qc_from_tag(ap, ap->link.active_tag);
 if (qc && !(qc->flags & ATA_QCFLAG_FAILED))
  qc = ((void*)0);

 spin_lock_irqsave(ap->lock, flags);
 if (ap->ops->sff_drain_fifo)
  ap->ops->sff_drain_fifo(qc);

 spin_unlock_irqrestore(ap->lock, flags);


 if ((hardreset == sata_std_hardreset ||
      hardreset == sata_sff_hardreset) && !sata_scr_valid(&ap->link))
  hardreset = ((void*)0);

 ata_do_eh(ap, ap->ops->prereset, softreset, hardreset,
    ap->ops->postreset);
}
