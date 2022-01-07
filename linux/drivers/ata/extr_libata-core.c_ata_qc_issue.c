
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int protocol; } ;
struct ata_queued_cmd {int hw_tag; unsigned long long tag; int err_mask; TYPE_2__* dev; int nbytes; int n_elem; int sg; int flags; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {unsigned long long qc_active; int flags; TYPE_3__* ops; int nr_active_links; } ;
struct TYPE_8__ {int action; } ;
struct ata_link {unsigned long long active_tag; int sactive; TYPE_4__ eh_info; } ;
struct TYPE_7__ {int (* qc_issue ) (struct ata_queued_cmd*) ;int (* qc_prep ) (struct ata_queued_cmd*) ;scalar_t__ error_handler; } ;
struct TYPE_6__ {int flags; struct ata_link* link; } ;


 int AC_ERR_SYSTEM ;
 int ATA_DFLAG_SLEEPING ;
 int ATA_EH_RESET ;
 int ATA_FLAG_PIO_DMA ;
 int ATA_QCFLAG_ACTIVE ;
 int WARN_ON_ONCE (int) ;
 int ata_ehi_push_desc (TYPE_4__*,char*) ;
 scalar_t__ ata_is_data (int ) ;
 scalar_t__ ata_is_dma (int ) ;
 scalar_t__ ata_is_ncq (int ) ;
 scalar_t__ ata_is_pio (int ) ;
 int ata_link_abort (struct ata_link*) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 scalar_t__ ata_sg_setup (struct ata_queued_cmd*) ;
 scalar_t__ ata_tag_valid (unsigned long long) ;
 int stub1 (struct ata_queued_cmd*) ;
 int stub2 (struct ata_queued_cmd*) ;
 int trace_ata_qc_issue (struct ata_queued_cmd*) ;
 scalar_t__ unlikely (int) ;

void ata_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ata_link *link = qc->dev->link;
 u8 prot = qc->tf.protocol;





 WARN_ON_ONCE(ap->ops->error_handler && ata_tag_valid(link->active_tag));

 if (ata_is_ncq(prot)) {
  WARN_ON_ONCE(link->sactive & (1 << qc->hw_tag));

  if (!link->sactive)
   ap->nr_active_links++;
  link->sactive |= 1 << qc->hw_tag;
 } else {
  WARN_ON_ONCE(link->sactive);

  ap->nr_active_links++;
  link->active_tag = qc->tag;
 }

 qc->flags |= ATA_QCFLAG_ACTIVE;
 ap->qc_active |= 1ULL << qc->tag;





 if (ata_is_data(prot) && (!qc->sg || !qc->n_elem || !qc->nbytes))
  goto sys_err;

 if (ata_is_dma(prot) || (ata_is_pio(prot) &&
     (ap->flags & ATA_FLAG_PIO_DMA)))
  if (ata_sg_setup(qc))
   goto sys_err;


 if (unlikely(qc->dev->flags & ATA_DFLAG_SLEEPING)) {
  link->eh_info.action |= ATA_EH_RESET;
  ata_ehi_push_desc(&link->eh_info, "waking up from sleep");
  ata_link_abort(link);
  return;
 }

 ap->ops->qc_prep(qc);
 trace_ata_qc_issue(qc);
 qc->err_mask |= ap->ops->qc_issue(qc);
 if (unlikely(qc->err_mask))
  goto err;
 return;

sys_err:
 qc->err_mask |= AC_ERR_SYSTEM;
err:
 ata_qc_complete(qc);
}
