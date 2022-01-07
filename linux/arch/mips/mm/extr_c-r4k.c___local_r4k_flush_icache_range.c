
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R4600_HIT_CACHEOP_WAR_IMPL ;
 unsigned int R4K_INDEX ;
 int blast_dcache_range (unsigned long,unsigned long) ;
 int blast_icache_range (unsigned long,unsigned long) ;
 int boot_cpu_type () ;
 int cpu_has_ic_fills_f_dc ;
 unsigned long dcache_size ;
 unsigned long icache_size ;
 int protected_blast_dcache_range (unsigned long,unsigned long) ;
 int protected_blast_icache_range (unsigned long,unsigned long) ;
 int protected_loongson2_blast_icache_range (unsigned long,unsigned long) ;
 int r4k_blast_dcache () ;
 int r4k_blast_icache () ;

__attribute__((used)) static inline void __local_r4k_flush_icache_range(unsigned long start,
        unsigned long end,
        unsigned int type,
        bool user)
{
 if (!cpu_has_ic_fills_f_dc) {
  if (type == R4K_INDEX ||
      (type & R4K_INDEX && end - start >= dcache_size)) {
   r4k_blast_dcache();
  } else {
   R4600_HIT_CACHEOP_WAR_IMPL;
   if (user)
    protected_blast_dcache_range(start, end);
   else
    blast_dcache_range(start, end);
  }
 }

 if (type == R4K_INDEX ||
     (type & R4K_INDEX && end - start > icache_size))
  r4k_blast_icache();
 else {
  switch (boot_cpu_type()) {
  case 128:
   protected_loongson2_blast_icache_range(start, end);
   break;

  default:
   if (user)
    protected_blast_icache_range(start, end);
   else
    blast_icache_range(start, end);
   break;
  }
 }
}
