
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int _refcount; int lru; } ;
struct TYPE_2__ {int lock; int pgtable_list; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 int __free_page (struct page*) ;
 int __pa (unsigned long*) ;
 unsigned int atomic_xor_bits (int *,unsigned int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mm_alloc_pgste (struct mm_struct*) ;
 struct page* pfn_to_page (int) ;
 int pgtable_pte_page_dtor (struct page*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void page_table_free(struct mm_struct *mm, unsigned long *table)
{
 struct page *page;
 unsigned int bit, mask;

 page = pfn_to_page(__pa(table) >> PAGE_SHIFT);
 if (!mm_alloc_pgste(mm)) {

  bit = (__pa(table) & ~PAGE_MASK)/(PTRS_PER_PTE*sizeof(pte_t));
  spin_lock_bh(&mm->context.lock);
  mask = atomic_xor_bits(&page->_refcount, 1U << (bit + 24));
  mask >>= 24;
  if (mask & 3)
   list_add(&page->lru, &mm->context.pgtable_list);
  else
   list_del(&page->lru);
  spin_unlock_bh(&mm->context.lock);
  if (mask != 0)
   return;
 } else {
  atomic_xor_bits(&page->_refcount, 3U << 24);
 }

 pgtable_pte_page_dtor(page);
 __free_page(page);
}
