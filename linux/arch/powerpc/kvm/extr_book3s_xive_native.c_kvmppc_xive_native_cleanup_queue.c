
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xive_q {int * qpage; } ;
struct kvmppc_xive_vcpu {int vp_id; struct xive_q* queues; } ;
struct TYPE_2__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int put_page (int ) ;
 int virt_to_page (int *) ;
 int xive_native_disable_queue (int ,struct xive_q*,int) ;

__attribute__((used)) static void kvmppc_xive_native_cleanup_queue(struct kvm_vcpu *vcpu, int prio)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 struct xive_q *q = &xc->queues[prio];

 xive_native_disable_queue(xc->vp_id, q, prio);
 if (q->qpage) {
  put_page(virt_to_page(q->qpage));
  q->qpage = ((void*)0);
 }
}
