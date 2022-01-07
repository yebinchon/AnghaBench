
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,int *) ;
 int git_path_exists (char*) ;

void test_online_clone__path_whitespace(void)
{
 cl_git_pass(git_clone(&g_repo, "https://libgit2@dev.azure.com/libgit2/test/_git/spaces%20in%20the%20name", "./foo", &g_options));
 cl_assert(git_path_exists("./foo/master.txt"));
}
