
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_2__ {int worktree; } ;


 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_reference_free (int *) ;
 int git_repository_head (int **,int ) ;

void test_worktree_refs__read_head(void)
{
 git_reference *head;

 cl_git_pass(git_repository_head(&head, fixture.worktree));

 git_reference_free(head);
}
