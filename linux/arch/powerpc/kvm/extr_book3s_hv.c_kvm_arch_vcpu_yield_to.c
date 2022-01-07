
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcore {scalar_t__ vcore_state; int lock; struct kvm_vcpu* runner; } ;
struct TYPE_2__ {scalar_t__ state; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ KVMPPC_VCPU_RUNNABLE ;
 scalar_t__ VCORE_INACTIVE ;
 int kvm_vcpu_yield_to (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_arch_vcpu_yield_to(struct kvm_vcpu *target)
{
 struct kvmppc_vcore *vcore = target->arch.vcore;
 spin_lock(&vcore->lock);
 if (target->arch.state == KVMPPC_VCPU_RUNNABLE &&
     vcore->vcore_state != VCORE_INACTIVE &&
     vcore->runner)
  target = vcore->runner;
 spin_unlock(&vcore->lock);

 return kvm_vcpu_yield_to(target);
}
