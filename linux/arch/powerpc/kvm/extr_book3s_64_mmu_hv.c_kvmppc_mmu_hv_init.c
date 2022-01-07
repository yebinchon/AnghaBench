
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_HVMODE ;
 int EINVAL ;
 unsigned long LPID_RSVD ;
 int MMU_FTR_LOCKLESS_TLBIE ;
 int SPRN_LPID ;
 scalar_t__ cpu_has_feature (int ) ;
 int kvmppc_claim_lpid (unsigned long) ;
 int kvmppc_init_lpid (unsigned long) ;
 unsigned long mfspr (int ) ;
 int mmu_has_feature (int ) ;

int kvmppc_mmu_hv_init(void)
{
 unsigned long host_lpid, rsvd_lpid;

 if (!mmu_has_feature(MMU_FTR_LOCKLESS_TLBIE))
  return -EINVAL;


 host_lpid = 0;
 if (cpu_has_feature(CPU_FTR_HVMODE))
  host_lpid = mfspr(SPRN_LPID);
 rsvd_lpid = LPID_RSVD;

 kvmppc_init_lpid(rsvd_lpid + 1);

 kvmppc_claim_lpid(host_lpid);

 kvmppc_claim_lpid(rsvd_lpid);

 return 0;
}
