
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert_equal_b (int,int ) ;
 int cl_git_pass (int ) ;
 int clar_sandbox_path () ;
 int git_repository_free (int *) ;
 int git_repository_is_bare (int *) ;
 int git_repository_new (int **) ;
 int git_repository_set_workdir (int *,int ,int ) ;

void test_repo_new__is_bare_until_workdir_set(void)
{
 git_repository *repo;

 cl_git_pass(git_repository_new(&repo));
 cl_assert_equal_b(1, git_repository_is_bare(repo));

 cl_git_pass(git_repository_set_workdir(repo, clar_sandbox_path(), 0));
 cl_assert_equal_b(0, git_repository_is_bare(repo));

 git_repository_free(repo);
}
