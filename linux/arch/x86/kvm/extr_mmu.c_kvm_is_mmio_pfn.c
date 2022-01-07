
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kvm_pfn_t ;


 int E820_TYPE_RAM ;
 scalar_t__ PageReserved (int ) ;
 int e820__mapped_raw_any (scalar_t__,scalar_t__,int ) ;
 int is_zero_pfn (scalar_t__) ;
 int pat_enabled () ;
 scalar_t__ pat_pfn_immune_to_uc_mtrr (scalar_t__) ;
 scalar_t__ pfn_to_hpa (scalar_t__) ;
 int pfn_to_page (scalar_t__) ;
 scalar_t__ pfn_valid (scalar_t__) ;

__attribute__((used)) static bool kvm_is_mmio_pfn(kvm_pfn_t pfn)
{
 if (pfn_valid(pfn))
  return !is_zero_pfn(pfn) && PageReserved(pfn_to_page(pfn)) &&
   (!pat_enabled() || pat_pfn_immune_to_uc_mtrr(pfn));

 return !e820__mapped_raw_any(pfn_to_hpa(pfn),
         pfn_to_hpa(pfn + 1) - 1,
         E820_TYPE_RAM);
}
