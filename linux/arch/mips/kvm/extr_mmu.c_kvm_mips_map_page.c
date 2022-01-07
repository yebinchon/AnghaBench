
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_2__ {struct kvm_mmu_memory_cache mmu_page_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {unsigned long mmu_notifier_seq; int srcu; int mmu_lock; } ;
typedef int pte_t ;
typedef int kvm_pfn_t ;
typedef unsigned long gfn_t ;


 int EFAULT ;
 int KVM_MMU_CACHE_MIN_PAGES ;
 int KVM_NR_MEM_OBJS ;
 unsigned long PAGE_SHIFT ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_WRITE ;
 unsigned long __READABLE ;
 unsigned long __WRITEABLE ;
 int __pgprot (unsigned long) ;
 int _kvm_mips_map_page_fast (struct kvm_vcpu*,unsigned long,int,int *,int *) ;
 unsigned long _page_cachable_default ;
 int gfn_to_pfn_prot (struct kvm*,unsigned long,int,int*) ;
 scalar_t__ is_error_noslot_pfn (int ) ;
 int * kvm_mips_pte_for_gpa (struct kvm*,struct kvm_mmu_memory_cache*,unsigned long) ;
 int kvm_release_pfn_clean (int ) ;
 int kvm_set_pfn_accessed (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 int mark_page_dirty (struct kvm*,unsigned long) ;
 scalar_t__ mmu_notifier_retry (struct kvm*,unsigned long) ;
 int mmu_topup_memory_cache (struct kvm_mmu_memory_cache*,int ,int ) ;
 int pfn_pte (int ,int ) ;
 int * ptep_buddy (int *) ;
 int set_pte (int *,int ) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static int kvm_mips_map_page(struct kvm_vcpu *vcpu, unsigned long gpa,
        bool write_fault,
        pte_t *out_entry, pte_t *out_buddy)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
 gfn_t gfn = gpa >> PAGE_SHIFT;
 int srcu_idx, err;
 kvm_pfn_t pfn;
 pte_t *ptep, entry, old_pte;
 bool writeable;
 unsigned long prot_bits;
 unsigned long mmu_seq;


 srcu_idx = srcu_read_lock(&kvm->srcu);
 err = _kvm_mips_map_page_fast(vcpu, gpa, write_fault, out_entry,
          out_buddy);
 if (!err)
  goto out;


 err = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES,
         KVM_NR_MEM_OBJS);
 if (err)
  goto out;

retry:




 mmu_seq = kvm->mmu_notifier_seq;
 smp_rmb();


 pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writeable);
 if (is_error_noslot_pfn(pfn)) {
  err = -EFAULT;
  goto out;
 }

 spin_lock(&kvm->mmu_lock);

 if (mmu_notifier_retry(kvm, mmu_seq)) {





  spin_unlock(&kvm->mmu_lock);
  kvm_release_pfn_clean(pfn);
  goto retry;
 }


 ptep = kvm_mips_pte_for_gpa(kvm, memcache, gpa);


 prot_bits = _PAGE_PRESENT | __READABLE | _page_cachable_default;
 if (writeable) {
  prot_bits |= _PAGE_WRITE;
  if (write_fault) {
   prot_bits |= __WRITEABLE;
   mark_page_dirty(kvm, gfn);
   kvm_set_pfn_dirty(pfn);
  }
 }
 entry = pfn_pte(pfn, __pgprot(prot_bits));


 old_pte = *ptep;
 set_pte(ptep, entry);

 err = 0;
 if (out_entry)
  *out_entry = *ptep;
 if (out_buddy)
  *out_buddy = *ptep_buddy(ptep);

 spin_unlock(&kvm->mmu_lock);
 kvm_release_pfn_clean(pfn);
 kvm_set_pfn_accessed(pfn);
out:
 srcu_read_unlock(&kvm->srcu, srcu_idx);
 return err;
}
