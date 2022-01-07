
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int tag; int hw_tag; struct ata_device* dev; struct ata_port* ap; int * scsicmd; } ;
struct ata_port {int pflags; int flags; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_FLAG_SAS_HOST ;
 int ATA_PFLAG_FROZEN ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int) ;
 int ata_qc_reinit (struct ata_queued_cmd*) ;
 int ata_sas_allocate_tag (struct ata_port*) ;
 scalar_t__ unlikely (int) ;

struct ata_queued_cmd *ata_qc_new_init(struct ata_device *dev, int tag)
{
 struct ata_port *ap = dev->link->ap;
 struct ata_queued_cmd *qc;


 if (unlikely(ap->pflags & ATA_PFLAG_FROZEN))
  return ((void*)0);


 if (ap->flags & ATA_FLAG_SAS_HOST) {
  tag = ata_sas_allocate_tag(ap);
  if (tag < 0)
   return ((void*)0);
 }

 qc = __ata_qc_from_tag(ap, tag);
 qc->tag = qc->hw_tag = tag;
 qc->scsicmd = ((void*)0);
 qc->ap = ap;
 qc->dev = dev;

 ata_qc_reinit(qc);

 return qc;
}
