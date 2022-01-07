
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {int dummy; } ;
struct TYPE_2__ {int pgtable; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 scalar_t__ pte_present (int ) ;
 scalar_t__ pte_young (int ) ;

int kvm_test_age_radix(struct kvm *kvm, struct kvm_memory_slot *memslot,
         unsigned long gfn)
{
 pte_t *ptep;
 unsigned long gpa = gfn << PAGE_SHIFT;
 unsigned int shift;
 int ref = 0;

 ptep = __find_linux_pte(kvm->arch.pgtable, gpa, ((void*)0), &shift);
 if (ptep && pte_present(*ptep) && pte_young(*ptep))
  ref = 1;
 return ref;
}
