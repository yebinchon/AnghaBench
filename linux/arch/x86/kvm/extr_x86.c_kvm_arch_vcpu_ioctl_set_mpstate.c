
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mp_state; TYPE_1__* apic; scalar_t__ smi_pending; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_mp_state {scalar_t__ mp_state; } ;
struct TYPE_3__ {int pending_events; } ;


 int EINVAL ;
 int KVM_APIC_SIPI ;
 scalar_t__ KVM_MP_STATE_INIT_RECEIVED ;
 scalar_t__ KVM_MP_STATE_RUNNABLE ;
 scalar_t__ KVM_MP_STATE_SIPI_RECEIVED ;
 int KVM_REQ_EVENT ;
 scalar_t__ is_smm (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int set_bit (int ,int *) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
        struct kvm_mp_state *mp_state)
{
 int ret = -EINVAL;

 vcpu_load(vcpu);

 if (!lapic_in_kernel(vcpu) &&
     mp_state->mp_state != KVM_MP_STATE_RUNNABLE)
  goto out;


 if ((is_smm(vcpu) || vcpu->arch.smi_pending) &&
     (mp_state->mp_state == KVM_MP_STATE_SIPI_RECEIVED ||
      mp_state->mp_state == KVM_MP_STATE_INIT_RECEIVED))
  goto out;

 if (mp_state->mp_state == KVM_MP_STATE_SIPI_RECEIVED) {
  vcpu->arch.mp_state = KVM_MP_STATE_INIT_RECEIVED;
  set_bit(KVM_APIC_SIPI, &vcpu->arch.apic->pending_events);
 } else
  vcpu->arch.mp_state = mp_state->mp_state;
 kvm_make_request(KVM_REQ_EVENT, vcpu);

 ret = 0;
out:
 vcpu_put(vcpu);
 return ret;
}
