
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; struct ata_port* ap; } ;
struct ata_port {int dev; int hsm_task_state; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_tf_load ) (struct ata_port*,TYPE_2__*) ;} ;




 int ATA_TFLAG_POLLING ;
 int BUG () ;
 int HSM_ST_LAST ;
 int WARN_ON (int) ;
 unsigned int ata_sff_qc_issue (struct ata_queued_cmd*) ;
 int dev_err (int ,char*) ;
 int octeon_cf_dma_setup (struct ata_queued_cmd*) ;
 int octeon_cf_dma_start (struct ata_queued_cmd*) ;
 int stub1 (struct ata_port*,TYPE_2__*) ;

__attribute__((used)) static unsigned int octeon_cf_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;

 switch (qc->tf.protocol) {
 case 128:
  WARN_ON(qc->tf.flags & ATA_TFLAG_POLLING);

  ap->ops->sff_tf_load(ap, &qc->tf);
  octeon_cf_dma_setup(qc);
  octeon_cf_dma_start(qc);
  ap->hsm_task_state = HSM_ST_LAST;
  break;

 case 129:
  dev_err(ap->dev, "Error, ATAPI not supported\n");
  BUG();

 default:
  return ata_sff_qc_issue(qc);
 }

 return 0;
}
