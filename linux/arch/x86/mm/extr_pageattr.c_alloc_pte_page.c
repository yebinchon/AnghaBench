
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int GFP_KERNEL ;
 int _KERNPG_TABLE ;
 int __pa (int *) ;
 int __pmd (int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static int alloc_pte_page(pmd_t *pmd)
{
 pte_t *pte = (pte_t *)get_zeroed_page(GFP_KERNEL);
 if (!pte)
  return -1;

 set_pmd(pmd, __pmd(__pa(pte) | _KERNPG_TABLE));
 return 0;
}
