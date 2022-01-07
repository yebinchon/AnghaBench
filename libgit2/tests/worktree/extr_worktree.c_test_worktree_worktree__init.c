
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_worktree ;
typedef int git_repository ;
typedef int git_reference ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {TYPE_2__* repo; } ;
struct TYPE_8__ {int workdir; } ;


 int GIT_BRANCH_LOCAL ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_5__ fixture ;
 scalar_t__ git__suffixcmp (int ,char*) ;
 int git_branch_lookup (int **,int *,char*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_reference_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_workdir (int *) ;
 int git_worktree_add (int **,TYPE_2__*,char*,int ,int *) ;
 int git_worktree_free (int *) ;

void test_worktree_worktree__init(void)
{
 git_worktree *wt;
 git_repository *repo;
 git_reference *branch;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../worktree-new"));
 cl_git_pass(git_worktree_add(&wt, fixture.repo, "worktree-new", path.ptr, ((void*)0)));


 cl_git_pass(git_repository_open(&repo, path.ptr));
 cl_assert(git__suffixcmp(git_repository_workdir(repo), "worktree-new/") == 0);
 cl_git_pass(git_branch_lookup(&branch, repo, "worktree-new", GIT_BRANCH_LOCAL));

 git_buf_dispose(&path);
 git_worktree_free(wt);
 git_reference_free(branch);
 git_repository_free(repo);
}
