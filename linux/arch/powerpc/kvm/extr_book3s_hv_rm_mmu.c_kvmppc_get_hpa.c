
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgdir; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_memory_slot {int flags; } ;
struct kvm {int dummy; } ;
typedef int pte_t ;


 int H_PARAMETER ;
 int H_SUCCESS ;
 int H_TOO_HARD ;
 int KVM_MEMSLOT_INVALID ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 unsigned long __gfn_to_hva_memslot (struct kvm_memory_slot*,unsigned long) ;
 struct kvm_memory_slot* __gfn_to_memslot (int ,unsigned long) ;
 int kvm_memslots_raw (struct kvm*) ;
 int kvmppc_read_update_linux_pte (int *,int) ;
 unsigned long pte_pfn (int ) ;
 int pte_present (int ) ;

__attribute__((used)) static int kvmppc_get_hpa(struct kvm_vcpu *vcpu, unsigned long gpa,
     int writing, unsigned long *hpa,
     struct kvm_memory_slot **memslot_p)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_memory_slot *memslot;
 unsigned long gfn, hva, pa, psize = PAGE_SHIFT;
 unsigned int shift;
 pte_t *ptep, pte;


 gfn = gpa >> PAGE_SHIFT;
 memslot = __gfn_to_memslot(kvm_memslots_raw(kvm), gfn);
 if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
  return H_PARAMETER;


 hva = __gfn_to_hva_memslot(memslot, gfn);


 ptep = __find_linux_pte(vcpu->arch.pgdir, hva, ((void*)0), &shift);
 if (!ptep)
  return H_TOO_HARD;
 pte = kvmppc_read_update_linux_pte(ptep, writing);
 if (!pte_present(pte))
  return H_TOO_HARD;


 if (shift)
  psize = 1UL << shift;
 pa = pte_pfn(pte) << PAGE_SHIFT;
 pa |= hva & (psize - 1);
 pa |= gpa & ~PAGE_MASK;

 if (hpa)
  *hpa = pa;
 if (memslot_p)
  *memslot_p = memslot;

 return H_SUCCESS;
}
