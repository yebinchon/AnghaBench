
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {scalar_t__ repo; } ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 scalar_t__ git_reference_cmp (int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,scalar_t__,char*) ;
 scalar_t__ git_reference_owner (int *) ;
 int git_repository_head_for_worktree (int **,scalar_t__,char*) ;

void test_worktree_repository__head(void)
{
 git_reference *ref, *head;

 cl_git_pass(git_reference_lookup(&ref, fixture.repo, "refs/heads/testrepo-worktree"));
 cl_git_pass(git_repository_head_for_worktree(&head, fixture.repo, "testrepo-worktree"));
 cl_assert(git_reference_cmp(ref, head) == 0);
 cl_assert(git_reference_owner(ref) == fixture.repo);

 git_reference_free(ref);
 git_reference_free(head);
}
