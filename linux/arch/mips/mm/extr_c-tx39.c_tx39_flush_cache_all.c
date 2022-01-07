
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_has_dc_aliases ;
 int tx39_blast_dcache () ;

__attribute__((used)) static inline void tx39_flush_cache_all(void)
{
 if (!cpu_has_dc_aliases)
  return;

 tx39_blast_dcache();
}
