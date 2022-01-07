
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {unsigned long guest_cr4; unsigned long cr4_guest_host_mask; } ;
struct TYPE_2__ {unsigned long cr4_guest_owned_bits; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CR4_READ_SHADOW ;
 int GUEST_CR4 ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static inline unsigned long
vmcs12_guest_cr4(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12)
{
 return
       (vmcs_readl(GUEST_CR4) & vcpu->arch.cr4_guest_owned_bits) |
       (vmcs12->guest_cr4 & vmcs12->cr4_guest_host_mask) |
       (vmcs_readl(CR4_READ_SHADOW) & ~(vmcs12->cr4_guest_host_mask |
   vcpu->arch.cr4_guest_owned_bits));
}
