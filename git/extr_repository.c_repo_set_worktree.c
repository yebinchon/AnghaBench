
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int worktree; } ;


 int real_pathdup (char const*,int) ;
 int trace2_def_repo (struct repository*) ;

void repo_set_worktree(struct repository *repo, const char *path)
{
 repo->worktree = real_pathdup(path, 1);

 trace2_def_repo(repo);
}
