
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_5__ {int regs_avail; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {unsigned long save_rflags; scalar_t__ vm86_active; } ;
struct TYPE_6__ {unsigned long rflags; TYPE_1__ rmode; } ;


 int GUEST_RFLAGS ;
 unsigned long RMODE_GUEST_OWNED_EFLAGS_BITS ;
 int VCPU_EXREG_RFLAGS ;
 int __set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 unsigned long vmcs_readl (int ) ;

unsigned long vmx_get_rflags(struct kvm_vcpu *vcpu)
{
 unsigned long rflags, save_rflags;

 if (!test_bit(VCPU_EXREG_RFLAGS, (ulong *)&vcpu->arch.regs_avail)) {
  __set_bit(VCPU_EXREG_RFLAGS, (ulong *)&vcpu->arch.regs_avail);
  rflags = vmcs_readl(GUEST_RFLAGS);
  if (to_vmx(vcpu)->rmode.vm86_active) {
   rflags &= RMODE_GUEST_OWNED_EFLAGS_BITS;
   save_rflags = to_vmx(vcpu)->rmode.save_rflags;
   rflags |= save_rflags & ~RMODE_GUEST_OWNED_EFLAGS_BITS;
  }
  to_vmx(vcpu)->rflags = rflags;
 }
 return to_vmx(vcpu)->rflags;
}
