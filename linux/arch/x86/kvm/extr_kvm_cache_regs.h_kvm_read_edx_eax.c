
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 unsigned int kvm_rax_read (struct kvm_vcpu*) ;
 unsigned int kvm_rdx_read (struct kvm_vcpu*) ;

__attribute__((used)) static inline u64 kvm_read_edx_eax(struct kvm_vcpu *vcpu)
{
 return (kvm_rax_read(vcpu) & -1u)
  | ((u64)(kvm_rdx_read(vcpu) & -1u) << 32);
}
