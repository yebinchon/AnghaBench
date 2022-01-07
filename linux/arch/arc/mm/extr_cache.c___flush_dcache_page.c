
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int OP_FLUSH_N_INV ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int __dc_line_op (int ,unsigned long,int ,int ) ;

void __flush_dcache_page(phys_addr_t paddr, unsigned long vaddr)
{
 __dc_line_op(paddr, vaddr & PAGE_MASK, PAGE_SIZE, OP_FLUSH_N_INV);
}
