
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_config ;


 int GIT_REMOTE_ORIGIN ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 char* cl_git_path_url (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_local_repo ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_free (int *) ;
 int git_remote_prune_refs (int *) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_path (int *) ;

void test_network_fetchlocal__prune_load_remote_prune_config(void)
{
 git_repository *repo;
 git_remote *origin;
 git_config *config;
 git_repository *remote_repo = cl_git_sandbox_init("testrepo.git");
 const char *url = cl_git_path_url(git_repository_path(remote_repo));

 cl_set_cleanup(&cleanup_local_repo, "foo");
 cl_git_pass(git_repository_init(&repo, "foo", 1));

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_bool(config, "remote.origin.prune", 1));

 cl_git_pass(git_remote_create(&origin, repo, GIT_REMOTE_ORIGIN, url));
 cl_assert_equal_i(1, git_remote_prune_refs(origin));

 git_config_free(config);
 git_remote_free(origin);
 git_repository_free(repo);
}
