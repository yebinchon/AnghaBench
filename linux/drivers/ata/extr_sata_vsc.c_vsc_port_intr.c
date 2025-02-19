
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {TYPE_3__ tf; } ;
struct TYPE_5__ {int active_tag; } ;
struct ata_port {TYPE_1__* ops; TYPE_2__ link; } ;
struct TYPE_4__ {int (* sff_check_status ) (struct ata_port*) ;} ;


 int ATA_TFLAG_POLLING ;
 int VSC_SATA_INT_ERROR ;
 int ata_bmdma_port_intr (struct ata_port*,struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 scalar_t__ likely (int) ;
 int stub1 (struct ata_port*) ;
 scalar_t__ unlikely (int) ;
 int vsc_error_intr (int,struct ata_port*) ;

__attribute__((used)) static void vsc_port_intr(u8 port_status, struct ata_port *ap)
{
 struct ata_queued_cmd *qc;
 int handled = 0;

 if (unlikely(port_status & VSC_SATA_INT_ERROR)) {
  vsc_error_intr(port_status, ap);
  return;
 }

 qc = ata_qc_from_tag(ap, ap->link.active_tag);
 if (qc && likely(!(qc->tf.flags & ATA_TFLAG_POLLING)))
  handled = ata_bmdma_port_intr(ap, qc);






 if (unlikely(!handled))
  ap->ops->sff_check_status(ap);
}
