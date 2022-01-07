
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct split_index {int saved_cache_nr; struct cache_entry** saved_cache; TYPE_1__* base; void* replace_bitmap; void* delete_bitmap; } ;
struct index_state {int cache_nr; int drop_cache_tree; struct cache_entry** cache; } ;
struct cache_entry {int index; int ce_flags; scalar_t__ ce_namelen; int oid; int name; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;


 int ALLOC_GROW (struct cache_entry**,int,int) ;
 int BUG (char*,int,int) ;
 int CE_MATCHED ;
 int CE_REMOVE ;
 int CE_STRIP_NAME ;
 int CE_UPDATE_IN_BASE ;
 int assert (int) ;
 int ce_uptodate (struct cache_entry*) ;
 scalar_t__ compare_ce_content (struct cache_entry*,struct cache_entry*) ;
 int discard_cache_entry (struct cache_entry*) ;
 void* ewah_new () ;
 int ewah_set (void*,int) ;
 struct split_index* init_split_index (struct index_state*) ;
 scalar_t__ is_null_oid (int *) ;
 scalar_t__ is_racy_timestamp (struct index_state*,struct cache_entry*) ;
 scalar_t__ strcmp (int ,int ) ;

void prepare_to_write_split_index(struct index_state *istate)
{
 struct split_index *si = init_split_index(istate);
 struct cache_entry **entries = ((void*)0), *ce;
 int i, nr_entries = 0, nr_alloc = 0;

 si->delete_bitmap = ewah_new();
 si->replace_bitmap = ewah_new();

 if (si->base) {







  for (i = 0; i < istate->cache_nr; i++) {
   struct cache_entry *base;
   ce = istate->cache[i];
   if (!ce->index) {
    continue;
   }
   if (ce->index > si->base->cache_nr) {
    BUG("ce refers to a shared ce at %d, which is beyond the shared index size %d",
        ce->index, si->base->cache_nr);
   }
   ce->ce_flags |= CE_MATCHED;
   base = si->base->cache[ce->index - 1];
   if (ce == base) {

    if (ce->ce_flags & CE_UPDATE_IN_BASE) {
    } else if (!ce_uptodate(ce) &&
        is_racy_timestamp(istate, ce)) {







     ce->ce_flags |= CE_UPDATE_IN_BASE;
    } else {






    }
    continue;
   }
   if (ce->ce_namelen != base->ce_namelen ||
       strcmp(ce->name, base->name)) {
    ce->index = 0;
    continue;
   }





   if (ce->ce_flags & CE_UPDATE_IN_BASE) {
   } else if (!ce_uptodate(ce) &&
       is_racy_timestamp(istate, ce)) {






    ce->ce_flags |= CE_UPDATE_IN_BASE;
   } else {
    if (compare_ce_content(ce, base))
     ce->ce_flags |= CE_UPDATE_IN_BASE;
   }
   discard_cache_entry(base);
   si->base->cache[ce->index - 1] = ce;
  }
  for (i = 0; i < si->base->cache_nr; i++) {
   ce = si->base->cache[i];
   if ((ce->ce_flags & CE_REMOVE) ||
       !(ce->ce_flags & CE_MATCHED))
    ewah_set(si->delete_bitmap, i);
   else if (ce->ce_flags & CE_UPDATE_IN_BASE) {
    ewah_set(si->replace_bitmap, i);
    ce->ce_flags |= CE_STRIP_NAME;
    ALLOC_GROW(entries, nr_entries+1, nr_alloc);
    entries[nr_entries++] = ce;
   }
   if (is_null_oid(&ce->oid))
    istate->drop_cache_tree = 1;
  }
 }

 for (i = 0; i < istate->cache_nr; i++) {
  ce = istate->cache[i];
  if ((!si->base || !ce->index) && !(ce->ce_flags & CE_REMOVE)) {
   assert(!(ce->ce_flags & CE_STRIP_NAME));
   ALLOC_GROW(entries, nr_entries+1, nr_alloc);
   entries[nr_entries++] = ce;
  }
  ce->ce_flags &= ~CE_MATCHED;
 }





 si->saved_cache = istate->cache;
 si->saved_cache_nr = istate->cache_nr;
 istate->cache = entries;
 istate->cache_nr = nr_entries;
}
