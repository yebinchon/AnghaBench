
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int PTRS_PER_PMD ;
 int free_page (unsigned long) ;
 int pmd_none (int ) ;

__attribute__((used)) static bool try_to_free_pmd_page(pmd_t *pmd)
{
 int i;

 for (i = 0; i < PTRS_PER_PMD; i++)
  if (!pmd_none(pmd[i]))
   return 0;

 free_page((unsigned long)pmd);
 return 1;
}
