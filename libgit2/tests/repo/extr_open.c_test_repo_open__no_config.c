
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int cl_rename (char*,char*) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int p_mkdir (char*,int) ;

void test_repo_open__no_config(void)
{
 git_buf path = GIT_BUF_INIT;
 git_repository *repo;
 git_config *config;

 cl_fixture_sandbox("empty_standard_repo");
 cl_git_pass(cl_rename(
  "empty_standard_repo/.gitted", "empty_standard_repo/.git"));


 cl_git_pass(git_futils_rmdir_r(
  "empty_standard_repo/.git/config", ((void*)0), GIT_RMDIR_REMOVE_FILES));


 cl_must_pass(p_mkdir("alternate", 0777));
 cl_git_pass(git_path_prettify(&path, "alternate", ((void*)0)));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

 git_buf_dispose(&path);

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 cl_git_pass(git_repository_config(&config, repo));

 cl_git_pass(git_config_set_string(config, "test.set", "42"));

 git_config_free(config);
 git_repository_free(repo);
 cl_fixture_cleanup("empty_standard_repo");

 cl_sandbox_set_search_path_defaults();
}
