
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int blast_inv_dcache_range (unsigned long,unsigned long) ;
 unsigned long dcache_size ;
 int tx39_blast_dcache () ;
 int tx39_blast_dcache_page (unsigned long) ;

__attribute__((used)) static void tx39_dma_cache_inv(unsigned long addr, unsigned long size)
{
 unsigned long end;

 if (((size | addr) & (PAGE_SIZE - 1)) == 0) {
  end = addr + size;
  do {
   tx39_blast_dcache_page(addr);
   addr += PAGE_SIZE;
  } while(addr != end);
 } else if (size > dcache_size) {
  tx39_blast_dcache();
 } else {
  blast_inv_dcache_range(addr, addr + size);
 }
}
