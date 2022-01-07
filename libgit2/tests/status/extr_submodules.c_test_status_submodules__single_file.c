
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_status_file (unsigned int*,int ,char*) ;
 int setup_fixture_submodules () ;

void test_status_submodules__single_file(void)
{
 unsigned int status = 0;
 g_repo = setup_fixture_submodules();
 cl_git_pass( git_status_file(&status, g_repo, "testrepo") );
 cl_assert(!status);
}
