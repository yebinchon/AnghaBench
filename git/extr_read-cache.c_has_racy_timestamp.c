
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ is_racy_timestamp (struct index_state*,struct cache_entry*) ;

__attribute__((used)) static int has_racy_timestamp(struct index_state *istate)
{
 int entries = istate->cache_nr;
 int i;

 for (i = 0; i < entries; i++) {
  struct cache_entry *ce = istate->cache[i];
  if (is_racy_timestamp(istate, ce))
   return 1;
 }
 return 0;
}
