
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_mkdir_r (char*,int) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;

void test_config_global__initialize(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_futils_mkdir_r("home", 0777));
 cl_git_pass(git_path_prettify(&path, "home", ((void*)0)));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));

 cl_git_pass(git_futils_mkdir_r("xdg/git", 0777));
 cl_git_pass(git_path_prettify(&path, "xdg/git", ((void*)0)));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr));

 cl_git_pass(git_futils_mkdir_r("etc", 0777));
 cl_git_pass(git_path_prettify(&path, "etc", ((void*)0)));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr));

 git_buf_dispose(&path);
}
