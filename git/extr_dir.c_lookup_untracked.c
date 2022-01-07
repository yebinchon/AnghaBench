
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int dirs_nr; struct untracked_cache_dir** dirs; int dirs_alloc; int name; } ;
struct untracked_cache {int dir_created; } ;


 int ALLOC_GROW (struct untracked_cache_dir**,int,int ) ;
 int FLEX_ALLOC_MEM (struct untracked_cache_dir*,char const*,char const*,int) ;
 int MOVE_ARRAY (struct untracked_cache_dir**,struct untracked_cache_dir**,int) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static struct untracked_cache_dir *lookup_untracked(struct untracked_cache *uc,
          struct untracked_cache_dir *dir,
          const char *name, int len)
{
 int first, last;
 struct untracked_cache_dir *d;
 if (!dir)
  return ((void*)0);
 if (len && name[len - 1] == '/')
  len--;
 first = 0;
 last = dir->dirs_nr;
 while (last > first) {
  int cmp, next = first + ((last - first) >> 1);
  d = dir->dirs[next];
  cmp = strncmp(name, d->name, len);
  if (!cmp && strlen(d->name) > len)
   cmp = -1;
  if (!cmp)
   return d;
  if (cmp < 0) {
   last = next;
   continue;
  }
  first = next+1;
 }

 uc->dir_created++;
 FLEX_ALLOC_MEM(d, name, name, len);

 ALLOC_GROW(dir->dirs, dir->dirs_nr + 1, dir->dirs_alloc);
 MOVE_ARRAY(dir->dirs + first + 1, dir->dirs + first,
     dir->dirs_nr - first);
 dir->dirs_nr++;
 dir->dirs[first] = d;
 return d;
}
