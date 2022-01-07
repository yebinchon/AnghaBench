
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long n_used_mmu_pages; } ;
struct kvm {TYPE_1__ arch; } ;


 int kvm_total_used_mmu_pages ;
 int percpu_counter_add (int *,unsigned long) ;

__attribute__((used)) static inline void kvm_mod_used_mmu_pages(struct kvm *kvm, unsigned long nr)
{
 kvm->arch.n_used_mmu_pages += nr;
 percpu_counter_add(&kvm_total_used_mmu_pages, nr);
}
