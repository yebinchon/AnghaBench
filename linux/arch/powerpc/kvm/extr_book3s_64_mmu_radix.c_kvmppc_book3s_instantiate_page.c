
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int pgdir; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_memory_slot {int flags; } ;
struct TYPE_6__ {int num_1G_pages; int num_2M_pages; } ;
struct TYPE_5__ {int lpid; int pgtable; } ;
struct kvm {unsigned long mmu_notifier_seq; TYPE_3__ stat; TYPE_2__ arch; } ;
typedef int pte_t ;


 int EFAULT ;
 int KVM_MEM_LOG_DIRTY_PAGES ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned int PMD_SHIFT ;
 unsigned long PMD_SIZE ;
 unsigned int PUD_SHIFT ;
 unsigned long PUD_SIZE ;
 scalar_t__ PageReserved (struct page*) ;
 int RESUME_GUEST ;
 int _PAGE_ACCESSED ;
 int _PAGE_DIRTY ;
 int _PAGE_EXEC ;
 int _PAGE_WRITE ;
 int * __find_linux_pte (int ,unsigned long,int *,unsigned int*) ;
 int __get_user_pages_fast (unsigned long,int,int,struct page**) ;
 unsigned long __gfn_to_pfn_memslot (struct kvm_memory_slot*,unsigned long,int,int *,int,int*) ;
 int __pte (int) ;
 unsigned long gfn_to_hva_memslot (struct kvm_memory_slot*,unsigned long) ;
 scalar_t__ is_error_noslot_pfn (unsigned long) ;
 int kvmppc_create_pte (struct kvm*,int ,int ,unsigned long,unsigned int,unsigned long,int ,int *,int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int pte_val (int ) ;
 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;
 int smp_rmb () ;

int kvmppc_book3s_instantiate_page(struct kvm_vcpu *vcpu,
       unsigned long gpa,
       struct kvm_memory_slot *memslot,
       bool writing, bool kvm_ro,
       pte_t *inserted_pte, unsigned int *levelp)
{
 struct kvm *kvm = vcpu->kvm;
 struct page *page = ((void*)0);
 unsigned long mmu_seq;
 unsigned long hva, gfn = gpa >> PAGE_SHIFT;
 bool upgrade_write = 0;
 bool *upgrade_p = &upgrade_write;
 pte_t pte, *ptep;
 unsigned int shift, level;
 int ret;
 bool large_enable;


 mmu_seq = kvm->mmu_notifier_seq;
 smp_rmb();







 hva = gfn_to_hva_memslot(memslot, gfn);
 if (!kvm_ro && __get_user_pages_fast(hva, 1, 1, &page) == 1) {
  upgrade_write = 1;
 } else {
  unsigned long pfn;


  pfn = __gfn_to_pfn_memslot(memslot, gfn, 0, ((void*)0),
        writing, upgrade_p);
  if (is_error_noslot_pfn(pfn))
   return -EFAULT;
  page = ((void*)0);
  if (pfn_valid(pfn)) {
   page = pfn_to_page(pfn);
   if (PageReserved(page))
    page = ((void*)0);
  }
 }





 local_irq_disable();
 ptep = __find_linux_pte(vcpu->arch.pgdir, hva, ((void*)0), &shift);




 if (!ptep) {
  local_irq_enable();
  if (page)
   put_page(page);
  return RESUME_GUEST;
 }
 pte = *ptep;
 local_irq_enable();


 large_enable = !(memslot->flags & KVM_MEM_LOG_DIRTY_PAGES);


 if (large_enable && shift == PUD_SHIFT &&
     (gpa & (PUD_SIZE - PAGE_SIZE)) ==
     (hva & (PUD_SIZE - PAGE_SIZE))) {
  level = 2;
 } else if (large_enable && shift == PMD_SHIFT &&
     (gpa & (PMD_SIZE - PAGE_SIZE)) ==
     (hva & (PMD_SIZE - PAGE_SIZE))) {
  level = 1;
 } else {
  level = 0;
  if (shift > PAGE_SHIFT) {





   unsigned long rpnmask = (1ul << shift) - PAGE_SIZE;
   pte = __pte(pte_val(pte) | (hva & rpnmask));
  }
 }

 pte = __pte(pte_val(pte) | _PAGE_EXEC | _PAGE_ACCESSED);
 if (writing || upgrade_write) {
  if (pte_val(pte) & _PAGE_WRITE)
   pte = __pte(pte_val(pte) | _PAGE_DIRTY);
 } else {
  pte = __pte(pte_val(pte) & ~(_PAGE_WRITE | _PAGE_DIRTY));
 }


 ret = kvmppc_create_pte(kvm, kvm->arch.pgtable, pte, gpa, level,
    mmu_seq, kvm->arch.lpid, ((void*)0), ((void*)0));
 if (inserted_pte)
  *inserted_pte = pte;
 if (levelp)
  *levelp = level;

 if (page) {
  if (!ret && (pte_val(pte) & _PAGE_WRITE))
   set_page_dirty_lock(page);
  put_page(page);
 }


 if (!ret) {
  if (level == 1)
   kvm->stat.num_2M_pages++;
  else if (level == 2)
   kvm->stat.num_1G_pages++;
 }

 return ret;
}
