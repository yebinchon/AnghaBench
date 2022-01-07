
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcore {int lock; } ;
struct TYPE_2__ {scalar_t__ state; int cpu_run; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int DEFINE_WAIT (int ) ;
 scalar_t__ KVMPPC_VCPU_RUNNABLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

__attribute__((used)) static void kvmppc_wait_for_exec(struct kvmppc_vcore *vc,
     struct kvm_vcpu *vcpu, int wait_state)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(&vcpu->arch.cpu_run, &wait, wait_state);
 if (vcpu->arch.state == KVMPPC_VCPU_RUNNABLE) {
  spin_unlock(&vc->lock);
  schedule();
  spin_lock(&vc->lock);
 }
 finish_wait(&vcpu->arch.cpu_run, &wait);
}
