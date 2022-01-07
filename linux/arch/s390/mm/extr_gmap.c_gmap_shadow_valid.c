
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {unsigned long orig_asce; int edat_level; scalar_t__ removed; } ;



int gmap_shadow_valid(struct gmap *sg, unsigned long asce, int edat_level)
{
 if (sg->removed)
  return 0;
 return sg->orig_asce == asce && sg->edat_level == edat_level;
}
