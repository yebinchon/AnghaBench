
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ATTR_IS_FALSE (char const*) ;
 int GIT_ATTR_IS_TRUE (char const*) ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_add_macro (int ,char*,char*) ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;

void test_attr_macro__adding_boolean_macros_succeeds(void)
{
 const char *value;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_pass(git_attr_add_macro(g_repo, "macro-pos", "positive"));
 cl_git_pass(git_attr_add_macro(g_repo, "macro-neg", "-negative"));
 cl_git_rewritefile("empty_standard_repo/.gitattributes", "file.txt macro-pos macro-neg\n");

 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "positive"));
 cl_assert(GIT_ATTR_IS_TRUE(value));
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "negative"));
 cl_assert(GIT_ATTR_IS_FALSE(value));
}
