
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_add_macro (int ,char*,char*) ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;

void test_attr_macro__redefining_macro_succeeds(void)
{
 const char *value;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_pass(git_attr_add_macro(g_repo, "macro", "key=value1"));
 cl_git_pass(git_attr_add_macro(g_repo, "macro", "key=value2"));
 cl_git_rewritefile("empty_standard_repo/.gitattributes", "file.txt macro");

 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "key"));
 cl_assert_equal_s(value, "value2");
}
