
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int execonly; } ;
struct TYPE_11__ {int gpte_is_8_bytes; int direct; int ad_disabled; int guest_mode; int cr0_wp; int smap_andnot_wp; int access; int level; int smm; } ;
union kvm_mmu_role {TYPE_6__ ext; TYPE_5__ base; int member_0; } ;
struct TYPE_7__ {int smm; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct TYPE_9__ {TYPE_2__ mmu_role; } ;
struct TYPE_10__ {TYPE_3__ root_mmu; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;


 int ACC_ALL ;
 int PT64_ROOT_4LEVEL ;
 TYPE_6__ kvm_calc_mmu_role_ext (struct kvm_vcpu*) ;

__attribute__((used)) static union kvm_mmu_role
kvm_calc_shadow_ept_root_page_role(struct kvm_vcpu *vcpu, bool accessed_dirty,
       bool execonly)
{
 union kvm_mmu_role role = {0};


 role.base.smm = vcpu->arch.root_mmu.mmu_role.base.smm;

 role.base.level = PT64_ROOT_4LEVEL;
 role.base.gpte_is_8_bytes = 1;
 role.base.direct = 0;
 role.base.ad_disabled = !accessed_dirty;
 role.base.guest_mode = 1;
 role.base.access = ACC_ALL;





 role.base.cr0_wp = 1;
 role.base.smap_andnot_wp = 1;

 role.ext = kvm_calc_mmu_role_ext(vcpu);
 role.ext.execonly = execonly;

 return role;
}
