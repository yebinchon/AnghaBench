
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcpu_vmx {TYPE_1__* loaded_vmcs; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int soft_vnmi_blocked; int nmi_known_unmasked; scalar_t__ vnmi_blocked_time; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int enable_vnmi ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_clear_bits (int ,int ) ;
 int vmcs_set_bits (int ,int ) ;

void vmx_set_nmi_mask(struct kvm_vcpu *vcpu, bool masked)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!enable_vnmi) {
  if (vmx->loaded_vmcs->soft_vnmi_blocked != masked) {
   vmx->loaded_vmcs->soft_vnmi_blocked = masked;
   vmx->loaded_vmcs->vnmi_blocked_time = 0;
  }
 } else {
  vmx->loaded_vmcs->nmi_known_unmasked = !masked;
  if (masked)
   vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
          GUEST_INTR_STATE_NMI);
  else
   vmcs_clear_bits(GUEST_INTERRUPTIBILITY_INFO,
     GUEST_INTR_STATE_NMI);
 }
}
