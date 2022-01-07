
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int flags; TYPE_1__* dev; } ;
struct ata_port {scalar_t__ nr_active_links; struct ata_link* excl_link; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {struct ata_link* link; } ;


 int ATA_DEFER_PORT ;
 int ATA_QCFLAG_CLEAR_EXCL ;
 scalar_t__ ata_link_active (struct ata_link*) ;
 int ata_std_qc_defer (struct ata_queued_cmd*) ;

int sata_pmp_qc_defer_cmd_switch(struct ata_queued_cmd *qc)
{
 struct ata_link *link = qc->dev->link;
 struct ata_port *ap = link->ap;

 if (ap->excl_link == ((void*)0) || ap->excl_link == link) {
  if (ap->nr_active_links == 0 || ata_link_active(link)) {
   qc->flags |= ATA_QCFLAG_CLEAR_EXCL;
   return ata_std_qc_defer(qc);
  }

  ap->excl_link = link;
 }

 return ATA_DEFER_PORT;
}
