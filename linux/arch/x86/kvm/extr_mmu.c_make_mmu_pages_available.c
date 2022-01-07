
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_5__ {int mmu_recycled; } ;
struct TYPE_6__ {TYPE_1__ stat; } ;


 int ENOSPC ;
 scalar_t__ KVM_MIN_FREE_MMU_PAGES ;
 scalar_t__ KVM_REFILL_PAGES ;
 int LIST_HEAD (int ) ;
 int invalid_list ;
 scalar_t__ kvm_mmu_available_pages (TYPE_2__*) ;
 int kvm_mmu_commit_zap_page (TYPE_2__*,int *) ;
 scalar_t__ likely (int) ;
 int prepare_zap_oldest_mmu_page (TYPE_2__*,int *) ;

__attribute__((used)) static int make_mmu_pages_available(struct kvm_vcpu *vcpu)
{
 LIST_HEAD(invalid_list);

 if (likely(kvm_mmu_available_pages(vcpu->kvm) >= KVM_MIN_FREE_MMU_PAGES))
  return 0;

 while (kvm_mmu_available_pages(vcpu->kvm) < KVM_REFILL_PAGES) {
  if (!prepare_zap_oldest_mmu_page(vcpu->kvm, &invalid_list))
   break;

  ++vcpu->kvm->stat.mmu_recycled;
 }
 kvm_mmu_commit_zap_page(vcpu->kvm, &invalid_list);

 if (!kvm_mmu_available_pages(vcpu->kvm))
  return -ENOSPC;
 return 0;
}
