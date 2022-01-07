
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union kvm_mmu_page_role {int dummy; } kvm_mmu_page_role ;
struct TYPE_2__ {int mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;


 int KVM_MMU_ROOT_CURRENT ;
 int fast_cr3_switch (struct kvm_vcpu*,int ,union kvm_mmu_page_role,int) ;
 int kvm_mmu_free_roots (struct kvm_vcpu*,int ,int ) ;

__attribute__((used)) static void __kvm_mmu_new_cr3(struct kvm_vcpu *vcpu, gpa_t new_cr3,
         union kvm_mmu_page_role new_role,
         bool skip_tlb_flush)
{
 if (!fast_cr3_switch(vcpu, new_cr3, new_role, skip_tlb_flush))
  kvm_mmu_free_roots(vcpu, vcpu->arch.mmu,
       KVM_MMU_ROOT_CURRENT);
}
