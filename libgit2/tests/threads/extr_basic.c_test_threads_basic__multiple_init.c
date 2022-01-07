
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_libgit2_init () ;
 int git_libgit2_shutdown () ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_threads_basic__multiple_init(void)
{
 git_repository *nested_repo;

 git_libgit2_init();
 cl_git_pass(git_repository_open(&nested_repo, cl_fixture("testrepo.git")));
 git_repository_free(nested_repo);

 git_libgit2_shutdown();
 cl_git_pass(git_repository_open(&nested_repo, cl_fixture("testrepo.git")));
 git_repository_free(nested_repo);
}
