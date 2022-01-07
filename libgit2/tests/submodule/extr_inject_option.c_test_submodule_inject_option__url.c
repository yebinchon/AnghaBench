
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (int ,char*) ;
 int find_naughty ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_repository_workdir (int ) ;
 int git_submodule_foreach (int ,int ,int*) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int ,char*) ;
 int git_submodule_path (int *) ;
 int git_submodule_url (int *) ;

void test_submodule_inject_option__url(void)
{
 int foundit;
 git_submodule *sm;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&buf, git_repository_workdir(g_repo), ".gitmodules"));
 cl_git_rewritefile(buf.ptr,
      "[submodule \"naughty\"]\n"
      "    path = testrepo\n"
      "    url = -u./payload\n");
 git_buf_dispose(&buf);


 foundit = 0;
 cl_git_pass(git_submodule_foreach(g_repo, find_naughty, &foundit));
 cl_assert_equal_i(1, foundit);

 cl_git_pass(git_submodule_lookup(&sm, g_repo, "naughty"));
 cl_assert_equal_s("testrepo", git_submodule_path(sm));
 cl_assert_equal_p(((void*)0), git_submodule_url(sm));

 git_submodule_free(sm);
}
