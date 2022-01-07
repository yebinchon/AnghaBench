
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct xive_q {int count; scalar_t__ msk; int qpage; } ;
struct kvmppc_xive_vcpu {struct xive_q* queues; int valid; } ;
struct TYPE_2__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EBUSY ;
 int ENXIO ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ XIVE_Q_GAP ;
 scalar_t__ atomic_add_unless (int *,int,scalar_t__) ;

__attribute__((used)) static int xive_try_pick_queue(struct kvm_vcpu *vcpu, u8 prio)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 struct xive_q *q;
 u32 max;

 if (WARN_ON(!xc))
  return -ENXIO;
 if (!xc->valid)
  return -ENXIO;

 q = &xc->queues[prio];
 if (WARN_ON(!q->qpage))
  return -ENXIO;


 max = (q->msk + 1) - XIVE_Q_GAP;
 return atomic_add_unless(&q->count, 1, max) ? 0 : -EBUSY;
}
