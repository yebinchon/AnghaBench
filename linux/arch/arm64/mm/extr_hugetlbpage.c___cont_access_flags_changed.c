
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int huge_ptep_get (int *) ;
 scalar_t__ pte_dirty (int ) ;
 scalar_t__ pte_write (int ) ;
 scalar_t__ pte_young (int ) ;

__attribute__((used)) static int __cont_access_flags_changed(pte_t *ptep, pte_t pte, int ncontig)
{
 int i;

 if (pte_write(pte) != pte_write(huge_ptep_get(ptep)))
  return 1;

 for (i = 0; i < ncontig; i++) {
  pte_t orig_pte = huge_ptep_get(ptep + i);

  if (pte_dirty(pte) != pte_dirty(orig_pte))
   return 1;

  if (pte_young(pte) != pte_young(orig_pte))
   return 1;
 }

 return 0;
}
