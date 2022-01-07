
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; int ce_mode; } ;


 int S_ISGITLINK (int ) ;
 int _ (char*) ;
 int ce_namelen (struct cache_entry*) ;
 int die (int ,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int) ;

void die_in_unpopulated_submodule(const struct index_state *istate,
      const char *prefix)
{
 int i, prefixlen;

 if (!prefix)
  return;

 prefixlen = strlen(prefix);

 for (i = 0; i < istate->cache_nr; i++) {
  struct cache_entry *ce = istate->cache[i];
  int ce_len = ce_namelen(ce);

  if (!S_ISGITLINK(ce->ce_mode))
   continue;
  if (prefixlen <= ce_len)
   continue;
  if (strncmp(ce->name, prefix, ce_len))
   continue;
  if (prefix[ce_len] != '/')
   continue;

  die(_("in unpopulated submodule '%s'"), ce->name);
 }
}
