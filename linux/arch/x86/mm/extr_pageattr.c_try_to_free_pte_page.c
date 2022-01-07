
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int PTRS_PER_PTE ;
 int free_page (unsigned long) ;
 int pte_none (int ) ;

__attribute__((used)) static bool try_to_free_pte_page(pte_t *pte)
{
 int i;

 for (i = 0; i < PTRS_PER_PTE; i++)
  if (!pte_none(pte[i]))
   return 0;

 free_page((unsigned long)pte);
 return 1;
}
