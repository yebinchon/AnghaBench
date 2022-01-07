
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int action; } ;
struct ata_eh_context {TYPE_2__ i; } ;
struct TYPE_3__ {scalar_t__ sactive; struct ata_eh_context eh_context; } ;
struct ata_port {TYPE_1__ link; } ;


 int ATA_EH_RESET ;
 int ata_bmdma_error_handler (struct ata_port*) ;
 int nv_swncq_ncq_stop (struct ata_port*) ;

__attribute__((used)) static void nv_swncq_error_handler(struct ata_port *ap)
{
 struct ata_eh_context *ehc = &ap->link.eh_context;

 if (ap->link.sactive) {
  nv_swncq_ncq_stop(ap);
  ehc->i.action |= ATA_EH_RESET;
 }

 ata_bmdma_error_handler(ap);
}
