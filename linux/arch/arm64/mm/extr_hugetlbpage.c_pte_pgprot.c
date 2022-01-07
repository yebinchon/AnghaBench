
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgprot_t ;


 int __pgprot (int) ;
 int pfn_pte (unsigned long,int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_val (int ) ;

__attribute__((used)) static inline pgprot_t pte_pgprot(pte_t pte)
{
 unsigned long pfn = pte_pfn(pte);

 return __pgprot(pte_val(pfn_pte(pfn, __pgprot(0))) ^ pte_val(pte));
}
