
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int COMMON_REPO ;
 TYPE_1__ GIT_BUF_INIT ;
 int WORKTREE_REPO ;
 int assert_worktree_valid (int *,int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_worktree_open__repository_through_gitdir(void)
{
 git_buf gitdir_path = GIT_BUF_INIT;
 git_repository *wt;

 cl_git_pass(git_buf_joinpath(&gitdir_path, COMMON_REPO, ".git"));
 cl_git_pass(git_buf_joinpath(&gitdir_path, gitdir_path.ptr, "worktrees"));
 cl_git_pass(git_buf_joinpath(&gitdir_path, gitdir_path.ptr, "testrepo-worktree"));

 cl_git_pass(git_repository_open(&wt, gitdir_path.ptr));
 assert_worktree_valid(wt, COMMON_REPO, WORKTREE_REPO);

 git_buf_dispose(&gitdir_path);
 git_repository_free(wt);
}
