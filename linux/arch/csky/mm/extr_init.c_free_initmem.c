
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearPageReserved (int ) ;
 scalar_t__ PAGE_SIZE ;
 int __init_begin ;
 int __init_end ;
 int free_page (unsigned long) ;
 int init_page_count (int ) ;
 int pr_info (char*,unsigned int) ;
 int totalram_pages_inc () ;
 int virt_to_page (unsigned long) ;

void free_initmem(void)
{
 unsigned long addr;

 addr = (unsigned long) &__init_begin;

 while (addr < (unsigned long) &__init_end) {
  ClearPageReserved(virt_to_page(addr));
  init_page_count(virt_to_page(addr));
  free_page(addr);
  totalram_pages_inc();
  addr += PAGE_SIZE;
 }

 pr_info("Freeing unused kernel memory: %dk freed\n",
 ((unsigned int)&__init_end - (unsigned int)&__init_begin) >> 10);
}
