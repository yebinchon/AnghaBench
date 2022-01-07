
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int PAGE_SIZE ;
 int __ic_line_inv_vaddr (int ,unsigned long,int ) ;

void __inv_icache_page(phys_addr_t paddr, unsigned long vaddr)
{
 __ic_line_inv_vaddr(paddr, vaddr, PAGE_SIZE);
}
