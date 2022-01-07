
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef unsigned long gpa_t ;


 int BUILD_BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 unsigned long X86_CR3_PCID_MASK ;
 int X86_CR4_PCIDE ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline unsigned long kvm_get_pcid(struct kvm_vcpu *vcpu, gpa_t cr3)
{
 BUILD_BUG_ON((X86_CR3_PCID_MASK & PAGE_MASK) != 0);

 return kvm_read_cr4_bits(vcpu, X86_CR4_PCIDE)
        ? cr3 & X86_CR3_PCID_MASK
        : 0;
}
