
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_KERNEL_EXEC ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ map_tboot_page (unsigned long,unsigned long,int ) ;
 int pgd_alloc (int *) ;
 int tboot_mm ;
 int tboot_pg_dir ;

__attribute__((used)) static int map_tboot_pages(unsigned long vaddr, unsigned long start_pfn,
      unsigned long nr)
{

 tboot_pg_dir = pgd_alloc(&tboot_mm);
 if (!tboot_pg_dir)
  return -1;

 for (; nr > 0; nr--, vaddr += PAGE_SIZE, start_pfn++) {
  if (map_tboot_page(vaddr, start_pfn, PAGE_KERNEL_EXEC))
   return -1;
 }

 return 0;
}
