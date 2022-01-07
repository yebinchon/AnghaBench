
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
typedef int git_repository ;
typedef int git_config ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int cl_sandbox_set_search_path_defaults () ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_free (int *) ;
 int git_config_get_int32 (int *,int *,char*) ;
 int git_config_open_default (int **) ;
 int git_futils_mkdir_r (char*,int) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int symlink (char*,char*) ;

void test_repo_open__with_symlinked_config(void)
{

 git_buf path = GIT_BUF_INIT;
 git_repository *repo;
 git_config *cfg;
 int32_t value;

 cl_git_sandbox_init("empty_standard_repo");


 cl_git_pass(git_futils_mkdir_r("home", 0777));
 cl_git_mkfile("home/.gitconfig.linked", "[global]\ntest = 4567\n");
 cl_must_pass(symlink(".gitconfig.linked", "home/.gitconfig"));
 cl_git_pass(git_path_prettify(&path, "home", ((void*)0)));
 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));

 cl_git_pass(git_repository_open(&repo, "empty_standard_repo"));
 cl_git_pass(git_config_open_default(&cfg));
 cl_git_pass(git_config_get_int32(&value, cfg, "global.test"));
 cl_assert_equal_i(4567, value);

 git_config_free(cfg);
 git_repository_free(repo);
 cl_git_pass(git_futils_rmdir_r(git_buf_cstr(&path), ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_sandbox_set_search_path_defaults();
 git_buf_dispose(&path);

}
