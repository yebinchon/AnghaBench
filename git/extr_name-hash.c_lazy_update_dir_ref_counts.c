
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lazy_entry {TYPE_1__* dir; } ;
struct index_state {int cache_nr; } ;
struct TYPE_2__ {int nr; } ;



__attribute__((used)) static inline void lazy_update_dir_ref_counts(
 struct index_state *istate,
 struct lazy_entry *lazy_entries)
{
 int k;

 for (k = 0; k < istate->cache_nr; k++) {
  if (lazy_entries[k].dir)
   lazy_entries[k].dir->nr++;
 }
}
