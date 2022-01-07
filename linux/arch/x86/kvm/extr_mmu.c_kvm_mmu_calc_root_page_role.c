
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union kvm_mmu_page_role {int dummy; } kvm_mmu_page_role ;
union kvm_mmu_role {union kvm_mmu_page_role base; } ;
struct kvm_vcpu {int dummy; } ;


 union kvm_mmu_role kvm_calc_shadow_mmu_root_page_role (struct kvm_vcpu*,int) ;
 union kvm_mmu_role kvm_calc_tdp_mmu_root_page_role (struct kvm_vcpu*,int) ;
 scalar_t__ tdp_enabled ;

__attribute__((used)) static union kvm_mmu_page_role
kvm_mmu_calc_root_page_role(struct kvm_vcpu *vcpu)
{
 union kvm_mmu_role role;

 if (tdp_enabled)
  role = kvm_calc_tdp_mmu_root_page_role(vcpu, 1);
 else
  role = kvm_calc_shadow_mmu_root_page_role(vcpu, 1);

 return role.base;
}
