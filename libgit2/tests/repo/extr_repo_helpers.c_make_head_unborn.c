
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_HEAD_FILE ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int *,int ,char const*,int,int *) ;

void make_head_unborn(git_repository* repo, const char *target)
{
 git_reference *head;

 cl_git_pass(git_reference_symbolic_create(&head, repo, GIT_HEAD_FILE, target, 1, ((void*)0)));
 git_reference_free(head);
}
