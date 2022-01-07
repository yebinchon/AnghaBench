
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_2__ arch; } ;
struct TYPE_3__ {int pgtable; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PTE_RPN_MASK ;
 int _PAGE_ACCESSED ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int kvmhv_update_nest_rmap_rc_list (struct kvm*,unsigned long*,int ,int ,unsigned long,unsigned long) ;
 unsigned long kvmppc_radix_update_pte (struct kvm*,int *,int ,int ,unsigned long,unsigned int) ;
 scalar_t__ pte_present (int ) ;
 scalar_t__ pte_young (int ) ;

int kvm_age_radix(struct kvm *kvm, struct kvm_memory_slot *memslot,
    unsigned long gfn)
{
 pte_t *ptep;
 unsigned long gpa = gfn << PAGE_SHIFT;
 unsigned int shift;
 int ref = 0;
 unsigned long old, *rmapp;

 ptep = __find_linux_pte(kvm->arch.pgtable, gpa, ((void*)0), &shift);
 if (ptep && pte_present(*ptep) && pte_young(*ptep)) {
  old = kvmppc_radix_update_pte(kvm, ptep, _PAGE_ACCESSED, 0,
           gpa, shift);


  rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
  kvmhv_update_nest_rmap_rc_list(kvm, rmapp, _PAGE_ACCESSED, 0,
            old & PTE_RPN_MASK,
            1UL << shift);
  ref = 1;
 }
 return ref;
}
