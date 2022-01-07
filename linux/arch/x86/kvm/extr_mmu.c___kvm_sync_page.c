
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {TYPE_2__* mmu; } ;
struct kvm_vcpu {int kvm; TYPE_3__ arch; } ;
struct TYPE_4__ {int gpte_is_8_bytes; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_5__ {scalar_t__ (* sync_page ) (struct kvm_vcpu*,struct kvm_mmu_page*) ;} ;


 int is_ept_sp (struct kvm_mmu_page*) ;
 int is_pae (struct kvm_vcpu*) ;
 int kvm_mmu_prepare_zap_page (int ,struct kvm_mmu_page*,struct list_head*) ;
 scalar_t__ stub1 (struct kvm_vcpu*,struct kvm_mmu_page*) ;

__attribute__((used)) static bool __kvm_sync_page(struct kvm_vcpu *vcpu, struct kvm_mmu_page *sp,
       struct list_head *invalid_list)
{
 if ((!is_ept_sp(sp) && sp->role.gpte_is_8_bytes != !!is_pae(vcpu)) ||
     vcpu->arch.mmu->sync_page(vcpu, sp) == 0) {
  kvm_mmu_prepare_zap_page(vcpu->kvm, sp, invalid_list);
  return 0;
 }

 return 1;
}
