
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail (int ) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;

void test_clone_nonetwork__fail_when_the_target_is_a_file(void)
{
 cl_git_mkfile("./foo", "Bar!");
 cl_git_fail(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));
}
