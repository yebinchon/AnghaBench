
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int ce_stage (struct cache_entry const*) ;
 int index_name_pos (struct index_state*,char const*,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int unmerged_mask(struct index_state *istate, const char *path)
{
 int pos, mask;
 const struct cache_entry *ce;

 pos = index_name_pos(istate, path, strlen(path));
 if (0 <= pos)
  return 0;

 mask = 0;
 pos = -pos-1;
 while (pos < istate->cache_nr) {
  ce = istate->cache[pos++];
  if (strcmp(ce->name, path) || !ce_stage(ce))
   break;
  mask |= (1 << (ce_stage(ce) - 1));
 }
 return mask;
}
