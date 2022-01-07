
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long n_used_mmu_pages; unsigned long n_max_mmu_pages; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 int LIST_HEAD (int ) ;
 int invalid_list ;
 int kvm_mmu_commit_zap_page (struct kvm*,int *) ;
 int prepare_zap_oldest_mmu_page (struct kvm*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_mmu_change_mmu_pages(struct kvm *kvm, unsigned long goal_nr_mmu_pages)
{
 LIST_HEAD(invalid_list);

 spin_lock(&kvm->mmu_lock);

 if (kvm->arch.n_used_mmu_pages > goal_nr_mmu_pages) {

  while (kvm->arch.n_used_mmu_pages > goal_nr_mmu_pages)
   if (!prepare_zap_oldest_mmu_page(kvm, &invalid_list))
    break;

  kvm_mmu_commit_zap_page(kvm, &invalid_list);
  goal_nr_mmu_pages = kvm->arch.n_used_mmu_pages;
 }

 kvm->arch.n_max_mmu_pages = goal_nr_mmu_pages;

 spin_unlock(&kvm->mmu_lock);
}
