
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sync_cache_range_w (unsigned long*,int) ;
 unsigned long*** mcpm_entry_early_pokes ;

void mcpm_set_early_poke(unsigned cpu, unsigned cluster,
    unsigned long poke_phys_addr, unsigned long poke_val)
{
 unsigned long *poke = &mcpm_entry_early_pokes[cluster][cpu][0];
 poke[0] = poke_phys_addr;
 poke[1] = poke_val;
 __sync_cache_range_w(poke, 2 * sizeof(*poke));
}
