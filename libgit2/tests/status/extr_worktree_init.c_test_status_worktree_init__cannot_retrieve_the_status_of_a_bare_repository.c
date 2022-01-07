
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_EBAREREPO ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree_init__cannot_retrieve_the_status_of_a_bare_repository(void)
{
 git_repository *repo;
 unsigned int status = 0;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));
 cl_assert_equal_i(GIT_EBAREREPO, git_status_file(&status, repo, "dummy"));
 git_repository_free(repo);
}
