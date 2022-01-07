
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nxe; int guest_mode; int smm; int cr0_wp; int access; } ;
union kvm_mmu_role {int ext; TYPE_1__ base; int member_0; } ;
struct kvm_vcpu {int dummy; } ;


 int ACC_ALL ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int is_nx (struct kvm_vcpu*) ;
 int is_smm (struct kvm_vcpu*) ;
 int is_write_protection (struct kvm_vcpu*) ;
 int kvm_calc_mmu_role_ext (struct kvm_vcpu*) ;

__attribute__((used)) static union kvm_mmu_role kvm_calc_mmu_role_common(struct kvm_vcpu *vcpu,
         bool base_only)
{
 union kvm_mmu_role role = {0};

 role.base.access = ACC_ALL;
 role.base.nxe = !!is_nx(vcpu);
 role.base.cr0_wp = is_write_protection(vcpu);
 role.base.smm = is_smm(vcpu);
 role.base.guest_mode = is_guest_mode(vcpu);

 if (base_only)
  return role;

 role.ext = kvm_calc_mmu_role_ext(vcpu);

 return role;
}
