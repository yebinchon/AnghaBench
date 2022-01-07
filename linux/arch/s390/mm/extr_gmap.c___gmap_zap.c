
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int mm; int guest_to_host; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 unsigned long PMD_MASK ;
 unsigned long PMD_SHIFT ;
 int * get_locked_pte (int ,unsigned long,int **) ;
 scalar_t__ likely (int *) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_zap_unused (int ,unsigned long,int *,int ) ;
 scalar_t__ radix_tree_lookup (int *,unsigned long) ;

void __gmap_zap(struct gmap *gmap, unsigned long gaddr)
{
 unsigned long vmaddr;
 spinlock_t *ptl;
 pte_t *ptep;


 vmaddr = (unsigned long) radix_tree_lookup(&gmap->guest_to_host,
         gaddr >> PMD_SHIFT);
 if (vmaddr) {
  vmaddr |= gaddr & ~PMD_MASK;

  ptep = get_locked_pte(gmap->mm, vmaddr, &ptl);
  if (likely(ptep))
   ptep_zap_unused(gmap->mm, vmaddr, ptep, 0);
  pte_unmap_unlock(ptep, ptl);
 }
}
