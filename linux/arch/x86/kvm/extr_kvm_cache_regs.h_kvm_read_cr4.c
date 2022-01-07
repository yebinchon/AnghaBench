
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvm_vcpu {int dummy; } ;


 int kvm_read_cr4_bits (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static inline ulong kvm_read_cr4(struct kvm_vcpu *vcpu)
{
 return kvm_read_cr4_bits(vcpu, ~0UL);
}
