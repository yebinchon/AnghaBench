
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMORY_RESERVED ;
 int MIN_MEMORY_FOR_CACHE ;
 int MIN_MEMORY_FOR_METAFILES ;
 int MIN_MEMORY_FOR_WILDCARD_CACHE ;
 double entry_memory ;
 int free_cache () ;
 int free_metafiles () ;
 long long init_memory ;
 int max_memory ;
 int memory_for_cache ;
 double memory_for_entries ;
 int memory_for_metafiles ;
 int memory_for_wildcard_cache ;

void redistribute_memory (void) {
  if (entry_memory <= 0.8 * memory_for_entries) return;
  memory_for_metafiles /= 2;
  if (memory_for_metafiles < MIN_MEMORY_FOR_METAFILES) {
    memory_for_metafiles = MIN_MEMORY_FOR_METAFILES;
  }
  memory_for_cache /= 2;
  if (memory_for_cache < MIN_MEMORY_FOR_CACHE) {
    memory_for_cache = MIN_MEMORY_FOR_CACHE;
  }
  memory_for_wildcard_cache /= 2;
  if (memory_for_wildcard_cache < MIN_MEMORY_FOR_WILDCARD_CACHE) {
    memory_for_wildcard_cache = MIN_MEMORY_FOR_WILDCARD_CACHE;
  }
  memory_for_entries = (long long) ((1 - MEMORY_RESERVED) * max_memory) - memory_for_cache - memory_for_metafiles - init_memory;
  free_cache ();
  free_metafiles ();
}
