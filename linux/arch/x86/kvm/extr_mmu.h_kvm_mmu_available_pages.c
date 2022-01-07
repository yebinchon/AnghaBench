
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_max_mmu_pages; scalar_t__ n_used_mmu_pages; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline unsigned long kvm_mmu_available_pages(struct kvm *kvm)
{
 if (kvm->arch.n_max_mmu_pages > kvm->arch.n_used_mmu_pages)
  return kvm->arch.n_max_mmu_pages -
   kvm->arch.n_used_mmu_pages;

 return 0;
}
