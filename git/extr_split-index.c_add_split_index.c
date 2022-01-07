
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; int split_index; } ;


 int SPLIT_INDEX_ORDERED ;
 int init_split_index (struct index_state*) ;

void add_split_index(struct index_state *istate)
{
 if (!istate->split_index) {
  init_split_index(istate);
  istate->cache_changed |= SPLIT_INDEX_ORDERED;
 }
}
