
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_ignore_add_rule (int ,char const*) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__internal_ignores_inside_deep_paths(void)
{
 const char *add_me = "Debug\nthis/is/deep\npatterned*/dir\n";

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(git_ignore_add_rule(g_repo, add_me));

 assert_is_ignored("Debug");
 assert_is_ignored("and/Debug");
 assert_is_ignored("really/Debug/this/file");
 assert_is_ignored("Debug/what/I/say");

 refute_is_ignored("and/NoDebug");
 refute_is_ignored("NoDebug/this");
 refute_is_ignored("please/NoDebug/this");

 assert_is_ignored("this/is/deep");

 refute_is_ignored("and/this/is/deep");
 assert_is_ignored("this/is/deep/too");

 refute_is_ignored("but/this/is/deep/and/ignored");

 refute_is_ignored("this/is/not/deep");
 refute_is_ignored("is/this/not/as/deep");
 refute_is_ignored("this/is/deepish");
 refute_is_ignored("xthis/is/deep");
}
