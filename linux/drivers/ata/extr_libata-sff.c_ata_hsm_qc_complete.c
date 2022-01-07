
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int err_mask; int tag; struct ata_port* ap; } ;
struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ error_handler; } ;


 int AC_ERR_HSM ;
 int ata_port_freeze (struct ata_port*) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_sff_irq_on (struct ata_port*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void ata_hsm_qc_complete(struct ata_queued_cmd *qc, int in_wq)
{
 struct ata_port *ap = qc->ap;

 if (ap->ops->error_handler) {
  if (in_wq) {



   qc = ata_qc_from_tag(ap, qc->tag);
   if (qc) {
    if (likely(!(qc->err_mask & AC_ERR_HSM))) {
     ata_sff_irq_on(ap);
     ata_qc_complete(qc);
    } else
     ata_port_freeze(ap);
   }
  } else {
   if (likely(!(qc->err_mask & AC_ERR_HSM)))
    ata_qc_complete(qc);
   else
    ata_port_freeze(ap);
  }
 } else {
  if (in_wq) {
   ata_sff_irq_on(ap);
   ata_qc_complete(qc);
  } else
   ata_qc_complete(qc);
 }
}
