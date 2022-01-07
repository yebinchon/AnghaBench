
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* checkout_branch; } ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ g_options ;
 int g_ref ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_1__*) ;
 int git_path_exists (char*) ;
 int git_reference_name (int ) ;
 int git_repository_head (int *,int ) ;
 int git_repository_head_unborn (int ) ;

void test_clone_nonetwork__can_checkout_given_branch(void)
{
 g_options.checkout_branch = "test";
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));

 cl_assert_equal_i(0, git_repository_head_unborn(g_repo));

 cl_git_pass(git_repository_head(&g_ref, g_repo));
 cl_assert_equal_s(git_reference_name(g_ref), "refs/heads/test");

 cl_assert(git_path_exists("foo/readme.txt"));
}
