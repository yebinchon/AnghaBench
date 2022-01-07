
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int * _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;

void test_repo_init__reinit_doesnot_overwrite_ignorecase(void)
{
 git_config *config;
 int current_value;


 cl_set_cleanup(&cleanup_repository, "not.overwrite.git");
 cl_git_pass(git_repository_init(&_repo, "not.overwrite.git", 1));


 git_repository_config(&config, _repo);
 git_config_set_int32(config, "core.ignorecase", 42);
 git_config_free(config);
 git_repository_free(_repo);
 _repo = ((void*)0);


 cl_git_pass(git_repository_init(&_repo, "not.overwrite.git", 1));
 git_repository_config(&config, _repo);


 cl_git_pass(git_config_get_int32(&current_value, config, "core.ignorecase"));
 cl_assert_equal_i(42, current_value);

 git_config_free(config);
}
