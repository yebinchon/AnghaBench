
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio_vec {int bv_offset; int bv_len; struct page* bv_page; } ;
typedef int phys_addr_t ;


 int PAGE_MASK ;
 int PFN_DOWN (int) ;
 int page_to_phys (struct page*) ;
 struct page* pfn_to_page (int ) ;
 int xen_biovec_phys_mergeable (struct bio_vec const*,struct page*) ;
 scalar_t__ xen_domain () ;

__attribute__((used)) static inline bool page_is_mergeable(const struct bio_vec *bv,
  struct page *page, unsigned int len, unsigned int off,
  bool *same_page)
{
 phys_addr_t vec_end_addr = page_to_phys(bv->bv_page) +
  bv->bv_offset + bv->bv_len - 1;
 phys_addr_t page_addr = page_to_phys(page);

 if (vec_end_addr + 1 != page_addr + off)
  return 0;
 if (xen_domain() && !xen_biovec_phys_mergeable(bv, page))
  return 0;

 *same_page = ((vec_end_addr & PAGE_MASK) == page_addr);
 if (!*same_page && pfn_to_page(PFN_DOWN(vec_end_addr)) + 1 != page)
  return 0;
 return 1;
}
