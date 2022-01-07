
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_change_data {int clear_mask; int set_mask; } ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 int PTE_VALID ;
 int __pgprot (int ) ;
 int apply_to_page_range (int *,unsigned long,int ,int ,struct page_change_data*) ;
 int change_page_range ;
 int init_mm ;
 scalar_t__ page_address (struct page*) ;
 int rodata_full ;

int set_direct_map_invalid_noflush(struct page *page)
{
 struct page_change_data data = {
  .set_mask = __pgprot(0),
  .clear_mask = __pgprot(PTE_VALID),
 };

 if (!rodata_full)
  return 0;

 return apply_to_page_range(&init_mm,
       (unsigned long)page_address(page),
       PAGE_SIZE, change_page_range, &data);
}
