
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; int vcpu_id; } ;
struct TYPE_3__ {int start_stop_lock; } ;
struct TYPE_4__ {TYPE_1__ arch; struct kvm_vcpu** vcpus; int online_vcpus; } ;


 int CPUSTAT_STOPPED ;
 int __disable_ibs_on_vcpu (struct kvm_vcpu*) ;
 int __enable_ibs_on_vcpu (struct kvm_vcpu*) ;
 int atomic_read (int *) ;
 scalar_t__ is_vcpu_stopped (struct kvm_vcpu*) ;
 int kvm_s390_clear_stop_irq (struct kvm_vcpu*) ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvm_s390_vcpu_start_stop (int ,int ) ;

void kvm_s390_vcpu_stop(struct kvm_vcpu *vcpu)
{
 int i, online_vcpus, started_vcpus = 0;
 struct kvm_vcpu *started_vcpu = ((void*)0);

 if (is_vcpu_stopped(vcpu))
  return;

 trace_kvm_s390_vcpu_start_stop(vcpu->vcpu_id, 0);

 spin_lock(&vcpu->kvm->arch.start_stop_lock);
 online_vcpus = atomic_read(&vcpu->kvm->online_vcpus);


 kvm_s390_clear_stop_irq(vcpu);

 kvm_s390_set_cpuflags(vcpu, CPUSTAT_STOPPED);
 __disable_ibs_on_vcpu(vcpu);

 for (i = 0; i < online_vcpus; i++) {
  if (!is_vcpu_stopped(vcpu->kvm->vcpus[i])) {
   started_vcpus++;
   started_vcpu = vcpu->kvm->vcpus[i];
  }
 }

 if (started_vcpus == 1) {




  __enable_ibs_on_vcpu(started_vcpu);
 }

 spin_unlock(&vcpu->kvm->arch.start_stop_lock);
 return;
}
