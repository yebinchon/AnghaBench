
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int git_worktree ;
struct TYPE_16__ {int oid; } ;
struct TYPE_17__ {TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
typedef int git_commit ;
struct TYPE_18__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_19__ {int workdir; } ;
struct TYPE_15__ {TYPE_4__* repo; } ;


 TYPE_3__ GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_13__ fixture ;
 int git_branch_create (TYPE_2__**,TYPE_4__*,char*,int *,int) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,char*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,TYPE_4__*,int *) ;
 int git_reference_free (TYPE_2__*) ;
 int git_repository_head (TYPE_2__**,TYPE_4__*) ;
 int git_worktree_add (int **,TYPE_4__*,char*,int ,int *) ;

void test_worktree_worktree__init_existing_branch(void)
{
 git_reference *head, *branch;
 git_commit *commit;
 git_worktree *wt;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_repository_head(&head, fixture.repo));
 cl_git_pass(git_commit_lookup(&commit, fixture.repo, &head->target.oid));
 cl_git_pass(git_branch_create(&branch, fixture.repo, "worktree-new", commit, 0));

 cl_git_pass(git_buf_joinpath(&path, fixture.repo->workdir, "../worktree-new"));
 cl_git_fail(git_worktree_add(&wt, fixture.repo, "worktree-new", path.ptr, ((void*)0)));

 git_buf_dispose(&path);
 git_commit_free(commit);
 git_reference_free(head);
 git_reference_free(branch);
}
