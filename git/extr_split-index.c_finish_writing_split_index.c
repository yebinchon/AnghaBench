
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_index {int saved_cache_nr; int saved_cache; int * replace_bitmap; int * delete_bitmap; } ;
struct index_state {int cache_nr; int cache; } ;


 int ewah_free (int *) ;
 int free (int ) ;
 struct split_index* init_split_index (struct index_state*) ;

void finish_writing_split_index(struct index_state *istate)
{
 struct split_index *si = init_split_index(istate);

 ewah_free(si->delete_bitmap);
 ewah_free(si->replace_bitmap);
 si->delete_bitmap = ((void*)0);
 si->replace_bitmap = ((void*)0);
 free(istate->cache);
 istate->cache = si->saved_cache;
 istate->cache_nr = si->saved_cache_nr;
}
