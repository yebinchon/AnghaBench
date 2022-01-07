
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_link {int pmp; int hw_sata_spd_limit; int flags; TYPE_1__* ap; } ;
struct TYPE_4__ {int spd_limit; int lflags; int name; } ;
struct ata_force_ent {int port; int device; TYPE_2__ param; } ;
struct TYPE_3__ {int print_id; } ;


 struct ata_force_ent* ata_force_tbl ;
 int ata_force_tbl_size ;
 scalar_t__ ata_is_host_link (struct ata_link*) ;
 int ata_link_notice (struct ata_link*,char*,int,...) ;

__attribute__((used)) static void ata_force_link_limits(struct ata_link *link)
{
 bool did_spd = 0;
 int linkno = link->pmp;
 int i;

 if (ata_is_host_link(link))
  linkno += 15;

 for (i = ata_force_tbl_size - 1; i >= 0; i--) {
  const struct ata_force_ent *fe = &ata_force_tbl[i];

  if (fe->port != -1 && fe->port != link->ap->print_id)
   continue;

  if (fe->device != -1 && fe->device != linkno)
   continue;


  if (!did_spd && fe->param.spd_limit) {
   link->hw_sata_spd_limit = (1 << fe->param.spd_limit) - 1;
   ata_link_notice(link, "FORCE: PHY spd limit set to %s\n",
     fe->param.name);
   did_spd = 1;
  }


  if (fe->param.lflags) {
   link->flags |= fe->param.lflags;
   ata_link_notice(link,
     "FORCE: link flag 0x%x forced -> 0x%x\n",
     fe->param.lflags, link->flags);
  }
 }
}
