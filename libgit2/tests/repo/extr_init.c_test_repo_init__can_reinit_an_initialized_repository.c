
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int * _repo ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_path (int *) ;

void test_repo_init__can_reinit_an_initialized_repository(void)
{
 git_repository *reinit;

 cl_set_cleanup(&cleanup_repository, "extended");

 cl_git_pass(git_futils_mkdir("extended", 0775, 0));
 cl_git_pass(git_repository_init(&_repo, "extended", 0));

 cl_git_pass(git_repository_init(&reinit, "extended", 0));

 cl_assert_equal_s(git_repository_path(_repo), git_repository_path(reinit));

 git_repository_free(reinit);
}
