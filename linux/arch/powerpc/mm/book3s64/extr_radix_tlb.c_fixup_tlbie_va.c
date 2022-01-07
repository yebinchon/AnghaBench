
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_P9_TLBIE_ERAT_BUG ;
 int CPU_FTR_P9_TLBIE_STQ_BUG ;
 int RIC_FLUSH_TLB ;
 int __tlbie_va (unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ cpu_has_feature (int ) ;

__attribute__((used)) static inline void fixup_tlbie_va(unsigned long va, unsigned long pid,
      unsigned long ap)
{
 if (cpu_has_feature(CPU_FTR_P9_TLBIE_ERAT_BUG)) {
  asm volatile("ptesync": : :"memory");
  __tlbie_va(va, 0, ap, RIC_FLUSH_TLB);
 }

 if (cpu_has_feature(CPU_FTR_P9_TLBIE_STQ_BUG)) {
  asm volatile("ptesync": : :"memory");
  __tlbie_va(va, pid, ap, RIC_FLUSH_TLB);
 }
}
