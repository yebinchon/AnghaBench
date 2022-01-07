
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int smep_andnot_wp; int smap_andnot_wp; int direct; int gpte_is_8_bytes; int level; } ;
struct TYPE_3__ {scalar_t__ cr4_smap; scalar_t__ cr4_smep; } ;
union kvm_mmu_role {TYPE_2__ base; TYPE_1__ ext; } ;
struct kvm_vcpu {int dummy; } ;


 int PT32E_ROOT_LEVEL ;
 int PT64_ROOT_4LEVEL ;
 int PT64_ROOT_5LEVEL ;
 scalar_t__ is_la57_mode (struct kvm_vcpu*) ;
 int is_long_mode (struct kvm_vcpu*) ;
 int is_pae (struct kvm_vcpu*) ;
 int is_paging (struct kvm_vcpu*) ;
 int is_write_protection (struct kvm_vcpu*) ;
 union kvm_mmu_role kvm_calc_mmu_role_common (struct kvm_vcpu*,int) ;

__attribute__((used)) static union kvm_mmu_role
kvm_calc_shadow_mmu_root_page_role(struct kvm_vcpu *vcpu, bool base_only)
{
 union kvm_mmu_role role = kvm_calc_mmu_role_common(vcpu, base_only);

 role.base.smep_andnot_wp = role.ext.cr4_smep &&
  !is_write_protection(vcpu);
 role.base.smap_andnot_wp = role.ext.cr4_smap &&
  !is_write_protection(vcpu);
 role.base.direct = !is_paging(vcpu);
 role.base.gpte_is_8_bytes = !!is_pae(vcpu);

 if (!is_long_mode(vcpu))
  role.base.level = PT32E_ROOT_LEVEL;
 else if (is_la57_mode(vcpu))
  role.base.level = PT64_ROOT_5LEVEL;
 else
  role.base.level = PT64_ROOT_4LEVEL;

 return role;
}
