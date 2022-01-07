
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pgprot (int ) ;
 int pfn_pte (unsigned long,int ) ;
 unsigned long pte_pfn (int ) ;

__attribute__((used)) static inline bool is_crashed_pfn_valid(unsigned long pfn)
{
 return pte_pfn(pfn_pte(pfn, __pgprot(0))) == pfn;



}
