
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int GITMODULES_FILE ;
 scalar_t__ ce_namelen (struct cache_entry const*) ;
 int index_name_pos (struct index_state const*,int ,scalar_t__) ;
 int strcmp (int ,int ) ;
 scalar_t__ strlen (int ) ;

int is_gitmodules_unmerged(const struct index_state *istate)
{
 int pos = index_name_pos(istate, GITMODULES_FILE, strlen(GITMODULES_FILE));
 if (pos < 0) {
  pos = -1 - pos;
  if (istate->cache_nr > pos) {
   const struct cache_entry *ce = istate->cache[pos];
   if (ce_namelen(ce) == strlen(GITMODULES_FILE) &&
       !strcmp(ce->name, GITMODULES_FILE))
    return 1;
  }
 }

 return 0;
}
