
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Hit_Writeback_Inv_SD ;
 int blast_inv_scache_range (unsigned long,unsigned long) ;
 int cache_op (int ,unsigned long) ;
 unsigned long cpu_scache_line_size () ;

__attribute__((used)) static void mips_sc_inv(unsigned long addr, unsigned long size)
{
 unsigned long lsize = cpu_scache_line_size();
 unsigned long almask = ~(lsize - 1);

 cache_op(Hit_Writeback_Inv_SD, addr & almask);
 cache_op(Hit_Writeback_Inv_SD, (addr + size - 1) & almask);
 blast_inv_scache_range(addr, addr + size);
}
