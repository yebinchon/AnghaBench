
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int action; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {struct ata_eh_context eh_context; } ;


 int ATA_EH_HARDRESET ;
 int ENODEV ;
 int ata_link_offline (struct ata_link*) ;
 int ata_link_warn (struct ata_link*,char*,int) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;
 int ata_std_prereset (struct ata_link*,unsigned long) ;

int ata_sff_prereset(struct ata_link *link, unsigned long deadline)
{
 struct ata_eh_context *ehc = &link->eh_context;
 int rc;

 rc = ata_std_prereset(link, deadline);
 if (rc)
  return rc;


 if (ehc->i.action & ATA_EH_HARDRESET)
  return 0;


 if (!ata_link_offline(link)) {
  rc = ata_sff_wait_ready(link, deadline);
  if (rc && rc != -ENODEV) {
   ata_link_warn(link,
          "device not ready (errno=%d), forcing hardreset\n",
          rc);
   ehc->i.action |= ATA_EH_HARDRESET;
  }
 }

 return 0;
}
