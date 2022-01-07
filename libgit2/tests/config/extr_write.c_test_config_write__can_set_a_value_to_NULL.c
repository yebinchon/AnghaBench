
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,int *) ;
 int git_repository_config (int **,int *) ;

void test_config_write__can_set_a_value_to_NULL(void)
{
    git_repository *repository;
    git_config *config;

    repository = cl_git_sandbox_init("testrepo.git");

    cl_git_pass(git_repository_config(&config, repository));
    cl_git_fail(git_config_set_string(config, "a.b.c", ((void*)0)));
    git_config_free(config);

    cl_git_sandbox_cleanup();
}
