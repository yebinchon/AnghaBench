
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int cr0_guest_owned_bits; int cr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GUEST_CR0 ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_decache_cr0_guest_bits(struct kvm_vcpu *vcpu)
{
 ulong cr0_guest_owned_bits = vcpu->arch.cr0_guest_owned_bits;

 vcpu->arch.cr0 &= ~cr0_guest_owned_bits;
 vcpu->arch.cr0 |= vmcs_readl(GUEST_CR0) & cr0_guest_owned_bits;
}
