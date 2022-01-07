
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* blast_dcache128 ;
 void* blast_dcache16 ;
 void* blast_dcache32 ;
 void* blast_dcache64 ;
 scalar_t__ cache_noop ;
 unsigned long cpu_dcache_line_size () ;
 void* r4k_blast_dcache ;

__attribute__((used)) static void r4k_blast_dcache_setup(void)
{
 unsigned long dc_lsize = cpu_dcache_line_size();

 if (dc_lsize == 0)
  r4k_blast_dcache = (void *)cache_noop;
 else if (dc_lsize == 16)
  r4k_blast_dcache = blast_dcache16;
 else if (dc_lsize == 32)
  r4k_blast_dcache = blast_dcache32;
 else if (dc_lsize == 64)
  r4k_blast_dcache = blast_dcache64;
 else if (dc_lsize == 128)
  r4k_blast_dcache = blast_dcache128;
}
