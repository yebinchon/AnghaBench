
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_p (char const*,int *) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_attr_get (char const**,int ,int ,char*,char*) ;
 int p_mkdir (char*,int) ;

void test_attr_macro__macros_in_subdir_do_not_apply(void)
{
 const char *value;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(p_mkdir("empty_standard_repo/dir", 0777));
 cl_git_rewritefile("empty_standard_repo/dir/.gitattributes",
      "[attr]customattr key=value\n"
      "file customattr\n");


 cl_git_pass(git_attr_get(&value, g_repo, 0, "dir/file", "key"));
 cl_assert_equal_p(value, ((void*)0));
}
