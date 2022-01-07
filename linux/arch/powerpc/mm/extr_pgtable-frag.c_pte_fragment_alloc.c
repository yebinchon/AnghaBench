
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int * __alloc_for_ptecache (struct mm_struct*,int) ;
 int * get_pte_from_cache (struct mm_struct*) ;

pte_t *pte_fragment_alloc(struct mm_struct *mm, int kernel)
{
 pte_t *pte;

 pte = get_pte_from_cache(mm);
 if (pte)
  return pte;

 return __alloc_for_ptecache(mm, kernel);
}
