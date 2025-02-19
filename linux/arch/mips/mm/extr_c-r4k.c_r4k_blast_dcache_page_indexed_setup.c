
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* blast_dcache128_page_indexed ;
 void* blast_dcache16_page_indexed ;
 void* blast_dcache32_page_indexed ;
 void* blast_dcache64_page_indexed ;
 scalar_t__ cache_noop ;
 unsigned long cpu_dcache_line_size () ;
 void* r4k_blast_dcache_page_indexed ;

__attribute__((used)) static void r4k_blast_dcache_page_indexed_setup(void)
{
 unsigned long dc_lsize = cpu_dcache_line_size();

 if (dc_lsize == 0)
  r4k_blast_dcache_page_indexed = (void *)cache_noop;
 else if (dc_lsize == 16)
  r4k_blast_dcache_page_indexed = blast_dcache16_page_indexed;
 else if (dc_lsize == 32)
  r4k_blast_dcache_page_indexed = blast_dcache32_page_indexed;
 else if (dc_lsize == 64)
  r4k_blast_dcache_page_indexed = blast_dcache64_page_indexed;
 else if (dc_lsize == 128)
  r4k_blast_dcache_page_indexed = blast_dcache128_page_indexed;
}
