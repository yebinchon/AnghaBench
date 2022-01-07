
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdt_domain {TYPE_3__* plr; } ;
struct TYPE_6__ {unsigned long cbm; TYPE_2__* r; } ;
struct TYPE_4__ {unsigned int cbm_len; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;


 scalar_t__ bitmap_intersects (unsigned long*,unsigned long*,unsigned int) ;

bool rdtgroup_cbm_overlaps_pseudo_locked(struct rdt_domain *d, unsigned long cbm)
{
 unsigned int cbm_len;
 unsigned long cbm_b;

 if (d->plr) {
  cbm_len = d->plr->r->cache.cbm_len;
  cbm_b = d->plr->cbm;
  if (bitmap_intersects(&cbm, &cbm_b, cbm_len))
   return 1;
 }
 return 0;
}
