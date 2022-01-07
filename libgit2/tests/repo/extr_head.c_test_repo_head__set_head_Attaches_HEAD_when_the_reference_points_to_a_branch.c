
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_repository_head (int **,int ) ;
 int git_repository_head_detached (int ) ;
 int git_repository_set_head (int ,char*) ;
 int repo ;

void test_repo_head__set_head_Attaches_HEAD_when_the_reference_points_to_a_branch(void)
{
 git_reference *head;

 cl_git_pass(git_repository_set_head(repo, "refs/heads/br2"));

 cl_assert_equal_i(0, git_repository_head_detached(repo));

 cl_git_pass(git_repository_head(&head, repo));
 cl_assert_equal_s("refs/heads/br2", git_reference_name(head));

 git_reference_free(head);
}
