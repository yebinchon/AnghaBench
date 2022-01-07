
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int cache_changed; scalar_t__ cache; int cache_alloc; } ;
struct cache_entry {int dummy; } ;


 int ADD_CACHE_JUST_APPEND ;
 int ALLOC_GROW (scalar_t__,int,int ) ;
 int CE_ENTRY_ADDED ;
 int MOVE_ARRAY (scalar_t__,scalar_t__,int) ;
 int add_index_entry_with_check (struct index_state*,struct cache_entry*,int) ;
 int set_index_entry (struct index_state*,int,struct cache_entry*) ;

int add_index_entry(struct index_state *istate, struct cache_entry *ce, int option)
{
 int pos;

 if (option & ADD_CACHE_JUST_APPEND)
  pos = istate->cache_nr;
 else {
  int ret;
  ret = add_index_entry_with_check(istate, ce, option);
  if (ret <= 0)
   return ret;
  pos = ret - 1;
 }


 ALLOC_GROW(istate->cache, istate->cache_nr + 1, istate->cache_alloc);


 istate->cache_nr++;
 if (istate->cache_nr > pos + 1)
  MOVE_ARRAY(istate->cache + pos + 1, istate->cache + pos,
      istate->cache_nr - pos - 1);
 set_index_entry(istate, pos, ce);
 istate->cache_changed |= CE_ENTRY_ADDED;
 return 0;
}
