
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xive_q {int guest_qaddr; int qpage; } ;
struct kvmppc_xive_vcpu {struct xive_q* queues; } ;
struct TYPE_3__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_2__* kvm; TYPE_1__ arch; } ;
struct TYPE_4__ {int srcu; } ;


 int ENOENT ;
 unsigned int KVMPPC_XIVE_Q_COUNT ;
 int gpa_to_gfn (int ) ;
 int mark_page_dirty (TYPE_2__*,int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static int kvmppc_xive_native_vcpu_eq_sync(struct kvm_vcpu *vcpu)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 unsigned int prio;
 int srcu_idx;

 if (!xc)
  return -ENOENT;

 for (prio = 0; prio < KVMPPC_XIVE_Q_COUNT; prio++) {
  struct xive_q *q = &xc->queues[prio];

  if (!q->qpage)
   continue;


  srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
  mark_page_dirty(vcpu->kvm, gpa_to_gfn(q->guest_qaddr));
  srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
 }
 return 0;
}
