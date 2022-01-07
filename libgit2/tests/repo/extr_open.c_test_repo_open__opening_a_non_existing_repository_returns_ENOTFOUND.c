
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int git_repository_open (int **,char*) ;

void test_repo_open__opening_a_non_existing_repository_returns_ENOTFOUND(void)
{
 git_repository *repo;
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_open(&repo, "i-do-not/exist"));
}
