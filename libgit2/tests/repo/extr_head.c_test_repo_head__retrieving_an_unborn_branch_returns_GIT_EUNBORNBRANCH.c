
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EUNBORNBRANCH ;
 int NON_EXISTING_HEAD ;
 int cl_assert_equal_i (int ,int ) ;
 int git_repository_head (int **,int ) ;
 int make_head_unborn (int ,int ) ;
 int repo ;

void test_repo_head__retrieving_an_unborn_branch_returns_GIT_EUNBORNBRANCH(void)
{
 git_reference *head;

 make_head_unborn(repo, NON_EXISTING_HEAD);

 cl_assert_equal_i(GIT_EUNBORNBRANCH, git_repository_head(&head, repo));
}
