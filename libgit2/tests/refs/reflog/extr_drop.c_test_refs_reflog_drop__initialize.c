
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_sandbox_init (char*) ;
 int entrycount ;
 int g_reflog ;
 int g_repo ;
 int git_reflog_entrycount (int ) ;
 int git_reflog_read (int *,int ,char*) ;

void test_refs_reflog_drop__initialize(void)
{
 g_repo = cl_git_sandbox_init("testrepo.git");

 git_reflog_read(&g_reflog, g_repo, "HEAD");
 entrycount = git_reflog_entrycount(g_reflog);
}
