
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int repo; } ;


 int cl_assert (int ) ;
 int cl_git_fail (int ) ;
 TYPE_1__ fixture ;
 int git_repository_head_for_worktree (int **,int ,char*) ;

void test_worktree_repository__head_fails_for_invalid_worktree(void)
{
 git_reference *head = ((void*)0);

 cl_git_fail(git_repository_head_for_worktree(&head, fixture.repo, "invalid"));
 cl_assert(head == ((void*)0));
}
