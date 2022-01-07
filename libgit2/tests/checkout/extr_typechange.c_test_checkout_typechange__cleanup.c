
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int cl_git_sandbox_cleanup () ;

void test_checkout_typechange__cleanup(void)
{
 cl_git_sandbox_cleanup();
 cl_fixture_cleanup("submod2_target");
}
