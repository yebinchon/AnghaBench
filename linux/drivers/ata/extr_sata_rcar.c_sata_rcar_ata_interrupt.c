
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int dummy; } ;
struct TYPE_2__ {int active_tag; } ;
struct ata_port {TYPE_1__ link; } ;


 int ata_bmdma_port_intr (struct ata_port*,struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int sata_rcar_check_status (struct ata_port*) ;

__attribute__((used)) static void sata_rcar_ata_interrupt(struct ata_port *ap)
{
 struct ata_queued_cmd *qc;
 int handled = 0;

 qc = ata_qc_from_tag(ap, ap->link.active_tag);
 if (qc)
  handled |= ata_bmdma_port_intr(ap, qc);


 if (!handled)
  sata_rcar_check_status(ap);
}
