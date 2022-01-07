
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmppc_vcore {int entry_exit_map; int pcpu; } ;
struct kvm_split_mode {int do_restore; scalar_t__* napped; scalar_t__ lpcr_req; struct kvmppc_vcore** vc; } ;
struct TYPE_3__ {int ptid; int tid; struct kvmppc_vcore* kvm_vcore; struct kvm_split_mode* kvm_split_mode; } ;
struct TYPE_4__ {TYPE_1__ kvm_hstate; } ;


 int BOOK3S_INTERRUPT_HV_DECREMENTER ;
 int MAX_SUBCORES ;
 int VCORE_EXIT_REQ ;
 int cmpxchg (int*,int,int) ;
 int kvmhv_interrupt_vcore (struct kvmppc_vcore*,int) ;
 int kvmhv_rm_send_ipi (int) ;
 TYPE_2__* local_paca ;
 int threads_per_core ;

void kvmhv_commence_exit(int trap)
{
 struct kvmppc_vcore *vc = local_paca->kvm_hstate.kvm_vcore;
 int ptid = local_paca->kvm_hstate.ptid;
 struct kvm_split_mode *sip = local_paca->kvm_hstate.kvm_split_mode;
 int me, ee, i, t;
 int cpu0;



 me = 0x100 << ptid;
 do {
  ee = vc->entry_exit_map;
 } while (cmpxchg(&vc->entry_exit_map, ee, ee | me) != ee);


 if ((ee >> 8) != 0)
  return;






 if (trap != BOOK3S_INTERRUPT_HV_DECREMENTER)
  kvmhv_interrupt_vcore(vc, ee & ~(1 << ptid));





 if (!sip)
  return;

 for (i = 0; i < MAX_SUBCORES; ++i) {
  vc = sip->vc[i];
  if (!vc)
   break;
  do {
   ee = vc->entry_exit_map;

   if ((ee >> 8) != 0)
    break;
  } while (cmpxchg(&vc->entry_exit_map, ee,
     ee | VCORE_EXIT_REQ) != ee);
  if ((ee >> 8) == 0)
   kvmhv_interrupt_vcore(vc, ee);
 }






 if (sip->lpcr_req) {
  if (cmpxchg(&sip->do_restore, 0, 1) == 0) {
   vc = local_paca->kvm_hstate.kvm_vcore;
   cpu0 = vc->pcpu + ptid - local_paca->kvm_hstate.tid;
   for (t = 1; t < threads_per_core; ++t) {
    if (sip->napped[t])
     kvmhv_rm_send_ipi(cpu0 + t);
   }
  }
 }
}
