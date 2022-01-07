
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_vcore {int * runnable_threads; int n_runnable; } ;
struct TYPE_2__ {scalar_t__ state; size_t ptid; int tbacct_lock; int busy_preempt; scalar_t__ stolen_logged; int busy_stolen; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ KVMPPC_VCPU_BUSY_IN_HOST ;
 scalar_t__ KVMPPC_VCPU_RUNNABLE ;
 int WRITE_ONCE (int ,int *) ;
 int mftb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ vcore_stolen_time (struct kvmppc_vcore*,int ) ;

__attribute__((used)) static void kvmppc_remove_runnable(struct kvmppc_vcore *vc,
       struct kvm_vcpu *vcpu)
{
 u64 now;

 if (vcpu->arch.state != KVMPPC_VCPU_RUNNABLE)
  return;
 spin_lock_irq(&vcpu->arch.tbacct_lock);
 now = mftb();
 vcpu->arch.busy_stolen += vcore_stolen_time(vc, now) -
  vcpu->arch.stolen_logged;
 vcpu->arch.busy_preempt = now;
 vcpu->arch.state = KVMPPC_VCPU_BUSY_IN_HOST;
 spin_unlock_irq(&vcpu->arch.tbacct_lock);
 --vc->n_runnable;
 WRITE_ONCE(vc->runnable_threads[vcpu->arch.ptid], ((void*)0));
}
