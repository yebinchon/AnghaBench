
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* worktree_path; } ;
typedef TYPE_1__ git_worktree ;


 int assert (TYPE_1__ const*) ;

const char *git_worktree_path(const git_worktree *wt)
{
 assert(wt);
 return wt->worktree_path;
}
