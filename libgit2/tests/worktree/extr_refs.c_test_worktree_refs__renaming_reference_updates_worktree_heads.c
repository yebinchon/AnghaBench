
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int worktree; int repo; } ;


 int GIT_BRANCH_LOCAL ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_branch_lookup (int **,int ,char*,int ) ;
 int git_reference_free (int *) ;
 int git_reference_rename (int **,int *,char*,int ,int *) ;
 int git_repository_head (int **,int ) ;

void test_worktree_refs__renaming_reference_updates_worktree_heads(void)
{
 git_reference *head, *branch, *renamed;

 cl_git_pass(git_branch_lookup(&branch, fixture.repo,
      "testrepo-worktree", GIT_BRANCH_LOCAL));
 cl_git_pass(git_reference_rename(&renamed, branch, "refs/heads/renamed", 0, ((void*)0)));
 cl_git_pass(git_repository_head(&head, fixture.worktree));

 git_reference_free(head);
 git_reference_free(branch);
 git_reference_free(renamed);
}
