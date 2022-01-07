
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int external_debug_state; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; } ;
struct kvm_guest_debug {int control; int arch; } ;


 int EINVAL ;
 int KVM_GUESTDBG_ENABLE ;
 int KVM_GUESTDBG_USE_HW ;
 int KVM_GUESTDBG_VALID_MASK ;
 int trace_kvm_set_guest_debug (struct kvm_vcpu*,int) ;

int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
     struct kvm_guest_debug *dbg)
{
 int ret = 0;

 trace_kvm_set_guest_debug(vcpu, dbg->control);

 if (dbg->control & ~KVM_GUESTDBG_VALID_MASK) {
  ret = -EINVAL;
  goto out;
 }

 if (dbg->control & KVM_GUESTDBG_ENABLE) {
  vcpu->guest_debug = dbg->control;


  if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW) {
   vcpu->arch.external_debug_state = dbg->arch;
  }

 } else {

  vcpu->guest_debug = 0;
 }

out:
 return ret;
}
