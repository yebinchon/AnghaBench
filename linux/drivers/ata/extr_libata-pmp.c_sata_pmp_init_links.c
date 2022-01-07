
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {struct ata_link* pmp_link; } ;
struct TYPE_2__ {int action; int probe_mask; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {scalar_t__ flags; struct ata_eh_context eh_context; } ;
typedef int pmp_link ;


 int ATA_ALL_DEVICES ;
 int ATA_EH_RESET ;
 int ENOMEM ;
 int GFP_NOIO ;
 int SATA_PMP_MAX_PORTS ;
 int ata_link_init (struct ata_port*,struct ata_link*,int) ;
 int ata_tlink_add (struct ata_link*) ;
 int ata_tlink_delete (struct ata_link*) ;
 struct ata_link* kcalloc (int,int,int ) ;
 int kfree (struct ata_link*) ;

__attribute__((used)) static int sata_pmp_init_links (struct ata_port *ap, int nr_ports)
{
 struct ata_link *pmp_link = ap->pmp_link;
 int i, err;

 if (!pmp_link) {
  pmp_link = kcalloc(SATA_PMP_MAX_PORTS, sizeof(pmp_link[0]),
       GFP_NOIO);
  if (!pmp_link)
   return -ENOMEM;

  for (i = 0; i < SATA_PMP_MAX_PORTS; i++)
   ata_link_init(ap, &pmp_link[i], i);

  ap->pmp_link = pmp_link;

  for (i = 0; i < SATA_PMP_MAX_PORTS; i++) {
   err = ata_tlink_add(&pmp_link[i]);
   if (err) {
    goto err_tlink;
   }
  }
 }

 for (i = 0; i < nr_ports; i++) {
  struct ata_link *link = &pmp_link[i];
  struct ata_eh_context *ehc = &link->eh_context;

  link->flags = 0;
  ehc->i.probe_mask |= ATA_ALL_DEVICES;
  ehc->i.action |= ATA_EH_RESET;
 }

 return 0;
  err_tlink:
 while (--i >= 0)
  ata_tlink_delete(&pmp_link[i]);
 kfree(pmp_link);
 ap->pmp_link = ((void*)0);
 return err;
}
