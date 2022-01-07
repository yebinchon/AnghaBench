
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int __kvm_mmu_new_cr3 (struct kvm_vcpu*,int ,int ,int) ;
 int kvm_mmu_calc_root_page_role (struct kvm_vcpu*) ;

void kvm_mmu_new_cr3(struct kvm_vcpu *vcpu, gpa_t new_cr3, bool skip_tlb_flush)
{
 __kvm_mmu_new_cr3(vcpu, new_cr3, kvm_mmu_calc_root_page_role(vcpu),
     skip_tlb_flush);
}
