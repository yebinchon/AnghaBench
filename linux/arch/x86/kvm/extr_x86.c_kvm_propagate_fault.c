
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct x86_exception {int nested_page_fault; } ;
struct TYPE_4__ {int (* inject_page_fault ) (struct kvm_vcpu*,struct x86_exception*) ;} ;
struct TYPE_6__ {TYPE_2__* mmu; TYPE_1__ nested_mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {int (* inject_page_fault ) (struct kvm_vcpu*,struct x86_exception*) ;} ;


 scalar_t__ mmu_is_nested (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,struct x86_exception*) ;
 int stub2 (struct kvm_vcpu*,struct x86_exception*) ;

__attribute__((used)) static bool kvm_propagate_fault(struct kvm_vcpu *vcpu, struct x86_exception *fault)
{
 if (mmu_is_nested(vcpu) && !fault->nested_page_fault)
  vcpu->arch.nested_mmu.inject_page_fault(vcpu, fault);
 else
  vcpu->arch.mmu->inject_page_fault(vcpu, fault);

 return fault->nested_page_fault;
}
