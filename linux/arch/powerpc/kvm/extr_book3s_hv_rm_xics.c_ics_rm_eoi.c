
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int rm_eoied_irq; int rm_action; } ;
struct TYPE_8__ {int pthru_bad_aff; int pthru_host; int pthru_all; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_4__ stat; TYPE_3__* kvm; TYPE_2__ arch; } ;
struct ics_irq_state {int pq_state; int intr_cpu; scalar_t__ host_irq; scalar_t__ lsi; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_7__ {int irq_ack_notifier_list; TYPE_1__ arch; } ;


 int PQ_PRESENTED ;
 int XICS_RM_NOTIFY_EOI ;
 int check_too_hard (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int cmpxchg (int*,int,int) ;
 int cpu_first_thread_sibling (int) ;
 int hlist_empty (int *) ;
 int icp_rm_deliver_irq (struct kvmppc_xics*,int *,int,int) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int,size_t*) ;
 int raw_smp_processor_id () ;
 int xics_opal_set_server (scalar_t__,int) ;

__attribute__((used)) static int ics_rm_eoi(struct kvm_vcpu *vcpu, u32 irq)
{
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 struct kvmppc_icp *icp = vcpu->arch.icp;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u16 src;
 u32 pq_old, pq_new;
 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics)
  goto bail;

 state = &ics->irq_state[src];

 if (state->lsi)
  pq_new = state->pq_state;
 else
  do {
   pq_old = state->pq_state;
   pq_new = pq_old >> 1;
  } while (cmpxchg(&state->pq_state, pq_old, pq_new) != pq_old);

 if (pq_new & PQ_PRESENTED)
  icp_rm_deliver_irq(xics, ((void*)0), irq, 0);

 if (!hlist_empty(&vcpu->kvm->irq_ack_notifier_list)) {
  icp->rm_action |= XICS_RM_NOTIFY_EOI;
  icp->rm_eoied_irq = irq;
 }

 if (state->host_irq) {
  ++vcpu->stat.pthru_all;
  if (state->intr_cpu != -1) {
   int pcpu = raw_smp_processor_id();

   pcpu = cpu_first_thread_sibling(pcpu);
   ++vcpu->stat.pthru_host;
   if (state->intr_cpu != pcpu) {
    ++vcpu->stat.pthru_bad_aff;
    xics_opal_set_server(state->host_irq, pcpu);
   }
   state->intr_cpu = -1;
  }
 }

 bail:
 return check_too_hard(xics, icp);
}
