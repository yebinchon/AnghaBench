
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int slb_preload_tail; int slb_preload_nr; unsigned long* slb_preload_esid; } ;


 unsigned long ESID_MASK_1T ;
 int MMU_FTR_1T_SEGMENT ;
 unsigned long SID_SHIFT ;
 int SLB_PRELOAD_NR ;
 scalar_t__ mmu_has_feature (int ) ;
 scalar_t__ preload_hit (struct thread_info*,unsigned long) ;

__attribute__((used)) static bool preload_add(struct thread_info *ti, unsigned long ea)
{
 unsigned char idx;
 unsigned long esid;

 if (mmu_has_feature(MMU_FTR_1T_SEGMENT)) {

  if (ea & ESID_MASK_1T)
   ea &= ESID_MASK_1T;
 }

 esid = ea >> SID_SHIFT;

 if (preload_hit(ti, esid))
  return 0;

 idx = (ti->slb_preload_tail + ti->slb_preload_nr) % SLB_PRELOAD_NR;
 ti->slb_preload_esid[idx] = esid;
 if (ti->slb_preload_nr == SLB_PRELOAD_NR)
  ti->slb_preload_tail = (ti->slb_preload_tail + 1) % SLB_PRELOAD_NR;
 else
  ti->slb_preload_nr++;

 return 1;
}
