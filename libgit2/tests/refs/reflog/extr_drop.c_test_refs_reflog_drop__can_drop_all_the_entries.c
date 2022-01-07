
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 scalar_t__ entrycount ;
 int g_reflog ;
 int git_reflog_drop (int ,int ,int) ;
 scalar_t__ git_reflog_entrycount (int ) ;

void test_refs_reflog_drop__can_drop_all_the_entries(void)
{
 cl_assert(--entrycount > 0);

 do {
  cl_git_pass(git_reflog_drop(g_reflog, 0, 1));
 } while (--entrycount > 0);

 cl_git_pass(git_reflog_drop(g_reflog, 0, 1));

 cl_assert_equal_i(0, (int)git_reflog_entrycount(g_reflog));
}
