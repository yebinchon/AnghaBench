
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_sandbox_cleanup () ;
 TYPE_1__ g_global_path ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_libgit2_opts (int ,int ,int ) ;

void test_checkout_index__cleanup(void)
{
 git_libgit2_opts(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL,
  g_global_path.ptr);
 git_buf_dispose(&g_global_path);

 cl_git_sandbox_cleanup();


 cl_fixture_cleanup("alternative");
 cl_fixture_cleanup("symlink");
 cl_fixture_cleanup("symlink.git");
 cl_fixture_cleanup("tmp_global_path");
}
