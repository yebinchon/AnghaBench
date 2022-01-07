
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __pa (void*) ;
 int copy_page_asm (void*,void*) ;
 int flush_dcache_page_asm (int ,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

void copy_user_page(void *vto, void *vfrom, unsigned long vaddr,
 struct page *pg)
{




 preempt_disable();
 flush_dcache_page_asm(__pa(vfrom), vaddr);
 copy_page_asm(vto, vfrom);
 preempt_enable();
}
