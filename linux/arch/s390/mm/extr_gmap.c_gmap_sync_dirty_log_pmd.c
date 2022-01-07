
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int _PAGE_ENTRIES ;
 int bitmap_fill (unsigned long*,int) ;
 int gmap_pmd_op_end (struct gmap*,int *) ;
 int * gmap_pmd_op_walk (struct gmap*,unsigned long) ;
 scalar_t__ gmap_test_and_clear_dirty_pmd (struct gmap*,int *,unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 int * pte_alloc_map_lock (int ,int *,unsigned long,int **) ;
 scalar_t__ ptep_test_and_clear_uc (int ,unsigned long,int *) ;
 int set_bit (int,unsigned long*) ;
 int spin_unlock (int *) ;

void gmap_sync_dirty_log_pmd(struct gmap *gmap, unsigned long bitmap[4],
        unsigned long gaddr, unsigned long vmaddr)
{
 int i;
 pmd_t *pmdp;
 pte_t *ptep;
 spinlock_t *ptl;

 pmdp = gmap_pmd_op_walk(gmap, gaddr);
 if (!pmdp)
  return;

 if (pmd_large(*pmdp)) {
  if (gmap_test_and_clear_dirty_pmd(gmap, pmdp, gaddr))
   bitmap_fill(bitmap, _PAGE_ENTRIES);
 } else {
  for (i = 0; i < _PAGE_ENTRIES; i++, vmaddr += PAGE_SIZE) {
   ptep = pte_alloc_map_lock(gmap->mm, pmdp, vmaddr, &ptl);
   if (!ptep)
    continue;
   if (ptep_test_and_clear_uc(gmap->mm, vmaddr, ptep))
    set_bit(i, bitmap);
   spin_unlock(ptl);
  }
 }
 gmap_pmd_op_end(gmap, pmdp);
}
