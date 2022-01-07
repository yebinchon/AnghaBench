
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int flags; struct ata_port* ap; } ;
struct ata_port {int dummy; } ;


 int ATA_QCFLAG_FAILED ;
 int ahci_kick_engine (struct ata_port*) ;

__attribute__((used)) static void ahci_post_internal_cmd(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;


 if (qc->flags & ATA_QCFLAG_FAILED)
  ahci_kick_engine(ap);
}
