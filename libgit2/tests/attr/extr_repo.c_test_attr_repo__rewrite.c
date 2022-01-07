
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_p (char const*,int *) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int g_repo ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;

void test_attr_repo__rewrite(void)
{
 const char *value;

 cl_git_rewritefile("attr/.gitattributes", "file.txt foo=first\n");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "foo"));
 cl_assert_equal_s(value, "first");

 cl_git_rewritefile("attr/.gitattributes", "file.txt foo=second\n");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "foo"));
 cl_assert_equal_s(value, "second");

 cl_git_rewritefile("attr/.gitattributes", "file.txt other=value\n");
 cl_git_pass(git_attr_get(&value, g_repo, 0, "file.txt", "foo"));
 cl_assert_equal_p(value, ((void*)0));
}
