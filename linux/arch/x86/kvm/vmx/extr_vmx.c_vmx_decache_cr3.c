
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int regs_avail; int cr3; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GUEST_CR3 ;
 int VCPU_EXREG_CR3 ;
 int __set_bit (int ,int *) ;
 scalar_t__ enable_ept ;
 scalar_t__ enable_unrestricted_guest ;
 scalar_t__ is_paging (struct kvm_vcpu*) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_decache_cr3(struct kvm_vcpu *vcpu)
{
 if (enable_unrestricted_guest || (enable_ept && is_paging(vcpu)))
  vcpu->arch.cr3 = vmcs_readl(GUEST_CR3);
 __set_bit(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);
}
