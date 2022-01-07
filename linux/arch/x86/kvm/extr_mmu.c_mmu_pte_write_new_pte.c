
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_10__ {TYPE_4__* mmu; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* kvm; } ;
struct TYPE_6__ {scalar_t__ level; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;
struct TYPE_9__ {int (* update_pte ) (struct kvm_vcpu*,struct kvm_mmu_page*,int *,void const*) ;} ;
struct TYPE_7__ {int mmu_pte_updated; int mmu_pde_zapped; } ;
struct TYPE_8__ {TYPE_2__ stat; } ;


 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int stub1 (struct kvm_vcpu*,struct kvm_mmu_page*,int *,void const*) ;

__attribute__((used)) static void mmu_pte_write_new_pte(struct kvm_vcpu *vcpu,
      struct kvm_mmu_page *sp, u64 *spte,
      const void *new)
{
 if (sp->role.level != PT_PAGE_TABLE_LEVEL) {
  ++vcpu->kvm->stat.mmu_pde_zapped;
  return;
        }

 ++vcpu->kvm->stat.mmu_pte_updated;
 vcpu->arch.mmu->update_pte(vcpu, sp, spte, new);
}
