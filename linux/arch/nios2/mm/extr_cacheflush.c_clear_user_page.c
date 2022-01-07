
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int __flush_dcache (unsigned long,scalar_t__) ;
 int __flush_icache (unsigned long,scalar_t__) ;
 int clear_page (void*) ;

void clear_user_page(void *addr, unsigned long vaddr, struct page *page)
{
 __flush_dcache(vaddr, vaddr + PAGE_SIZE);
 __flush_icache(vaddr, vaddr + PAGE_SIZE);
 clear_page(addr);
 __flush_dcache((unsigned long)addr, (unsigned long)addr + PAGE_SIZE);
 __flush_icache((unsigned long)addr, (unsigned long)addr + PAGE_SIZE);
}
