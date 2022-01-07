
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_GET_SEARCH_PATH ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int _cl_restore_home ;
 int cl_fake_home_cleanup ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int git_buf_detach (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_libgit2_opts (int ,int ,TYPE_1__*) ;
 int git_path_exists (char*) ;
 int git_path_prettify (TYPE_1__*,char*,int *) ;
 int p_mkdir (char*,int) ;

void cl_fake_home(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_libgit2_opts(
  GIT_OPT_GET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, &path));

 _cl_restore_home = git_buf_detach(&path);
 cl_set_cleanup(cl_fake_home_cleanup, ((void*)0));

 if (!git_path_exists("home"))
  cl_must_pass(p_mkdir("home", 0777));
 cl_git_pass(git_path_prettify(&path, "home", ((void*)0)));
 cl_git_pass(git_libgit2_opts(
  GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, path.ptr));
 git_buf_dispose(&path);
}
