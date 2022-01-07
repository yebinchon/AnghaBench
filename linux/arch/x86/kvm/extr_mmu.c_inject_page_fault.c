
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_exception {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* inject_page_fault ) (struct kvm_vcpu*,struct x86_exception*) ;} ;


 int stub1 (struct kvm_vcpu*,struct x86_exception*) ;

__attribute__((used)) static void inject_page_fault(struct kvm_vcpu *vcpu,
         struct x86_exception *fault)
{
 vcpu->arch.mmu->inject_page_fault(vcpu, fault);
}
