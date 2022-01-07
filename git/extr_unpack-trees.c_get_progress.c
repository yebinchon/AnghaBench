
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct unpack_trees_options {int verbose_update; int update; struct index_state result; } ;
struct progress {int dummy; } ;
struct cache_entry {int ce_flags; } ;


 int CE_UPDATE ;
 int CE_WT_REMOVE ;
 int _ (char*) ;
 struct progress* start_delayed_progress (int ,unsigned int) ;

__attribute__((used)) static struct progress *get_progress(struct unpack_trees_options *o)
{
 unsigned cnt = 0, total = 0;
 struct index_state *index = &o->result;

 if (!o->update || !o->verbose_update)
  return ((void*)0);

 for (; cnt < index->cache_nr; cnt++) {
  const struct cache_entry *ce = index->cache[cnt];
  if (ce->ce_flags & (CE_UPDATE | CE_WT_REMOVE))
   total++;
 }

 return start_delayed_progress(_("Updating files"), total);
}
