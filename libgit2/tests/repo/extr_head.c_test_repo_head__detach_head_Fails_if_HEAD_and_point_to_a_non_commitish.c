
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_HEAD_FILE ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_symbolic_create (int **,int ,int ,char*,int,int *) ;
 int git_repository_detach_head (int ) ;
 int repo ;

void test_repo_head__detach_head_Fails_if_HEAD_and_point_to_a_non_commitish(void)
{
 git_reference *head;

 cl_git_pass(git_reference_symbolic_create(&head, repo, GIT_HEAD_FILE, "refs/tags/point_to_blob", 1, ((void*)0)));

 cl_git_fail(git_repository_detach_head(repo));

 git_reference_free(head);
}
