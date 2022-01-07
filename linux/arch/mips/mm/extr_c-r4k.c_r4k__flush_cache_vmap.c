
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r4k_blast_dcache () ;

__attribute__((used)) static void r4k__flush_cache_vmap(void)
{
 r4k_blast_dcache();
}
