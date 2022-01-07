
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ATTR_IS_FALSE (char const*) ;
 int GIT_ATTR_IS_TRUE (char const*) ;
 int GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (char*,char const*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_get_many (char const**,int ,int ,char*,int,char const**) ;

void test_attr_macro__bad_macros(void)
{
 const char *names[6] = { "rootattr", "positive", "negative",
  "firstmacro", "secondmacro", "thirdmacro" };
 const char *values[6];

 g_repo = cl_git_sandbox_init("attr");

 cl_git_pass(git_attr_get_many(values, g_repo, 0, "macro_bad", 6, names));


 cl_assert(GIT_ATTR_IS_UNSPECIFIED(values[0]));
 cl_assert(GIT_ATTR_IS_TRUE(values[1]));
 cl_assert(GIT_ATTR_IS_FALSE(values[2]));
 cl_assert(GIT_ATTR_IS_FALSE(values[3]));
 cl_assert_equal_s("hahaha", values[4]);
 cl_assert(GIT_ATTR_IS_TRUE(values[5]));
}
