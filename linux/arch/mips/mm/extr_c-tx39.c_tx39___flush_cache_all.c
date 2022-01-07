
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tx39_blast_dcache () ;
 int tx39_blast_icache () ;

__attribute__((used)) static inline void tx39___flush_cache_all(void)
{
 tx39_blast_dcache();
 tx39_blast_icache();
}
