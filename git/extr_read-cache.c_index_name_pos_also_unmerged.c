
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;


 int ce_stage (struct cache_entry*) ;
 scalar_t__ compare_name (struct cache_entry*,char const*,int) ;
 int index_name_pos (struct index_state*,char const*,int) ;

__attribute__((used)) static int index_name_pos_also_unmerged(struct index_state *istate,
 const char *path, int namelen)
{
 int pos = index_name_pos(istate, path, namelen);
 struct cache_entry *ce;

 if (pos >= 0)
  return pos;


 pos = -1 - pos;
 if (pos >= istate->cache_nr ||
   compare_name((ce = istate->cache[pos]), path, namelen))
  return -1;


 if (ce_stage(ce) == 1 && pos + 1 < istate->cache_nr &&
   ce_stage((ce = istate->cache[pos + 1])) == 2 &&
   !compare_name(ce, path, namelen))
  pos++;
 return pos;
}
