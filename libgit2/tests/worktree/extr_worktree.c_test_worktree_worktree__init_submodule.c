
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_worktree ;
struct TYPE_12__ {int gitdir; int commondir; int workdir; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cleanup_fixture_worktree (int *) ;
 int fixture ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_path_prettify_dir (TYPE_2__*,int ,int *) ;
 int git_repository_free (TYPE_1__*) ;
 int git_repository_open (TYPE_1__**,int ) ;
 int git_repository_open_from_worktree (TYPE_1__**,int *) ;
 int git_worktree_add (int **,TYPE_1__*,char*,int ,int *) ;
 int git_worktree_free (int *) ;
 TYPE_1__* setup_fixture_submod2 () ;

void test_worktree_worktree__init_submodule(void)
{
 git_repository *repo, *sm, *wt;
 git_worktree *worktree;
 git_buf path = GIT_BUF_INIT;

 cleanup_fixture_worktree(&fixture);
 repo = setup_fixture_submod2();

 cl_git_pass(git_buf_joinpath(&path, repo->workdir, "sm_unchanged"));
 cl_git_pass(git_repository_open(&sm, path.ptr));
 cl_git_pass(git_buf_joinpath(&path, repo->workdir, "../worktree/"));
 cl_git_pass(git_worktree_add(&worktree, sm, "repo-worktree", path.ptr, ((void*)0)));
 cl_git_pass(git_repository_open_from_worktree(&wt, worktree));

 cl_git_pass(git_path_prettify_dir(&path, path.ptr, ((void*)0)));
 cl_assert_equal_s(path.ptr, wt->workdir);
 cl_git_pass(git_path_prettify_dir(&path, sm->commondir, ((void*)0)));
 cl_assert_equal_s(sm->commondir, wt->commondir);

 cl_git_pass(git_buf_joinpath(&path, sm->gitdir, "worktrees/repo-worktree/"));
 cl_assert_equal_s(path.ptr, wt->gitdir);

 git_buf_dispose(&path);
 git_worktree_free(worktree);
 git_repository_free(sm);
 git_repository_free(wt);
}
