
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;


 int X86_CR4_LA57 ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline u8 vcpu_virt_addr_bits(struct kvm_vcpu *vcpu)
{
 return kvm_read_cr4_bits(vcpu, X86_CR4_LA57) ? 57 : 48;
}
