
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vmxon; } ;
struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_2__ nested; TYPE_1__ rmode; } ;
struct TYPE_6__ {unsigned long cr4; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int CR4_READ_SHADOW ;
 int GUEST_CR4 ;
 unsigned long KVM_PMODE_VM_CR4_ALWAYS_ON ;
 unsigned long KVM_RMODE_VM_CR4_ALWAYS_ON ;
 unsigned long KVM_VM_CR4_ALWAYS_ON_UNRESTRICTED_GUEST ;
 int SECONDARY_EXEC_DESC ;
 unsigned long X86_CR4_MCE ;
 unsigned long X86_CR4_PAE ;
 unsigned long X86_CR4_PKE ;
 unsigned long X86_CR4_PSE ;
 unsigned long X86_CR4_SMAP ;
 unsigned long X86_CR4_SMEP ;
 unsigned long X86_CR4_UMIP ;
 unsigned long X86_CR4_VMXE ;
 int X86_FEATURE_UMIP ;
 int boot_cpu_has (int ) ;
 unsigned long cr4_read_shadow () ;
 scalar_t__ enable_ept ;
 scalar_t__ enable_unrestricted_guest ;
 int get_vmcs12 (struct kvm_vcpu*) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int is_paging (struct kvm_vcpu*) ;
 scalar_t__ is_smm (struct kvm_vcpu*) ;
 int nested_cpu_has2 (int ,int ) ;
 int nested_cr4_valid (struct kvm_vcpu*,unsigned long) ;
 int nested_vmx_allowed (struct kvm_vcpu*) ;
 int secondary_exec_controls_clearbit (struct vcpu_vmx*,int ) ;
 int secondary_exec_controls_setbit (struct vcpu_vmx*,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_writel (int ,unsigned long) ;
 scalar_t__ vmx_umip_emulated () ;

int vmx_set_cr4(struct kvm_vcpu *vcpu, unsigned long cr4)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);





 unsigned long hw_cr4;

 hw_cr4 = (cr4_read_shadow() & X86_CR4_MCE) | (cr4 & ~X86_CR4_MCE);
 if (enable_unrestricted_guest)
  hw_cr4 |= KVM_VM_CR4_ALWAYS_ON_UNRESTRICTED_GUEST;
 else if (vmx->rmode.vm86_active)
  hw_cr4 |= KVM_RMODE_VM_CR4_ALWAYS_ON;
 else
  hw_cr4 |= KVM_PMODE_VM_CR4_ALWAYS_ON;

 if (!boot_cpu_has(X86_FEATURE_UMIP) && vmx_umip_emulated()) {
  if (cr4 & X86_CR4_UMIP) {
   secondary_exec_controls_setbit(vmx, SECONDARY_EXEC_DESC);
   hw_cr4 &= ~X86_CR4_UMIP;
  } else if (!is_guest_mode(vcpu) ||
   !nested_cpu_has2(get_vmcs12(vcpu), SECONDARY_EXEC_DESC)) {
   secondary_exec_controls_clearbit(vmx, SECONDARY_EXEC_DESC);
  }
 }

 if (cr4 & X86_CR4_VMXE) {







  if (!nested_vmx_allowed(vcpu) || is_smm(vcpu))
   return 1;
 }

 if (vmx->nested.vmxon && !nested_cr4_valid(vcpu, cr4))
  return 1;

 vcpu->arch.cr4 = cr4;

 if (!enable_unrestricted_guest) {
  if (enable_ept) {
   if (!is_paging(vcpu)) {
    hw_cr4 &= ~X86_CR4_PAE;
    hw_cr4 |= X86_CR4_PSE;
   } else if (!(cr4 & X86_CR4_PAE)) {
    hw_cr4 &= ~X86_CR4_PAE;
   }
  }
  if (!is_paging(vcpu))
   hw_cr4 &= ~(X86_CR4_SMEP | X86_CR4_SMAP | X86_CR4_PKE);
 }

 vmcs_writel(CR4_READ_SHADOW, cr4);
 vmcs_writel(GUEST_CR4, hw_cr4);
 return 0;
}
