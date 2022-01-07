
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int * __alloc_for_pmdcache (struct mm_struct*) ;
 int * get_pmd_from_cache (struct mm_struct*) ;

pmd_t *pmd_fragment_alloc(struct mm_struct *mm, unsigned long vmaddr)
{
 pmd_t *pmd;

 pmd = get_pmd_from_cache(mm);
 if (pmd)
  return pmd;

 return __alloc_for_pmdcache(mm);
}
