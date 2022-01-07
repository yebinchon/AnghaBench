
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_split_mode {scalar_t__ do_restore; int host_lpcr; } ;
struct TYPE_3__ {scalar_t__ tid; int * kvm_split_mode; } ;
struct TYPE_4__ {TYPE_1__ kvm_hstate; } ;


 int PHASE_OUT_OF_GUEST ;
 int PHASE_RESET_LPCR ;
 int SPRN_LPCR ;
 int SPRN_LPID ;
 int isync () ;
 TYPE_2__* local_paca ;
 int mtspr (int ,int ) ;
 int smp_mb () ;
 int smp_wmb () ;
 int wait_for_sync (struct kvm_split_mode*,int ) ;

void kvmhv_p9_restore_lpcr(struct kvm_split_mode *sip)
{

 wait_for_sync(sip, PHASE_OUT_OF_GUEST);

 mtspr(SPRN_LPID, 0);
 mtspr(SPRN_LPCR, sip->host_lpcr);
 isync();

 if (local_paca->kvm_hstate.tid == 0) {
  sip->do_restore = 0;
  smp_wmb();
 }

 wait_for_sync(sip, PHASE_RESET_LPCR);
 smp_mb();
 local_paca->kvm_hstate.kvm_split_mode = ((void*)0);
}
