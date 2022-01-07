
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {char* name; int ce_mode; } ;


 int DT_DIR ;
 int DT_REG ;
 int DT_UNKNOWN ;
 scalar_t__ S_ISGITLINK (int ) ;
 int ce_uptodate (struct cache_entry const*) ;
 struct cache_entry* index_file_exists (struct index_state*,char const*,int,int ) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int get_index_dtype(struct index_state *istate,
      const char *path, int len)
{
 int pos;
 const struct cache_entry *ce;

 ce = index_file_exists(istate, path, len, 0);
 if (ce) {
  if (!ce_uptodate(ce))
   return DT_UNKNOWN;
  if (S_ISGITLINK(ce->ce_mode))
   return DT_DIR;




  return DT_REG;
 }


 pos = index_name_pos(istate, path, len);
 if (pos >= 0)
  return DT_UNKNOWN;
 pos = -pos-1;
 while (pos < istate->cache_nr) {
  ce = istate->cache[pos++];
  if (strncmp(ce->name, path, len))
   break;
  if (ce->name[len] > '/')
   break;
  if (ce->name[len] < '/')
   continue;
  if (!ce_uptodate(ce))
   break;
  return DT_DIR;
 }
 return DT_UNKNOWN;
}
