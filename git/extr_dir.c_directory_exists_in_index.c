
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {unsigned char* name; int ce_mode; } ;
typedef enum exist_status { ____Placeholder_exist_status } exist_status ;


 scalar_t__ S_ISGITLINK (int ) ;
 int directory_exists_in_index_icase (struct index_state*,char const*,int) ;
 scalar_t__ ignore_case ;
 int index_directory ;
 int index_gitdir ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int index_nonexistent ;
 scalar_t__ strncmp (unsigned char*,char const*,int) ;

__attribute__((used)) static enum exist_status directory_exists_in_index(struct index_state *istate,
         const char *dirname, int len)
{
 int pos;

 if (ignore_case)
  return directory_exists_in_index_icase(istate, dirname, len);

 pos = index_name_pos(istate, dirname, len);
 if (pos < 0)
  pos = -pos-1;
 while (pos < istate->cache_nr) {
  const struct cache_entry *ce = istate->cache[pos++];
  unsigned char endchar;

  if (strncmp(ce->name, dirname, len))
   break;
  endchar = ce->name[len];
  if (endchar > '/')
   break;
  if (endchar == '/')
   return index_directory;
  if (!endchar && S_ISGITLINK(ce->ce_mode))
   return index_gitdir;
 }
 return index_nonexistent;
}
