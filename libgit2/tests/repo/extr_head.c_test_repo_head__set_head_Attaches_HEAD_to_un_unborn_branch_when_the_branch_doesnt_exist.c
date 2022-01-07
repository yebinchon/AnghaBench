
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EUNBORNBRANCH ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_head (int **,int ) ;
 int git_repository_head_detached (int ) ;
 int git_repository_set_head (int ,char*) ;
 int repo ;

void test_repo_head__set_head_Attaches_HEAD_to_un_unborn_branch_when_the_branch_doesnt_exist(void)
{
 git_reference *head;

 cl_git_pass(git_repository_set_head(repo, "refs/heads/doesnt/exist/yet"));

 cl_assert_equal_i(0, git_repository_head_detached(repo));

 cl_assert_equal_i(GIT_EUNBORNBRANCH, git_repository_head(&head, repo));
}
