
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_15__ {int gitlink_path; } ;
typedef TYPE_2__ git_worktree ;
struct TYPE_16__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_17__ {int workdir; } ;
struct TYPE_14__ {int gitlink; } ;
struct TYPE_13__ {TYPE_1__* worktree; TYPE_5__* repo; } ;


 TYPE_3__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_11__ fixture ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char*) ;
 int git_worktree_add (TYPE_2__**,TYPE_5__*,char*,int ,int *) ;
 int git_worktree_free (TYPE_2__*) ;
 int git_worktree_lookup (TYPE_2__**,TYPE_5__*,char*) ;

void test_worktree_worktree__init_existing_worktree(void)
{
 git_worktree *wt;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../worktree-new"));
 cl_git_fail(git_worktree_add(&wt, fixture.repo, "testrepo-worktree", path.ptr, ((void*)0)));

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 cl_assert_equal_s(wt->gitlink_path, fixture.worktree->gitlink);

 git_buf_dispose(&path);
 git_worktree_free(wt);
}
