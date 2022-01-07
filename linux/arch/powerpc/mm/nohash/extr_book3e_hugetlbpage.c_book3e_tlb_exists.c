
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMU_FTR_USE_TLBRSRV ;
 int SPRN_MAS6 ;
 scalar_t__ mmu_has_feature (int ) ;
 int mtspr (int ,unsigned long) ;

__attribute__((used)) static inline int book3e_tlb_exists(unsigned long ea, unsigned long pid)
{
 int found = 0;

 mtspr(SPRN_MAS6, pid << 16);
 if (mmu_has_feature(MMU_FTR_USE_TLBRSRV)) {
  asm volatile(
   "li	%0,0\n"
   "tlbsx.	0,%1\n"
   "bne	1f\n"
   "li	%0,1\n"
   "1:\n"
   : "=&r"(found) : "r"(ea));
 } else {
  asm volatile(
   "tlbsx	0,%1\n"
   "mfspr	%0,0x271\n"
   "srwi	%0,%0,31\n"
   : "=&r"(found) : "r"(ea));
 }

 return found;
}
