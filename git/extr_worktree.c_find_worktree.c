
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;


 struct worktree* find_worktree_by_suffix (struct worktree**,char const*) ;
 int free (char*) ;
 int fspathcmp (char*,char const*) ;
 char* prefix_filename (char const*,char const*) ;
 char* real_path_if_valid (int ) ;
 char* real_pathdup (char const*,int ) ;

struct worktree *find_worktree(struct worktree **list,
          const char *prefix,
          const char *arg)
{
 struct worktree *wt;
 char *path;
 char *to_free = ((void*)0);

 if ((wt = find_worktree_by_suffix(list, arg)))
  return wt;

 if (prefix)
  arg = to_free = prefix_filename(prefix, arg);
 path = real_pathdup(arg, 0);
 if (!path) {
  free(to_free);
  return ((void*)0);
 }
 for (; *list; list++) {
  const char *wt_path = real_path_if_valid((*list)->path);

  if (wt_path && !fspathcmp(path, wt_path))
   break;
 }
 free(path);
 free(to_free);
 return *list;
}
