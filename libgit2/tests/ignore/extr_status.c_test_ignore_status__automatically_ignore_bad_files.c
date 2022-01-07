
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_ignore_add_rule (int ,char*) ;
 int git_ignore_clear_internal_rules (int ) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__automatically_ignore_bad_files(void)
{
 g_repo = cl_git_sandbox_init("empty_standard_repo");

 assert_is_ignored(".git");
 assert_is_ignored("this/file/.");
 assert_is_ignored("path/../funky");
 refute_is_ignored("path/whatever.c");

 cl_git_pass(git_ignore_add_rule(g_repo, "*.c\n"));

 assert_is_ignored(".git");
 assert_is_ignored("this/file/.");
 assert_is_ignored("path/../funky");
 assert_is_ignored("path/whatever.c");

 cl_git_pass(git_ignore_clear_internal_rules(g_repo));

 assert_is_ignored(".git");
 assert_is_ignored("this/file/.");
 assert_is_ignored("path/../funky");
 refute_is_ignored("path/whatever.c");
}
