
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int entrycount ;
 int g_reflog ;
 int g_repo ;
 int git_reflog_drop (int ,int ,int) ;
 int git_reflog_entrycount (int ) ;
 int git_reflog_free (int ) ;
 int git_reflog_read (int *,int ,char*) ;
 int git_reflog_write (int ) ;

void test_refs_reflog_drop__can_persist_deletion_on_disk(void)
{
 cl_assert(entrycount > 2);

 cl_git_pass(git_reflog_drop(g_reflog, 0, 1));
 cl_assert_equal_sz(entrycount - 1, git_reflog_entrycount(g_reflog));
 cl_git_pass(git_reflog_write(g_reflog));

 git_reflog_free(g_reflog);

 git_reflog_read(&g_reflog, g_repo, "HEAD");

 cl_assert_equal_sz(entrycount - 1, git_reflog_entrycount(g_reflog));
}
