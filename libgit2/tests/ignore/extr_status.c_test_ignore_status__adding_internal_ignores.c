
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

void test_ignore_status__adding_internal_ignores(void)
{
 g_repo = cl_git_sandbox_init("empty_standard_repo");

 refute_is_ignored("one.txt");
 refute_is_ignored("two.bar");

 cl_git_pass(git_ignore_add_rule(g_repo, "*.nomatch\n"));

 refute_is_ignored("one.txt");
 refute_is_ignored("two.bar");

 cl_git_pass(git_ignore_add_rule(g_repo, "*.txt\n"));

 assert_is_ignored("one.txt");
 refute_is_ignored("two.bar");

 cl_git_pass(git_ignore_add_rule(g_repo, "*.bar\n"));

 assert_is_ignored("one.txt");
 assert_is_ignored("two.bar");

 cl_git_pass(git_ignore_clear_internal_rules(g_repo));

 refute_is_ignored("one.txt");
 refute_is_ignored("two.bar");

 cl_git_pass(git_ignore_add_rule(
  g_repo, "multiple\n*.rules\n# comment line\n*.bar\n"));

 refute_is_ignored("one.txt");
 assert_is_ignored("two.bar");
}
