
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int flags; TYPE_1__* ap; } ;
struct TYPE_2__ {int host; } ;


 int ATA_QCFLAG_FAILED ;
 int DPRINTK (char*) ;
 int sata_oxnas_cleanup (int ) ;

__attribute__((used)) static void sata_oxnas_post_internal_cmd(struct ata_queued_cmd *qc)
{
 DPRINTK("ENTER\n");

 if (qc->flags & ATA_QCFLAG_FAILED)
  sata_oxnas_cleanup(qc->ap->host);
}
