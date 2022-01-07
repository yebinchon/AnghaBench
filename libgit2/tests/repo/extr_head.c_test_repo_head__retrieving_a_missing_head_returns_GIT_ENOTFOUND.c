
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int delete_head (int ) ;
 int git_repository_head (int **,int ) ;
 int repo ;

void test_repo_head__retrieving_a_missing_head_returns_GIT_ENOTFOUND(void)
{
 git_reference *head;

 delete_head(repo);

 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_head(&head, repo));
}
