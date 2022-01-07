
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_correct_reflog (char*) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;

void test_clone_nonetwork__clone_updates_reflog_properly(void)
{
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));
 assert_correct_reflog("HEAD");
 assert_correct_reflog("refs/heads/master");
}
