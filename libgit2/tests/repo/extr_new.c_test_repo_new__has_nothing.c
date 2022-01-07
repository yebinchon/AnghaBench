
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_is_bare (int *) ;
 int git_repository_new (int **) ;
 int git_repository_path (int *) ;
 int git_repository_workdir (int *) ;

void test_repo_new__has_nothing(void)
{
 git_repository *repo;

 cl_git_pass(git_repository_new(&repo));
 cl_assert_equal_b(1, git_repository_is_bare(repo));
 cl_assert_equal_p(((void*)0), git_repository_path(repo));
 cl_assert_equal_p(((void*)0), git_repository_workdir(repo));
 git_repository_free(repo);
}
