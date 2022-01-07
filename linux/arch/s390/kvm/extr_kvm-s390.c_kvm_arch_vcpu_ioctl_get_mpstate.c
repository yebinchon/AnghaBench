
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mp_state {int dummy; } ;


 int KVM_MP_STATE_OPERATING ;
 int KVM_MP_STATE_STOPPED ;
 scalar_t__ is_vcpu_stopped (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_mpstate(struct kvm_vcpu *vcpu,
        struct kvm_mp_state *mp_state)
{
 int ret;

 vcpu_load(vcpu);


 ret = is_vcpu_stopped(vcpu) ? KVM_MP_STATE_STOPPED :
          KVM_MP_STATE_OPERATING;

 vcpu_put(vcpu);
 return ret;
}
