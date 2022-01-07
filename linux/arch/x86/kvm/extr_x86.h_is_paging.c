
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int X86_CR0_PG ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 int likely (int ) ;

__attribute__((used)) static inline int is_paging(struct kvm_vcpu *vcpu)
{
 return likely(kvm_read_cr0_bits(vcpu, X86_CR0_PG));
}
