
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int ce_namelen (struct cache_entry*) ;
 int index_name_pos (struct index_state const*,char const*,int) ;
 int memcmp (int ,char const*,int) ;

int index_name_is_other(const struct index_state *istate, const char *name,
  int namelen)
{
 int pos;
 if (namelen && name[namelen - 1] == '/')
  namelen--;
 pos = index_name_pos(istate, name, namelen);
 if (0 <= pos)
  return 0;
 pos = -pos - 1;
 if (pos < istate->cache_nr) {
  struct cache_entry *ce = istate->cache[pos];
  if (ce_namelen(ce) == namelen &&
      !memcmp(ce->name, name, namelen))
   return 0;
 }
 return 1;
}
