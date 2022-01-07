
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_commit ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_7__ {int worktree; } ;


 int GIT_BRANCH_LOCAL ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_4__ fixture ;
 int git_branch_create (int **,int ,char*,int *,int ) ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int ) ;
 int git_path_exists (int ) ;
 scalar_t__ git_reference_cmp (int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_commondir (int ) ;
 int git_repository_head (int **,int ) ;

void test_worktree_refs__creating_refs_uses_commondir(void)
{
    git_reference *head, *branch, *lookup;
    git_commit *commit;
    git_buf refpath = GIT_BUF_INIT;

    cl_git_pass(git_buf_joinpath(&refpath,
         git_repository_commondir(fixture.worktree), "refs/heads/testbranch"));
    cl_assert(!git_path_exists(refpath.ptr));

    cl_git_pass(git_repository_head(&head, fixture.worktree));
    cl_git_pass(git_commit_lookup(&commit, fixture.worktree, git_reference_target(head)));
    cl_git_pass(git_branch_create(&branch, fixture.worktree, "testbranch", commit, 0));
    cl_git_pass(git_branch_lookup(&lookup, fixture.worktree, "testbranch", GIT_BRANCH_LOCAL));
    cl_assert(git_reference_cmp(branch, lookup) == 0);
    cl_assert(git_path_exists(refpath.ptr));

    git_reference_free(lookup);
    git_reference_free(branch);
    git_reference_free(head);
    git_commit_free(commit);
    git_buf_dispose(&refpath);
}
