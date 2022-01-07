
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

void test_ignore_status__add_internal_as_first_thing(void)
{
 const char *add_me = "\n#################\n## Eclipse\n#################\n\n*.pydevproject\n.project\n.metadata\nbin/\ntmp/\n*.tmp\n\n";

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(git_ignore_add_rule(g_repo, add_me));

 assert_is_ignored("one.tmp");
 refute_is_ignored("two.bar");
}
