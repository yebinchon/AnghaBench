
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_P9_TLBIE_ERAT_BUG ;
 int CPU_FTR_P9_TLBIE_STQ_BUG ;
 int MMU_PAGE_64K ;
 int RIC_FLUSH_TLB ;
 int __tlbie_lpid (int ,int ) ;
 int __tlbie_lpid_va (unsigned long,unsigned long,int ,int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 int mmu_get_ap (int ) ;

__attribute__((used)) static inline void fixup_tlbie_lpid(unsigned long lpid)
{




 unsigned long va = ((1UL << 52) - 1);

 if (cpu_has_feature(CPU_FTR_P9_TLBIE_ERAT_BUG)) {
  asm volatile("ptesync": : :"memory");
  __tlbie_lpid(0, RIC_FLUSH_TLB);
 }

 if (cpu_has_feature(CPU_FTR_P9_TLBIE_STQ_BUG)) {
  asm volatile("ptesync": : :"memory");
  __tlbie_lpid_va(va, lpid, mmu_get_ap(MMU_PAGE_64K), RIC_FLUSH_TLB);
 }
}
