
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int entrycount ;
 int g_reflog ;
 int git_reflog_drop (int ,int,int ) ;
 int git_reflog_entrycount (int ) ;

void test_refs_reflog_drop__can_drop_an_entry(void)
{
 cl_assert(entrycount > 4);

 cl_git_pass(git_reflog_drop(g_reflog, 2, 0));
 cl_assert_equal_sz(entrycount - 1, git_reflog_entrycount(g_reflog));
}
