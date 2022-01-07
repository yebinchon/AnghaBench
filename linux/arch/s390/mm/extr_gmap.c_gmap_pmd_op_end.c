
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int guest_table_lock; } ;
typedef int pmd_t ;


 scalar_t__ pmd_large (int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void gmap_pmd_op_end(struct gmap *gmap, pmd_t *pmdp)
{
 if (pmd_large(*pmdp))
  spin_unlock(&gmap->guest_table_lock);
}
