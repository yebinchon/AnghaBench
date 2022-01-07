
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gmap {int guest_table_lock; TYPE_2__* mm; } ;
typedef int pmd_t ;
struct TYPE_3__ {int allow_gmap_hpage_1m; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int BUG_ON (int ) ;
 int gmap_is_shadow (struct gmap*) ;
 scalar_t__ gmap_table_walk (struct gmap*,unsigned long,int) ;
 int pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline pmd_t *gmap_pmd_op_walk(struct gmap *gmap, unsigned long gaddr)
{
 pmd_t *pmdp;

 BUG_ON(gmap_is_shadow(gmap));
 pmdp = (pmd_t *) gmap_table_walk(gmap, gaddr, 1);
 if (!pmdp)
  return ((void*)0);


 if (!gmap->mm->context.allow_gmap_hpage_1m)
  return pmd_none(*pmdp) ? ((void*)0) : pmdp;

 spin_lock(&gmap->guest_table_lock);
 if (pmd_none(*pmdp)) {
  spin_unlock(&gmap->guest_table_lock);
  return ((void*)0);
 }


 if (!pmd_large(*pmdp))
  spin_unlock(&gmap->guest_table_lock);
 return pmdp;
}
