
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (char const**) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_table ;
 int git_strmap_get (int ,char*) ;
 int git_strmap_set (int ,char const*,char*) ;

void test_core_strmap__get_succeeds_with_existing_entries(void)
{
 const char *keys[] = { "foo", "bar", "gobble" };
 char *values[] = { "oof", "rab", "elbbog" };
 size_t i;

 for (i = 0; i < ARRAY_SIZE(keys); i++)
  cl_git_pass(git_strmap_set(g_table, keys[i], values[i]));

 cl_assert_equal_s(git_strmap_get(g_table, "foo"), "oof");
 cl_assert_equal_s(git_strmap_get(g_table, "bar"), "rab");
 cl_assert_equal_s(git_strmap_get(g_table, "gobble"), "elbbog");
}
