
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_status_options ;
typedef int git_repository ;


 TYPE_1__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ;
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 int cb_status__count ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int git_status_foreach_ext (int *,TYPE_1__*,int ,int*) ;
 int p_unlink (char*) ;

void test_status_worktree__simple_delete(void)
{
    git_repository *repo = cl_git_sandbox_init("renames");
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 int count;

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH |
  GIT_STATUS_OPT_EXCLUDE_SUBMODULES |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;

 count = 0;
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__count, &count) );
 cl_assert_equal_i(0, count);

 cl_must_pass(p_unlink("renames/untimely.txt"));

 count = 0;
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__count, &count) );
 cl_assert_equal_i(1, count);
}
