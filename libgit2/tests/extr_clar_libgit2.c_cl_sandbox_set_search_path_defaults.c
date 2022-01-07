
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_CONFIG_LEVEL_PROGRAMDATA ;
 int GIT_CONFIG_LEVEL_SYSTEM ;
 int GIT_CONFIG_LEVEL_XDG ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_must_pass (int ) ;
 int clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_libgit2_opts (int ,int ,int ) ;
 int git_path_exists (int ) ;
 int p_mkdir (int ,int) ;

void cl_sandbox_set_search_path_defaults(void)
{
 git_buf path = GIT_BUF_INIT;

 git_buf_joinpath(&path, clar_sandbox_path(), "__config");

 if (!git_path_exists(path.ptr))
  cl_must_pass(p_mkdir(path.ptr, 0777));

 git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr);
 git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_XDG, path.ptr);
 git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_SYSTEM, path.ptr);
 git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_PROGRAMDATA, path.ptr);

 git_buf_dispose(&path);
}
