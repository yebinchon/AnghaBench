
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct split_index {unsigned int saved_cache_nr; unsigned int nr_replacements; int * replace_bitmap; int * delete_bitmap; int ** saved_cache; scalar_t__ nr_deletions; TYPE_1__* base; } ;
struct index_state {unsigned int cache_nr; int ** cache; scalar_t__ cache_alloc; struct split_index* split_index; } ;
struct TYPE_2__ {unsigned int cache_nr; int cache; } ;


 int ADD_CACHE_KEEP_CACHE_TREE ;
 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_SKIP_DFCHECK ;
 int ALLOC_GROW (int **,unsigned int,scalar_t__) ;
 int COPY_ARRAY (int **,int ,unsigned int) ;
 int FREE_AND_NULL (int **) ;
 int add_index_entry (struct index_state*,int *,int) ;
 int ce_namelen (int *) ;
 int die (char*,unsigned int) ;
 int ewah_each_bit (int *,int ,struct index_state*) ;
 int ewah_free (int *) ;
 int mark_base_index_entries (TYPE_1__*) ;
 int mark_entry_for_delete ;
 int remove_marked_cache_entries (struct index_state*,int ) ;
 int replace_entry ;

void merge_base_index(struct index_state *istate)
{
 struct split_index *si = istate->split_index;
 unsigned int i;

 mark_base_index_entries(si->base);

 si->saved_cache = istate->cache;
 si->saved_cache_nr = istate->cache_nr;
 istate->cache_nr = si->base->cache_nr;
 istate->cache = ((void*)0);
 istate->cache_alloc = 0;
 ALLOC_GROW(istate->cache, istate->cache_nr, istate->cache_alloc);
 COPY_ARRAY(istate->cache, si->base->cache, istate->cache_nr);

 si->nr_deletions = 0;
 si->nr_replacements = 0;
 ewah_each_bit(si->replace_bitmap, replace_entry, istate);
 ewah_each_bit(si->delete_bitmap, mark_entry_for_delete, istate);
 if (si->nr_deletions)
  remove_marked_cache_entries(istate, 0);

 for (i = si->nr_replacements; i < si->saved_cache_nr; i++) {
  if (!ce_namelen(si->saved_cache[i]))
   die("corrupt link extension, entry %d should "
       "have non-zero length name", i);
  add_index_entry(istate, si->saved_cache[i],
    ADD_CACHE_OK_TO_ADD |
    ADD_CACHE_KEEP_CACHE_TREE |





    ADD_CACHE_SKIP_DFCHECK);
  si->saved_cache[i] = ((void*)0);
 }

 ewah_free(si->delete_bitmap);
 ewah_free(si->replace_bitmap);
 FREE_AND_NULL(si->saved_cache);
 si->delete_bitmap = ((void*)0);
 si->replace_bitmap = ((void*)0);
 si->saved_cache_nr = 0;
}
