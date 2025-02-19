
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int worktree; int repo; } ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_repository_head (int **,int ) ;
 int git_repository_set_head (int ,int ) ;

void test_worktree_refs__set_head_fails_when_worktree_wants_linked_repos_HEAD(void)
{
 git_reference *head;

 cl_git_pass(git_repository_head(&head, fixture.repo));
 cl_git_fail(git_repository_set_head(fixture.worktree, git_reference_name(head)));

 git_reference_free(head);
}
