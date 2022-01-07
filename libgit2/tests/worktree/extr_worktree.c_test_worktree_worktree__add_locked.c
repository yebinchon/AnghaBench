
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int lock; } ;
typedef TYPE_1__ git_worktree_add_options ;
typedef int git_worktree ;
typedef int git_repository ;
typedef int git_reference ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_13__ {TYPE_3__* repo; } ;
struct TYPE_12__ {int workdir; } ;


 int GIT_BRANCH_LOCAL ;
 TYPE_2__ GIT_BUF_INIT ;
 TYPE_1__ GIT_WORKTREE_ADD_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_7__ fixture ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 int git_branch_lookup (int **,int *,char*,int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_workdir (int *) ;
 int git_worktree_add (int **,TYPE_3__*,char*,int ,TYPE_1__*) ;
 int git_worktree_free (int *) ;
 int git_worktree_is_locked (int *,int *) ;

void test_worktree_worktree__add_locked(void)
{
 git_worktree *wt;
 git_repository *repo;
 git_reference *branch;
 git_buf path = GIT_BUF_INIT;
 git_worktree_add_options opts = GIT_WORKTREE_ADD_OPTIONS_INIT;

 opts.lock = 1;

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../worktree-locked"));
 cl_git_pass(git_worktree_add(&wt, fixture.repo, "worktree-locked", path.ptr, &opts));


 cl_assert(git_worktree_is_locked(((void*)0), wt));
 cl_git_pass(git_repository_open(&repo, path.ptr));
 cl_assert(git__suffixcmp(git_repository_workdir(repo), "worktree-locked/") == 0);
 cl_git_pass(git_branch_lookup(&branch, repo, "worktree-locked", GIT_BRANCH_LOCAL));

 git_buf_dispose(&path);
 git_worktree_free(wt);
 git_reference_free(branch);
 git_repository_free(repo);
}
