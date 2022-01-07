
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blast_dcache64_page (unsigned long) ;

__attribute__((used)) static inline void r4k_blast_dcache_page_dc64(unsigned long addr)
{
 blast_dcache64_page(addr);
}
