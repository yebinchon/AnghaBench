
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tx39_blast_dcache_page (unsigned long) ;

__attribute__((used)) static void tx39_flush_data_cache_page(unsigned long addr)
{
 tx39_blast_dcache_page(addr);
}
