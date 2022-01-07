
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int g_remote ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;
 int git_remote_lookup (int *,int ,char*) ;

void test_clone_nonetwork__defaults(void)
{
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", ((void*)0)));
 cl_assert(g_repo);
 cl_git_pass(git_remote_lookup(&g_remote, g_repo, "origin"));
}
