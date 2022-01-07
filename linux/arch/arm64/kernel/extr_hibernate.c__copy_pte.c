
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int BUG_ON (int) ;
 int READ_ONCE (int ) ;
 scalar_t__ debug_pagealloc_enabled () ;
 int pfn_valid (int ) ;
 int pte_mkpresent (int ) ;
 int pte_mkwrite (int ) ;
 int pte_none (int ) ;
 int pte_pfn (int ) ;
 scalar_t__ pte_valid (int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
{
 pte_t pte = READ_ONCE(*src_ptep);

 if (pte_valid(pte)) {





  set_pte(dst_ptep, pte_mkwrite(pte));
 } else if (debug_pagealloc_enabled() && !pte_none(pte)) {
  BUG_ON(!pfn_valid(pte_pfn(pte)));

  set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
 }
}
