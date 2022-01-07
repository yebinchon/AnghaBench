
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int protocol; } ;
struct ata_queued_cmd {TYPE_2__ tf; TYPE_1__* dev; } ;
struct ata_link {int sactive; int active_tag; } ;
struct TYPE_3__ {struct ata_link* link; } ;


 int ATA_DEFER_LINK ;
 scalar_t__ ata_is_ncq (int ) ;
 int ata_tag_valid (int ) ;

int ata_std_qc_defer(struct ata_queued_cmd *qc)
{
 struct ata_link *link = qc->dev->link;

 if (ata_is_ncq(qc->tf.protocol)) {
  if (!ata_tag_valid(link->active_tag))
   return 0;
 } else {
  if (!ata_tag_valid(link->active_tag) && !link->sactive)
   return 0;
 }

 return ATA_DEFER_LINK;
}
