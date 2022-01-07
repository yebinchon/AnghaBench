
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_4__ {int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_5__ {unsigned long save_rflags; scalar_t__ vm86_active; } ;
struct TYPE_6__ {unsigned long rflags; int emulation_required; TYPE_2__ rmode; } ;


 int GUEST_RFLAGS ;
 int VCPU_EXREG_RFLAGS ;
 unsigned long X86_EFLAGS_IOPL ;
 unsigned long X86_EFLAGS_VM ;
 int __set_bit (int ,int *) ;
 int emulation_required (struct kvm_vcpu*) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_writel (int ,unsigned long) ;
 unsigned long vmx_get_rflags (struct kvm_vcpu*) ;

void vmx_set_rflags(struct kvm_vcpu *vcpu, unsigned long rflags)
{
 unsigned long old_rflags = vmx_get_rflags(vcpu);

 __set_bit(VCPU_EXREG_RFLAGS, (ulong *)&vcpu->arch.regs_avail);
 to_vmx(vcpu)->rflags = rflags;
 if (to_vmx(vcpu)->rmode.vm86_active) {
  to_vmx(vcpu)->rmode.save_rflags = rflags;
  rflags |= X86_EFLAGS_IOPL | X86_EFLAGS_VM;
 }
 vmcs_writel(GUEST_RFLAGS, rflags);

 if ((old_rflags ^ to_vmx(vcpu)->rflags) & X86_EFLAGS_VM)
  to_vmx(vcpu)->emulation_required = emulation_required(vcpu);
}
