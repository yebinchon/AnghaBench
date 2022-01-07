
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int worktree; } ;


 int die (char*,int ,char const*) ;
 int git_work_tree_initialized ;
 char* real_path (char const*) ;
 int repo_set_worktree (TYPE_1__*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 TYPE_1__* the_repository ;

void set_git_work_tree(const char *new_work_tree)
{
 if (git_work_tree_initialized) {
  new_work_tree = real_path(new_work_tree);
  if (strcmp(new_work_tree, the_repository->worktree))
   die("internal error: work tree has already been set\n"
       "Current worktree: %s\nNew worktree: %s",
       the_repository->worktree, new_work_tree);
  return;
 }
 git_work_tree_initialized = 1;
 repo_set_worktree(the_repository, new_work_tree);
}
