
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu_hv_stimer {int index; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int stimer_pending_bitmap; } ;


 int KVM_REQ_HV_STIMER ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int set_bit (int ,int ) ;
 struct kvm_vcpu* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 TYPE_1__* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

__attribute__((used)) static void stimer_mark_pending(struct kvm_vcpu_hv_stimer *stimer,
    bool vcpu_kick)
{
 struct kvm_vcpu *vcpu = stimer_to_vcpu(stimer);

 set_bit(stimer->index,
  vcpu_to_hv_vcpu(vcpu)->stimer_pending_bitmap);
 kvm_make_request(KVM_REQ_HV_STIMER, vcpu);
 if (vcpu_kick)
  kvm_vcpu_kick(vcpu);
}
