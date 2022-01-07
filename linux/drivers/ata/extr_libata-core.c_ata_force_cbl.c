
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int print_id; scalar_t__ cbl; } ;
struct TYPE_2__ {scalar_t__ cbl; int name; } ;
struct ata_force_ent {int port; TYPE_1__ param; } ;


 scalar_t__ ATA_CBL_NONE ;
 struct ata_force_ent* ata_force_tbl ;
 int ata_force_tbl_size ;
 int ata_port_notice (struct ata_port*,char*,int ) ;

void ata_force_cbl(struct ata_port *ap)
{
 int i;

 for (i = ata_force_tbl_size - 1; i >= 0; i--) {
  const struct ata_force_ent *fe = &ata_force_tbl[i];

  if (fe->port != -1 && fe->port != ap->print_id)
   continue;

  if (fe->param.cbl == ATA_CBL_NONE)
   continue;

  ap->cbl = fe->param.cbl;
  ata_port_notice(ap, "FORCE: cable set to %s\n", fe->param.name);
  return;
 }
}
