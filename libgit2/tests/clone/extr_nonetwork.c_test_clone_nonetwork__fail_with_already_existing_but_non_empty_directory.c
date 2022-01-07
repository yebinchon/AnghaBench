
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIR_MODE ;
 int cl_git_fail (int ) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;
 int p_mkdir (char*,int ) ;

void test_clone_nonetwork__fail_with_already_existing_but_non_empty_directory(void)
{
 p_mkdir("./foo", GIT_DIR_MODE);
 cl_git_mkfile("./foo/bar", "Baz!");
 cl_git_fail(git_clone(&g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options));
}
