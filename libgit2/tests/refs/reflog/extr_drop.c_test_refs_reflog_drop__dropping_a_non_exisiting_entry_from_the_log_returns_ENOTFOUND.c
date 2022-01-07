
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int entrycount ;
 int g_reflog ;
 int git_reflog_drop (int ,int ,int ) ;
 int git_reflog_entrycount (int ) ;

void test_refs_reflog_drop__dropping_a_non_exisiting_entry_from_the_log_returns_ENOTFOUND(void)
{
 cl_assert_equal_i(GIT_ENOTFOUND, git_reflog_drop(g_reflog, entrycount, 0));

 cl_assert_equal_sz(entrycount, git_reflog_entrycount(g_reflog));
}
