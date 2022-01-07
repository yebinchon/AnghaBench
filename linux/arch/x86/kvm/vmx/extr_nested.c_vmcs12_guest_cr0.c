
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {unsigned long guest_cr0; unsigned long cr0_guest_host_mask; } ;
struct TYPE_2__ {unsigned long cr0_guest_owned_bits; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CR0_READ_SHADOW ;
 int GUEST_CR0 ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static inline unsigned long
vmcs12_guest_cr0(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12)
{
 return
       (vmcs_readl(GUEST_CR0) & vcpu->arch.cr0_guest_owned_bits) |
       (vmcs12->guest_cr0 & vmcs12->cr0_guest_host_mask) |
       (vmcs_readl(CR0_READ_SHADOW) & ~(vmcs12->cr0_guest_host_mask |
   vcpu->arch.cr0_guest_owned_bits));
}
