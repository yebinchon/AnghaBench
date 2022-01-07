
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int __flush_dcache (unsigned long,scalar_t__) ;
 int __flush_icache (unsigned long,scalar_t__) ;
 int copy_page (void*,void*) ;

void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
      struct page *to)
{
 __flush_dcache(vaddr, vaddr + PAGE_SIZE);
 __flush_icache(vaddr, vaddr + PAGE_SIZE);
 copy_page(vto, vfrom);
 __flush_dcache((unsigned long)vto, (unsigned long)vto + PAGE_SIZE);
 __flush_icache((unsigned long)vto, (unsigned long)vto + PAGE_SIZE);
}
