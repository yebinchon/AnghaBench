
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu {int inject_page_fault; int get_pdptr; int get_cr3; int set_cr3; } ;
struct TYPE_4__ {int set_cr3; } ;


 int get_cr3 ;
 int kvm_init_shadow_mmu (struct kvm_vcpu*) ;
 int kvm_inject_page_fault ;
 int kvm_pdptr_read ;
 TYPE_2__* kvm_x86_ops ;

__attribute__((used)) static void init_kvm_softmmu(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *context = vcpu->arch.mmu;

 kvm_init_shadow_mmu(vcpu);
 context->set_cr3 = kvm_x86_ops->set_cr3;
 context->get_cr3 = get_cr3;
 context->get_pdptr = kvm_pdptr_read;
 context->inject_page_fault = kvm_inject_page_fault;
}
