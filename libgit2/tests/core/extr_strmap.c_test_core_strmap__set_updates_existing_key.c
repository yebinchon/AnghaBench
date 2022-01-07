
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_table ;
 int git_strmap_get (int ,char*) ;
 int git_strmap_set (int ,char*,char*) ;
 int git_strmap_size (int ) ;

void test_core_strmap__set_updates_existing_key(void)
{
 cl_git_pass(git_strmap_set(g_table, "foo", "oof"));
 cl_git_pass(git_strmap_set(g_table, "bar", "rab"));
 cl_git_pass(git_strmap_set(g_table, "gobble", "elbbog"));
 cl_assert_equal_i(git_strmap_size(g_table), 3);

 cl_git_pass(git_strmap_set(g_table, "foo", "other"));
 cl_assert_equal_i(git_strmap_size(g_table), 3);

 cl_assert_equal_s(git_strmap_get(g_table, "foo"), "other");
}
