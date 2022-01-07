
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_is_empty (int *) ;
 int git_repository_open (int **,int ) ;

void test_repo_getters__is_empty_can_detect_used_repositories(void)
{
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));

 cl_assert_equal_i(0, git_repository_is_empty(repo));

 git_repository_free(repo);
}
