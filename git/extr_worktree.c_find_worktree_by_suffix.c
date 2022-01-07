
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char* path; } ;


 int fspathcmp (char const*,char const*) ;
 scalar_t__ is_dir_sep (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static struct worktree *find_worktree_by_suffix(struct worktree **list,
      const char *suffix)
{
 struct worktree *found = ((void*)0);
 int nr_found = 0, suffixlen;

 suffixlen = strlen(suffix);
 if (!suffixlen)
  return ((void*)0);

 for (; *list && nr_found < 2; list++) {
  const char *path = (*list)->path;
  int pathlen = strlen(path);
  int start = pathlen - suffixlen;


  if ((!start || (start > 0 && is_dir_sep(path[start - 1]))) &&
      !fspathcmp(suffix, path + start)) {
   found = *list;
   nr_found++;
  }
 }
 return nr_found == 1 ? found : ((void*)0);
}
