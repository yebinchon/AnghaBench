
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pte_t ;


 scalar_t__ PageReserved (struct page*) ;
 int flush_dcache_page_all (struct mm_struct*,struct page*) ;
 scalar_t__ hypervisor ;
 scalar_t__ page_address (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_exec (int ) ;
 unsigned long pte_pfn (int ) ;
 int tlb_batch_add_one (struct mm_struct*,unsigned long,int ,unsigned int) ;
 scalar_t__ tlb_type ;

void tlb_batch_add(struct mm_struct *mm, unsigned long vaddr,
     pte_t *ptep, pte_t orig, int fullmm,
     unsigned int hugepage_shift)
{
 if (tlb_type != hypervisor &&
     pte_dirty(orig)) {
  unsigned long paddr, pfn = pte_pfn(orig);
  struct address_space *mapping;
  struct page *page;

  if (!pfn_valid(pfn))
   goto no_cache_flush;

  page = pfn_to_page(pfn);
  if (PageReserved(page))
   goto no_cache_flush;


  mapping = page_mapping_file(page);
  if (!mapping)
   goto no_cache_flush;

  paddr = (unsigned long) page_address(page);
  if ((paddr ^ vaddr) & (1 << 13))
   flush_dcache_page_all(mm, page);
 }

no_cache_flush:
 if (!fullmm)
  tlb_batch_add_one(mm, vaddr, pte_exec(orig), hugepage_shift);
}
