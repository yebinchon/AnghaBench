
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; } ;
struct TYPE_2__ {int lpid; int pgtable; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int kvmppc_unmap_pte (struct kvm*,int *,unsigned long,unsigned int,struct kvm_memory_slot const*,int ) ;
 scalar_t__ pte_present (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvmppc_radix_flush_memslot(struct kvm *kvm,
    const struct kvm_memory_slot *memslot)
{
 unsigned long n;
 pte_t *ptep;
 unsigned long gpa;
 unsigned int shift;

 gpa = memslot->base_gfn << PAGE_SHIFT;
 spin_lock(&kvm->mmu_lock);
 for (n = memslot->npages; n; --n) {
  ptep = __find_linux_pte(kvm->arch.pgtable, gpa, ((void*)0), &shift);
  if (ptep && pte_present(*ptep))
   kvmppc_unmap_pte(kvm, ptep, gpa, shift, memslot,
      kvm->arch.lpid);
  gpa += PAGE_SIZE;
 }
 spin_unlock(&kvm->mmu_lock);
}
