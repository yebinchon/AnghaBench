
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int git_config_free (int *) ;
 int git_config_set_int32 (int *,char*,int) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;

void test_repo_open__format_version_1(void)
{
 git_repository *repo;
 git_config *config;

 repo = cl_git_sandbox_init("empty_bare.git");

 cl_git_pass(git_repository_open(&repo, "empty_bare.git"));
 cl_git_pass(git_repository_config(&config, repo));

 cl_git_pass(git_config_set_int32(config, "core.repositoryformatversion", 1));

 git_config_free(config);
 git_repository_free(repo);
 cl_git_fail(git_repository_open(&repo, "empty_bare.git"));
}
