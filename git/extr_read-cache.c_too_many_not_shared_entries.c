
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int index; } ;
typedef int int64_t ;


 int default_max_percent_split_change ;
 int git_config_get_max_percent_split_change () ;

__attribute__((used)) static int too_many_not_shared_entries(struct index_state *istate)
{
 int i, not_shared = 0;
 int max_split = git_config_get_max_percent_split_change();

 switch (max_split) {
 case -1:

  max_split = default_max_percent_split_change;
  break;
 case 0:
  return 1;
 case 100:
  return 0;
 default:
  break;
 }


 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  if (!ce->index)
   not_shared++;
 }

 return (int64_t)istate->cache_nr * max_split < (int64_t)not_shared * 100;
}
