
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;

void test_attr_macro__changing_macro_in_root_wd_updates_attributes(void)
{
 const char *value;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_rewritefile("empty_standard_repo/.gitattributes",
      "[attr]customattr key=first\n"
      "file customattr\n");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file", "key"));
 cl_assert_equal_s(value, "first");

 cl_git_rewritefile("empty_standard_repo/.gitattributes",
      "[attr]customattr key=second\n"
      "file customattr\n");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file", "key"));
 cl_assert_equal_s(value, "second");
}
