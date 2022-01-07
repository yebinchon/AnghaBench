
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIR_MODE ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;
 int p_mkdir (char*,int ) ;

void test_clone_nonetwork__cope_with_already_existing_directory(void)
{
 p_mkdir("./foo", GIT_DIR_MODE);
 cl_git_pass(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));
}
