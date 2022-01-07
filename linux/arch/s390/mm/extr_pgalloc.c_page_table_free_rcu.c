
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int lru; int _refcount; } ;
struct mmu_gather {struct mm_struct* mm; } ;
struct TYPE_2__ {int lock; int pgtable_list; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 unsigned int __pa (unsigned long*) ;
 unsigned int atomic_xor_bits (int *,int) ;
 int gmap_unlink (struct mm_struct*,unsigned long*,unsigned long) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ mm_alloc_pgste (struct mm_struct*) ;
 struct page* pfn_to_page (unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tlb_remove_table (struct mmu_gather*,unsigned long*) ;

void page_table_free_rcu(struct mmu_gather *tlb, unsigned long *table,
    unsigned long vmaddr)
{
 struct mm_struct *mm;
 struct page *page;
 unsigned int bit, mask;

 mm = tlb->mm;
 page = pfn_to_page(__pa(table) >> PAGE_SHIFT);
 if (mm_alloc_pgste(mm)) {
  gmap_unlink(mm, table, vmaddr);
  table = (unsigned long *) (__pa(table) | 3);
  tlb_remove_table(tlb, table);
  return;
 }
 bit = (__pa(table) & ~PAGE_MASK) / (PTRS_PER_PTE*sizeof(pte_t));
 spin_lock_bh(&mm->context.lock);
 mask = atomic_xor_bits(&page->_refcount, 0x11U << (bit + 24));
 mask >>= 24;
 if (mask & 3)
  list_add_tail(&page->lru, &mm->context.pgtable_list);
 else
  list_del(&page->lru);
 spin_unlock_bh(&mm->context.lock);
 table = (unsigned long *) (__pa(table) | (1U << bit));
 tlb_remove_table(tlb, table);
}
