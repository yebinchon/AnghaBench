
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
 int g_repo ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;

void test_attr_repo__manpage_example(void)
{
 const char *value;

 cl_git_pass(git_attr_get(&value, g_repo, 0, "sub/abc", "foo"));
 cl_assert(GIT_ATTR_IS_TRUE(value));

 cl_git_pass(git_attr_get(&value, g_repo, 0, "sub/abc", "bar"));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(value));

 cl_git_pass(git_attr_get(&value, g_repo, 0, "sub/abc", "baz"));
 cl_assert(GIT_ATTR_IS_FALSE(value));

 cl_git_pass(git_attr_get(&value, g_repo, 0, "sub/abc", "merge"));
 cl_assert_equal_s("filfre", value);

 cl_git_pass(git_attr_get(&value, g_repo, 0, "sub/abc", "frotz"));
 cl_assert(GIT_ATTR_IS_UNSPECIFIED(value));
}
