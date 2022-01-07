
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
struct kvmppc_passthru_irqmap {int dummy; } ;
struct kvmppc_irq_map {int v_hwirq; int r_hwirq; int desc; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__* kvm; } ;
struct ics_irq_state {int pq_state; } ;
typedef int __be32 ;
struct TYPE_4__ {struct kvmppc_xics* xics; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 scalar_t__ H_TOO_HARD ;
 int PQ_PRESENTED ;
 scalar_t__ check_too_hard (struct kvmppc_xics*,struct kvmppc_icp*) ;
 int cmpxchg (int*,int,int) ;
 int icp_eoi (int ,int ,int ,int*) ;
 int icp_rm_deliver_irq (struct kvmppc_xics*,struct kvmppc_icp*,int,int) ;
 int irq_desc_get_chip (int ) ;
 int kvmppc_rm_handle_irq_desc (int ) ;
 struct kvmppc_ics* kvmppc_xics_find_ics (struct kvmppc_xics*,int,size_t*) ;

long kvmppc_deliver_irq_passthru(struct kvm_vcpu *vcpu,
     __be32 xirr,
     struct kvmppc_irq_map *irq_map,
     struct kvmppc_passthru_irqmap *pimap,
     bool *again)
{
 struct kvmppc_xics *xics;
 struct kvmppc_icp *icp;
 struct kvmppc_ics *ics;
 struct ics_irq_state *state;
 u32 irq;
 u16 src;
 u32 pq_old, pq_new;

 irq = irq_map->v_hwirq;
 xics = vcpu->kvm->arch.xics;
 icp = vcpu->arch.icp;

 kvmppc_rm_handle_irq_desc(irq_map->desc);

 ics = kvmppc_xics_find_ics(xics, irq, &src);
 if (!ics)
  return 2;

 state = &ics->irq_state[src];


 do {
  pq_old = state->pq_state;
  pq_new = ((pq_old << 1) & 3) | PQ_PRESENTED;
 } while (cmpxchg(&state->pq_state, pq_old, pq_new) != pq_old);


 if (pq_new == PQ_PRESENTED)
  icp_rm_deliver_irq(xics, icp, irq, 0);


 icp_eoi(irq_desc_get_chip(irq_map->desc), irq_map->r_hwirq, xirr,
  again);

 if (check_too_hard(xics, icp) == H_TOO_HARD)
  return 2;
 else
  return -2;
}
