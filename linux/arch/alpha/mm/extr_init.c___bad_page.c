
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 scalar_t__ EMPTY_PGE ;
 int PAGE_SHARED ;
 int PAGE_SIZE ;
 int memset (void*,int ,int ) ;
 int mk_pte (int ,int ) ;
 int pte_mkdirty (int ) ;
 int virt_to_page (scalar_t__) ;

pte_t
__bad_page(void)
{
 memset((void *) EMPTY_PGE, 0, PAGE_SIZE);
 return pte_mkdirty(mk_pte(virt_to_page(EMPTY_PGE), PAGE_SHARED));
}
