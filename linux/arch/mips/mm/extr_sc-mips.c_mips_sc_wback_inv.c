
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blast_scache_range (unsigned long,unsigned long) ;

__attribute__((used)) static void mips_sc_wback_inv(unsigned long addr, unsigned long size)
{
 blast_scache_range(addr, addr + size);
}
