
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init_new (char*) ;
 int g_index ;
 int g_repo ;
 int git_repository_index (int *,int ) ;

void test_index_crlf__initialize(void)
{
 g_repo = cl_git_sandbox_init_new("crlf");
 cl_git_pass(git_repository_index(&g_index, g_repo));
}
