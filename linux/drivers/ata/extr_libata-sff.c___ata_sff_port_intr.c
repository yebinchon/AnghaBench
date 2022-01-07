
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int protocol; } ;
struct ata_queued_cmd {int err_mask; TYPE_1__* dev; TYPE_3__ tf; } ;
struct ata_port {int hsm_task_state; TYPE_2__* ops; int print_id; } ;
struct TYPE_5__ {int (* sff_irq_clear ) (struct ata_port*) ;} ;
struct TYPE_4__ {int flags; } ;


 int AC_ERR_HSM ;
 int ATA_BUSY ;
 int ATA_DFLAG_CDB_INTR ;
 int HSM_ST_ERR ;


 int VPRINTK (char*,int ,int ,int) ;
 int ata_sff_hsm_move (struct ata_port*,struct ata_queued_cmd*,int,int ) ;
 unsigned int ata_sff_idle_irq (struct ata_port*) ;
 int ata_sff_irq_status (struct ata_port*) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static unsigned int __ata_sff_port_intr(struct ata_port *ap,
     struct ata_queued_cmd *qc,
     bool hsmv_on_idle)
{
 u8 status;

 VPRINTK("ata%u: protocol %d task_state %d\n",
  ap->print_id, qc->tf.protocol, ap->hsm_task_state);


 switch (ap->hsm_task_state) {
 case 129:
  if (!(qc->dev->flags & ATA_DFLAG_CDB_INTR))
   return ata_sff_idle_irq(ap);
  break;
 case 128:
  return ata_sff_idle_irq(ap);
 default:
  break;
 }


 status = ata_sff_irq_status(ap);
 if (status & ATA_BUSY) {
  if (hsmv_on_idle) {

   qc->err_mask |= AC_ERR_HSM;
   ap->hsm_task_state = HSM_ST_ERR;
  } else
   return ata_sff_idle_irq(ap);
 }


 if (ap->ops->sff_irq_clear)
  ap->ops->sff_irq_clear(ap);

 ata_sff_hsm_move(ap, qc, status, 0);

 return 1;
}
