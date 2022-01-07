
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int vpid; } ;


 int __vmx_flush_tlb (struct kvm_vcpu*,int ,int) ;
 TYPE_1__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline void vmx_flush_tlb(struct kvm_vcpu *vcpu, bool invalidate_gpa)
{
 __vmx_flush_tlb(vcpu, to_vmx(vcpu)->vpid, invalidate_gpa);
}
