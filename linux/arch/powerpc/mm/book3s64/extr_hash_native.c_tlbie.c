
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tlbiel; } ;


 int MMU_FTR_LOCKLESS_TLBIE ;
 int MMU_FTR_TLBIEL ;
 int __tlbie (unsigned long,int,int,int) ;
 int __tlbiel (unsigned long,int,int,int) ;
 int cxl_ctx_in_use () ;
 int fixup_tlbie_vpn (unsigned long,int,int,int) ;
 scalar_t__ mmu_has_feature (int ) ;
 TYPE_1__* mmu_psize_defs ;
 int native_tlbie_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static inline void tlbie(unsigned long vpn, int psize, int apsize,
    int ssize, int local)
{
 unsigned int use_local;
 int lock_tlbie = !mmu_has_feature(MMU_FTR_LOCKLESS_TLBIE);

 use_local = local && mmu_has_feature(MMU_FTR_TLBIEL) && !cxl_ctx_in_use();

 if (use_local)
  use_local = mmu_psize_defs[psize].tlbiel;
 if (lock_tlbie && !use_local)
  raw_spin_lock(&native_tlbie_lock);
 asm volatile("ptesync": : :"memory");
 if (use_local) {
  __tlbiel(vpn, psize, apsize, ssize);
  asm volatile("ptesync": : :"memory");
 } else {
  __tlbie(vpn, psize, apsize, ssize);
  fixup_tlbie_vpn(vpn, psize, apsize, ssize);
  asm volatile("eieio; tlbsync; ptesync": : :"memory");
 }
 if (lock_tlbie && !use_local)
  raw_spin_unlock(&native_tlbie_lock);
}
