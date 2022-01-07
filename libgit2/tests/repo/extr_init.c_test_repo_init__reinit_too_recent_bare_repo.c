
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int _repo ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_repository_config (int **,int ) ;
 int git_repository_free (int ) ;
 int git_repository_init (int *,char*,int) ;

void test_repo_init__reinit_too_recent_bare_repo(void)
{
 git_config *config;


 cl_git_pass(git_repository_init(&_repo, "reinit.git", 1));
 git_repository_config(&config, _repo);





 cl_git_pass(git_config_set_int32(config, "core.repositoryformatversion", 42));

 git_config_free(config);
 git_repository_free(_repo);


 cl_git_fail(git_repository_init(&_repo, "reinit.git", 1));

 cl_fixture_cleanup("reinit.git");
}
