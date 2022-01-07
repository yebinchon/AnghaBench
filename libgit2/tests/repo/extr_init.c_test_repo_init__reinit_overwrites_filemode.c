
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int cl_repo_get_bool (int *,char*) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;

void test_repo_init__reinit_overwrites_filemode(void)
{
 int expected = cl_is_chmod_supported(), current_value;


 cl_set_cleanup(&cleanup_repository, "overwrite.git");
 cl_git_pass(git_repository_init(&_repo, "overwrite.git", 1));


 cl_repo_set_bool(_repo, "core.filemode", !expected);

 git_repository_free(_repo);
 _repo = ((void*)0);


 cl_git_pass(git_repository_init(&_repo, "overwrite.git", 1));


 current_value = cl_repo_get_bool(_repo, "core.filemode");
 cl_assert_equal_i(expected, current_value);
}
