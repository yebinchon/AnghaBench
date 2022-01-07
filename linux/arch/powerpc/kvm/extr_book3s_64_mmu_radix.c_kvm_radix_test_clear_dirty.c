
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {int base_gfn; TYPE_2__ arch; } ;
struct TYPE_3__ {int lpid; int pgtable; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PTE_RPN_MASK ;
 int _PAGE_DIRTY ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int kvmhv_update_nest_rmap_rc_list (struct kvm*,unsigned long*,int ,int ,unsigned long,unsigned long) ;
 int kvmppc_radix_tlbie_page (struct kvm*,unsigned long,unsigned int,int ) ;
 unsigned long kvmppc_radix_update_pte (struct kvm*,int *,int ,int ,unsigned long,unsigned int) ;
 scalar_t__ pte_dirty (int ) ;
 scalar_t__ pte_present (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_radix_test_clear_dirty(struct kvm *kvm,
    struct kvm_memory_slot *memslot, int pagenum)
{
 unsigned long gfn = memslot->base_gfn + pagenum;
 unsigned long gpa = gfn << PAGE_SHIFT;
 pte_t *ptep;
 unsigned int shift;
 int ret = 0;
 unsigned long old, *rmapp;

 ptep = __find_linux_pte(kvm->arch.pgtable, gpa, ((void*)0), &shift);
 if (ptep && pte_present(*ptep) && pte_dirty(*ptep)) {
  ret = 1;
  if (shift)
   ret = 1 << (shift - PAGE_SHIFT);
  spin_lock(&kvm->mmu_lock);
  old = kvmppc_radix_update_pte(kvm, ptep, _PAGE_DIRTY, 0,
           gpa, shift);
  kvmppc_radix_tlbie_page(kvm, gpa, shift, kvm->arch.lpid);

  rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
  kvmhv_update_nest_rmap_rc_list(kvm, rmapp, _PAGE_DIRTY, 0,
            old & PTE_RPN_MASK,
            1UL << shift);
  spin_unlock(&kvm->mmu_lock);
 }
 return ret;
}
