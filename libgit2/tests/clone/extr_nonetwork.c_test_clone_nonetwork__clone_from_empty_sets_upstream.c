
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_config ;


 int cl_assert_equal_s (char*,char const*) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_repo ;
 int git_clone (int **,char*,char*,int *) ;
 int git_config_free (int *) ;
 int git_config_get_string (char const**,int *,char*) ;
 int git_repository_config_snapshot (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int *,char*,int ) ;

void test_clone_nonetwork__clone_from_empty_sets_upstream(void)
{
 git_config *config;
 git_repository *repo;
 const char *str;


 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));
 cl_set_cleanup(&cleanup_repository, "./repowithunborn");
 cl_git_pass(git_clone(&repo, "./test1", "./repowithunborn", ((void*)0)));

 cl_git_pass(git_repository_config_snapshot(&config, repo));

 cl_git_pass(git_config_get_string(&str, config, "branch.master.remote"));
 cl_assert_equal_s("origin", str);
 cl_git_pass(git_config_get_string(&str, config, "branch.master.merge"));
 cl_assert_equal_s("refs/heads/master", str);

 git_config_free(config);
 git_repository_free(repo);
 cl_fixture_cleanup("./repowithunborn");
}
