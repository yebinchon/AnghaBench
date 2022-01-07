
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_sm_valid (int ,int ,char*) ;
 int cl_git_pass (int ) ;
 int g_child ;
 int g_module ;
 int g_parent ;
 int git_submodule_lookup (int *,int ,char*) ;
 int git_submodule_open (int *,int ) ;

void test_submodule_open__opening_via_lookup_succeeds(void)
{
 cl_git_pass(git_submodule_lookup(&g_module, g_parent, "sm_unchanged"));
 cl_git_pass(git_submodule_open(&g_child, g_module));
 assert_sm_valid(g_parent, g_child, "sm_unchanged");
}
