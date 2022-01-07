
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msr_data {int data; int host_initiated; int index; } ;
struct TYPE_3__ {int msr_kvm_poll_control; } ;
struct kvm_vcpu {int mutex; TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {int kvmclock_sync_work; } ;
struct kvm {TYPE_2__ arch; } ;


 int KVMCLOCK_SYNC_PERIOD ;
 int MSR_IA32_TSC ;
 int kvm_hv_vcpu_postcreate (struct kvm_vcpu*) ;
 int kvm_write_tsc (struct kvm_vcpu*,struct msr_data*) ;
 int kvmclock_periodic_sync ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
{
 struct msr_data msr;
 struct kvm *kvm = vcpu->kvm;

 kvm_hv_vcpu_postcreate(vcpu);

 if (mutex_lock_killable(&vcpu->mutex))
  return;
 vcpu_load(vcpu);
 msr.data = 0x0;
 msr.index = MSR_IA32_TSC;
 msr.host_initiated = 1;
 kvm_write_tsc(vcpu, &msr);
 vcpu_put(vcpu);


 vcpu->arch.msr_kvm_poll_control = 1;

 mutex_unlock(&vcpu->mutex);

 if (!kvmclock_periodic_sync)
  return;

 schedule_delayed_work(&kvm->arch.kvmclock_sync_work,
     KVMCLOCK_SYNC_PERIOD);
}
