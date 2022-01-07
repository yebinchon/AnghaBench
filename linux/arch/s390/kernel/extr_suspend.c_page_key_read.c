
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ arch_test_page_nodat (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_get_storage_key (unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;

void page_key_read(unsigned long *pfn)
{
 struct page *page;
 unsigned long addr;
 unsigned char key;

 page = pfn_to_page(*pfn);
 addr = (unsigned long) page_address(page);
 key = (unsigned char) page_get_storage_key(addr) & 0x7f;
 if (arch_test_page_nodat(page))
  key |= 0x80;
 *(unsigned char *) pfn = key;
}
