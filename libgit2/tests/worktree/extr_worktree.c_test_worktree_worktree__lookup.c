
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int commondir_path; int gitlink_path; int parent_path; int gitdir_path; } ;
typedef TYPE_2__ git_worktree ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_15__ {TYPE_5__* repo; TYPE_1__* worktree; } ;
struct TYPE_14__ {int commondir; int gitdir; int workdir; } ;
struct TYPE_11__ {int gitlink; } ;


 TYPE_3__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 TYPE_9__ fixture ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char*) ;
 int git_worktree_free (TYPE_2__*) ;
 int git_worktree_lookup (TYPE_2__**,TYPE_5__*,char*) ;

void test_worktree_worktree__lookup(void)
{
 git_worktree *wt;
 git_buf gitdir_path = GIT_BUF_INIT;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));

 cl_git_pass(git_buf_joinpath(&gitdir_path, fixture.repo->commondir, "worktrees/testrepo-worktree/"));

 cl_assert_equal_s(wt->gitdir_path, gitdir_path.ptr);
 cl_assert_equal_s(wt->parent_path, fixture.repo->workdir);
 cl_assert_equal_s(wt->gitlink_path, fixture.worktree->gitlink);
 cl_assert_equal_s(wt->commondir_path, fixture.repo->gitdir);
 cl_assert_equal_s(wt->commondir_path, fixture.repo->commondir);

 git_buf_dispose(&gitdir_path);
 git_worktree_free(wt);
}
