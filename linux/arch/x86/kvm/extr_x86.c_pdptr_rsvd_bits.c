
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int cpuid_maxphyaddr (struct kvm_vcpu*) ;
 int rsvd_bits (int,int) ;

__attribute__((used)) static inline u64 pdptr_rsvd_bits(struct kvm_vcpu *vcpu)
{
 return rsvd_bits(cpuid_maxphyaddr(vcpu), 63) | rsvd_bits(5, 8) |
        rsvd_bits(1, 2);
}
