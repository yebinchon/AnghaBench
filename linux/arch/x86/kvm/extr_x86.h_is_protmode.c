
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int X86_CR0_PE ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline bool is_protmode(struct kvm_vcpu *vcpu)
{
 return kvm_read_cr0_bits(vcpu, X86_CR0_PE);
}
