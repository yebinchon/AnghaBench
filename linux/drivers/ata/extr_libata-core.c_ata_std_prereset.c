
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int flags; } ;
struct TYPE_2__ {int action; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {struct ata_eh_context eh_context; struct ata_port* ap; } ;


 int ATA_EH_HARDRESET ;
 int ATA_EH_SOFTRESET ;
 int ATA_FLAG_SATA ;
 int EOPNOTSUPP ;
 int ata_link_warn (struct ata_link*,char*,int) ;
 scalar_t__ ata_phys_link_offline (struct ata_link*) ;
 unsigned long* sata_ehc_deb_timing (struct ata_eh_context*) ;
 int sata_link_resume (struct ata_link*,unsigned long const*,unsigned long) ;

int ata_std_prereset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &link->eh_context;
 const unsigned long *timing = sata_ehc_deb_timing(ehc);
 int rc;


 if (ehc->i.action & ATA_EH_HARDRESET)
  return 0;


 if (ap->flags & ATA_FLAG_SATA) {
  rc = sata_link_resume(link, timing, deadline);

  if (rc && rc != -EOPNOTSUPP)
   ata_link_warn(link,
          "failed to resume link for reset (errno=%d)\n",
          rc);
 }


 if (ata_phys_link_offline(link))
  ehc->i.action &= ~ATA_EH_SOFTRESET;

 return 0;
}
