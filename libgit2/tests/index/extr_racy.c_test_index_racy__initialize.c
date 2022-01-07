
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_repository_init (int *,char*,int) ;

void test_index_racy__initialize(void)
{
 cl_git_pass(git_repository_init(&g_repo, "diff_racy", 0));
}
