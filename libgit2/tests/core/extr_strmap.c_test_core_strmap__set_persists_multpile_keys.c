
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_table ;
 int git_strmap_get (int ,char*) ;
 int git_strmap_set (int ,char*,char*) ;

void test_core_strmap__set_persists_multpile_keys(void)
{
 cl_git_pass(git_strmap_set(g_table, "foo", "oof"));
 cl_git_pass(git_strmap_set(g_table, "bar", "rab"));
 cl_assert_equal_s(git_strmap_get(g_table, "foo"), "oof");
 cl_assert_equal_s(git_strmap_get(g_table, "bar"), "rab");
}
