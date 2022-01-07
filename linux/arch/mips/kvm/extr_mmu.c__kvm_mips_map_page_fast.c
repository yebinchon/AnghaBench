
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int mmu_lock; } ;
typedef int pte_t ;
typedef int kvm_pfn_t ;
typedef unsigned long gfn_t ;


 int EFAULT ;
 unsigned long PAGE_SHIFT ;
 int * kvm_mips_pte_for_gpa (struct kvm*,int *,unsigned long) ;
 int kvm_set_pfn_accessed (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 int mark_page_dirty (struct kvm*,unsigned long) ;
 int pte_dirty (int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 int pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_write (int ) ;
 int pte_young (int ) ;
 int * ptep_buddy (int *) ;
 int set_pte (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int _kvm_mips_map_page_fast(struct kvm_vcpu *vcpu, unsigned long gpa,
       bool write_fault,
       pte_t *out_entry, pte_t *out_buddy)
{
 struct kvm *kvm = vcpu->kvm;
 gfn_t gfn = gpa >> PAGE_SHIFT;
 pte_t *ptep;
 kvm_pfn_t pfn = 0;
 bool pfn_valid = 0;
 int ret = 0;

 spin_lock(&kvm->mmu_lock);


 ptep = kvm_mips_pte_for_gpa(kvm, ((void*)0), gpa);
 if (!ptep || !pte_present(*ptep)) {
  ret = -EFAULT;
  goto out;
 }


 if (!pte_young(*ptep)) {
  set_pte(ptep, pte_mkyoung(*ptep));
  pfn = pte_pfn(*ptep);
  pfn_valid = 1;

 }
 if (write_fault && !pte_dirty(*ptep)) {
  if (!pte_write(*ptep)) {
   ret = -EFAULT;
   goto out;
  }


  set_pte(ptep, pte_mkdirty(*ptep));
  pfn = pte_pfn(*ptep);
  mark_page_dirty(kvm, gfn);
  kvm_set_pfn_dirty(pfn);
 }

 if (out_entry)
  *out_entry = *ptep;
 if (out_buddy)
  *out_buddy = *ptep_buddy(ptep);

out:
 spin_unlock(&kvm->mmu_lock);
 if (pfn_valid)
  kvm_set_pfn_accessed(pfn);
 return ret;
}
