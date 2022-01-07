
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FETCH_HEAD_QUOTE_DATA ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_repo ;
 int git_repository_fetchhead_foreach (int ,int ,int *) ;
 int git_repository_init (int *,char*,int ) ;
 int read_noop ;

void test_fetchhead_nonetwork__quote_in_branch_name(void)
{
 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));

 cl_git_rewritefile("./test1/.git/FETCH_HEAD", FETCH_HEAD_QUOTE_DATA);
 cl_git_pass(git_repository_fetchhead_foreach(g_repo, read_noop, ((void*)0)));
}
