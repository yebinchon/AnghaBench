
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int OP_FLUSH_N_INV ;
 int __dc_line_op (int ,unsigned long,int,int ) ;
 int __ic_line_inv_vaddr (int ,unsigned long,int) ;

void __sync_icache_dcache(phys_addr_t paddr, unsigned long vaddr, int len)
{
 __dc_line_op(paddr, vaddr, len, OP_FLUSH_N_INV);
 __ic_line_inv_vaddr(paddr, vaddr, len);
}
