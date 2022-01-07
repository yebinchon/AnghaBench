
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int GFP_KERNEL ;
 int _KERNPG_TABLE ;
 int __pa (int *) ;
 int __pud (int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int set_pud (int *,int ) ;

__attribute__((used)) static int alloc_pmd_page(pud_t *pud)
{
 pmd_t *pmd = (pmd_t *)get_zeroed_page(GFP_KERNEL);
 if (!pmd)
  return -1;

 set_pud(pud, __pud(__pa(pmd) | _KERNPG_TABLE));
 return 0;
}
