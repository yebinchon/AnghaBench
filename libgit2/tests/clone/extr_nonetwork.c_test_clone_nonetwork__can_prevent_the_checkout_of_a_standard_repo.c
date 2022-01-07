
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_4__ {scalar_t__ checkout_strategy; } ;
struct TYPE_5__ {TYPE_1__ checkout_opts; } ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 TYPE_2__ g_options ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_clone (int *,int ,char*,TYPE_2__*) ;
 int git_path_isfile (int ) ;
 int git_repository_workdir (int ) ;

void test_clone_nonetwork__can_prevent_the_checkout_of_a_standard_repo(void)
{
 git_buf path = GIT_BUF_INIT;

 g_options.checkout_opts.checkout_strategy = 0;
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), "master.txt"));
 cl_assert_equal_i(0, git_path_isfile(git_buf_cstr(&path)));

 git_buf_dispose(&path);
}
