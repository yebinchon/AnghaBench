
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pvclock_set_guest_stopped_request; int pv_time_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 int KVM_REQ_CLOCK_UPDATE ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_set_guest_paused(struct kvm_vcpu *vcpu)
{
 if (!vcpu->arch.pv_time_enabled)
  return -EINVAL;
 vcpu->arch.pvclock_set_guest_stopped_request = 1;
 kvm_make_request(KVM_REQ_CLOCK_UPDATE, vcpu);
 return 0;
}
