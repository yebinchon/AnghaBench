
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct TYPE_5__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct ics_irq_state {int pq_state; scalar_t__ lsi; } ;
struct TYPE_4__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 int H_PARAMETER ;
 int H_SUCCESS ;
 int PQ_PRESENTED ;
 int XICS_DBG (char*,int) ;
 int cmpxchg (int*,int,int) ;
 int icp_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,int,int) ;
 int kvm_notify_acked_irq (TYPE_3__*,int ,int) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int,size_t*) ;

__attribute__((used)) static int ics_eoi(struct kvm_vcpu *vcpu, u32 irq)
{
 struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
 struct kvmppc_icp *icp = vcpu->arch.icp;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u16 src;
 u32 pq_old, pq_new;
 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics) {
  XICS_DBG("ios_eoi: IRQ 0x%06x not found !\n", irq);
  return H_PARAMETER;
 }
 state = &ics->irq_state[src];

 if (state->lsi)
  pq_new = state->pq_state;
 else
  do {
   pq_old = state->pq_state;
   pq_new = pq_old >> 1;
  } while (cmpxchg(&state->pq_state, pq_old, pq_new) != pq_old);

 if (pq_new & PQ_PRESENTED)
  icp_deliver_irq(xics, icp, irq, 0);

 kvm_notify_acked_irq(vcpu->kvm, 0, irq);

 return H_SUCCESS;
}
