
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,char const*,char*,int *) ;

void test_clone_nonetwork__local_absolute_path(void)
{
 const char *local_src;
 local_src = cl_fixture("testrepo.git");
 cl_git_pass(git_clone(&g_repo, local_src, "./foo", &g_options));
}
