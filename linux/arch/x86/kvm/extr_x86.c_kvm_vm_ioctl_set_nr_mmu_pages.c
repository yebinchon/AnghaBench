
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long n_requested_mmu_pages; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;


 int EINVAL ;
 unsigned long KVM_MIN_ALLOC_MMU_PAGES ;
 int kvm_mmu_change_mmu_pages (struct kvm*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_nr_mmu_pages(struct kvm *kvm,
      unsigned long kvm_nr_mmu_pages)
{
 if (kvm_nr_mmu_pages < KVM_MIN_ALLOC_MMU_PAGES)
  return -EINVAL;

 mutex_lock(&kvm->slots_lock);

 kvm_mmu_change_mmu_pages(kvm, kvm_nr_mmu_pages);
 kvm->arch.n_requested_mmu_pages = kvm_nr_mmu_pages;

 mutex_unlock(&kvm->slots_lock);
 return 0;
}
