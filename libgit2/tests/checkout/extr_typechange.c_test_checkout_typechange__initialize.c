
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_sandbox (char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int p_rename (char*,char*) ;

void test_checkout_typechange__initialize(void)
{
 g_repo = cl_git_sandbox_init("typechanges");

 cl_fixture_sandbox("submod2_target");
 p_rename("submod2_target/.gitted", "submod2_target/.git");
}
