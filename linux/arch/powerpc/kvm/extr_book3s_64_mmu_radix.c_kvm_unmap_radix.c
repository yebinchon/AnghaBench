
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {int dummy; } ;
struct TYPE_2__ {int lpid; int pgtable; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int kvmppc_unmap_pte (struct kvm*,int *,unsigned long,unsigned int,struct kvm_memory_slot*,int ) ;
 scalar_t__ pte_present (int ) ;

int kvm_unmap_radix(struct kvm *kvm, struct kvm_memory_slot *memslot,
      unsigned long gfn)
{
 pte_t *ptep;
 unsigned long gpa = gfn << PAGE_SHIFT;
 unsigned int shift;

 ptep = __find_linux_pte(kvm->arch.pgtable, gpa, ((void*)0), &shift);
 if (ptep && pte_present(*ptep))
  kvmppc_unmap_pte(kvm, ptep, gpa, shift, memslot,
     kvm->arch.lpid);
 return 0;
}
