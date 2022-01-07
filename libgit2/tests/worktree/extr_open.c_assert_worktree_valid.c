
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gitdir; int gitlink; int workdir; int is_worktree; } ;
typedef TYPE_1__ git_repository ;


 int cl_assert (int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_sandbox_path (int,char const*,char*,...) ;

__attribute__((used)) static void assert_worktree_valid(git_repository *wt, const char *parentdir, const char *wtdir)
{
 cl_assert(wt->is_worktree);

 cl_assert_equal_s(wt->workdir, cl_git_sandbox_path(1, wtdir, ((void*)0)));
 cl_assert_equal_s(wt->gitlink, cl_git_sandbox_path(0, wtdir, ".git", ((void*)0)));
 cl_assert_equal_s(wt->gitdir, cl_git_sandbox_path(1, parentdir, ".git", "worktrees", wtdir, ((void*)0)));
}
