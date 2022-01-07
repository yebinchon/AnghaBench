
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_link {int sata_spd_limit; int sata_spd; TYPE_1__* ap; } ;
struct TYPE_2__ {struct ata_link link; } ;


 int UINT_MAX ;
 int ata_is_host_link (struct ata_link*) ;
 int fls (int) ;

__attribute__((used)) static int __sata_set_spd_needed(struct ata_link *link, u32 *scontrol)
{
 struct ata_link *host_link = &link->ap->link;
 u32 limit, target, spd;

 limit = link->sata_spd_limit;





 if (!ata_is_host_link(link) && host_link->sata_spd)
  limit &= (1 << host_link->sata_spd) - 1;

 if (limit == UINT_MAX)
  target = 0;
 else
  target = fls(limit);

 spd = (*scontrol >> 4) & 0xf;
 *scontrol = (*scontrol & ~0xf0) | ((target & 0xf) << 4);

 return spd != target;
}
