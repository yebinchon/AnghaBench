
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __pa_symbol (void*) ;
 unsigned long** mcpm_entry_vectors ;
 int sync_cache_w (unsigned long*) ;

void mcpm_set_entry_vector(unsigned cpu, unsigned cluster, void *ptr)
{
 unsigned long val = ptr ? __pa_symbol(ptr) : 0;
 mcpm_entry_vectors[cluster][cpu] = val;
 sync_cache_w(&mcpm_entry_vectors[cluster][cpu]);
}
