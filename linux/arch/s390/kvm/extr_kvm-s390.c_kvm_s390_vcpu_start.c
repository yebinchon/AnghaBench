
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
 int KVM_REQ_TLB_FLUSH ;
 int __disable_ibs_on_all_vcpus (TYPE_2__*) ;
 int __enable_ibs_on_vcpu (struct kvm_vcpu*) ;
 int atomic_read (int *) ;
 int is_vcpu_stopped (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_s390_clear_cpuflags (struct kvm_vcpu*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvm_s390_vcpu_start_stop (int ,int) ;

void kvm_s390_vcpu_start(struct kvm_vcpu *vcpu)
{
 int i, online_vcpus, started_vcpus = 0;

 if (!is_vcpu_stopped(vcpu))
  return;

 trace_kvm_s390_vcpu_start_stop(vcpu->vcpu_id, 1);

 spin_lock(&vcpu->kvm->arch.start_stop_lock);
 online_vcpus = atomic_read(&vcpu->kvm->online_vcpus);

 for (i = 0; i < online_vcpus; i++) {
  if (!is_vcpu_stopped(vcpu->kvm->vcpus[i]))
   started_vcpus++;
 }

 if (started_vcpus == 0) {

  __enable_ibs_on_vcpu(vcpu);
 } else if (started_vcpus == 1) {





  __disable_ibs_on_all_vcpus(vcpu->kvm);
 }

 kvm_s390_clear_cpuflags(vcpu, CPUSTAT_STOPPED);




 kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
 spin_unlock(&vcpu->kvm->arch.start_stop_lock);
 return;
}
