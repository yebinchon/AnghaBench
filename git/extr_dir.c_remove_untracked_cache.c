
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; int * untracked; } ;


 int UNTRACKED_CHANGED ;
 int free_untracked_cache (int *) ;

void remove_untracked_cache(struct index_state *istate)
{
 if (istate->untracked) {
  free_untracked_cache(istate->untracked);
  istate->untracked = ((void*)0);
  istate->cache_changed |= UNTRACKED_CHANGED;
 }
}
